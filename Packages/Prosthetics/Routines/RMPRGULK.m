RMPRGULK ;HOIFO/SPS - PROSTHETICS FILE CHECK/LOCK  ;OCT 2006
 ;;3.0;PROSTHETICS;**75,175**;Feb 09, 1996;Build 2
 ;
B1(RMIE1) G B2
OWLL(RESULTS,RMIE1) ;broker entry point
B2 ;
 L
 L +^RMPR(664.1,RMIE1):$G(DILOCKTM,2)
 I $T=0 S RESULTS(0)="1^Someone else is Editing this record, Please try later!" G EXIT
 E  S RESULTS(0)=0
 Q
OWLU(RESULTS,RMIE1) ;
 L -^RMPR(664.1,RMIE1)
 S RESULTS(0)=0
 Q
SUSL(RESULTS,RMPRIEN) ;broker entry point
 L +^RMPR(668,RMPRIEN):$G(DILOCKTM,3)
 I $T=0 S RESULTS(0)="1^Someone else is Editing this record, Please try later!" G EXIT
 E  S RESULTS(0)=0
 Q
SUSU(RESULTS,RMPRIEN) ;
 L -^RMPR(668,RMPRIEN)
 S RESULTS(0)=0
 Q
EXIT Q
 ;END
