ESPUCR ;DALISC/CKA - UNIFORM CRIME REPORT- 12/92
 ;;1.0;POLICE & SECURITY;**17,22,33**;Mar 31, 1994
START ;
 I '$D(DUZ(2)) W !,"Site # is not defined!" G EX
DATE ;ASK BEGINNING & ENDING DATE
 D DT^DICRW K BEGDATE,ENDDATE W !!,"****  Date Range Selection  ****",!
 S %DT="AE",%DT(0)="-NOW",%DT("A")="  Beginning DATE : " D ^%DT K %DT
 G:Y<0 EX
 S (BEGDATE,ESPBD)=Y
 W ! S %DT="AE",%DT("A")="   Ending DATE: " D ^%DT
 G:$D(DTOUT) EX
 G:Y<ESPBD HELP W ! S ENDDATE=Y,ESPED=Y+.9
CREATE ;CREATE A NEW ENTRY IN CRIME DATA FILE
 K DD,DO S DIC="^ESP(912.4,",DIC(0)="L",DLAYGO=912.4,X=ESPBD D FILE^DICN G:Y<0 EX S ESPIEN=+Y
 L +^ESP(912.4,ESPIEN):1 I '$T W !,"This record is being edited by someone else."
 S $P(^ESP(912.4,ESPIEN,0),U,2)=ENDDATE
INST S:'$D(^ESP(912.4,ESPIEN,1,0)) ^(0)="^912.41^"
 K DD,DO S DIC="^ESP(912.4,"_ESPIEN_",1,",DIC(0)="L",DLAYGO=912.4,X=$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNIDENTIFIED"),DA(1)=ESPIEN D FILE^DICN G:Y<0 EX S ESPINS=+Y
 S $P(^ESP(912.4,ESPIEN,1,ESPINS,0),U,2)=$S($D(^DIC(4,DUZ(2),99)):$P(^DIC(4,DUZ(2),99),U),1:"")
ZERO F ESPX=1:1:188 S ^ESP(912.4,ESPIEN,1,ESPINS,ESPX)=0
 F ESPX=133.1,134.1,138.1,139.1 S ^ESP(912.4,ESPIEN,1,ESPINS,ESPX)=0
COUNT ;GO THROUGH "C" X-REF TO COUNT AND GET TOTALS
 S ESPDT=ESPBD-.0005
 F ESPI=1:1 S ESPDT=$O(^ESP(912,"C",ESPDT)) Q:ESPDT>ESPED!(ESPDT'>0)  D
 .  S ESPOFN=0
 .  F ESPJ=1:1 S ESPOFN=$O(^ESP(912,"C",ESPDT,ESPOFN)) Q:ESPOFN'>0  D
 ..  I $D(^ESP(912,ESPOFN,5)) Q:'$P(^ESP(912,ESPOFN,5),U,5)
 ..  S ESPCN=0
 ..  F ESPZ=1:1 S ESPCN=$O(^ESP(912,ESPOFN,10,ESPCN)) Q:ESPCN'>0  D SET^ESPUCR1
VIO ;GO THROUGH "C" X-REF VIOLATION FILE TO COUNT AND GET TOTALS
 S ESPDT=ESPBD-.0005
 F ESPI=1:1 S ESPDT=$O(^ESP(914,"C",ESPDT)) Q:ESPDT>ESPED!(ESPDT'>0)  D
 .  S ESPOFN=0
 .  F ESPJ=1:1 S ESPOFN=$O(^ESP(914,"C",ESPDT,ESPOFN)) Q:ESPOFN'>0  D
 ..  S ESPTYPE=$P(^ESP(914,ESPOFN,0),U,3),ESPOFF=$P(^(0),U,4),ESPCL=$P($G(^ESP(915,+ESPOFF,0)),U,4),ESPFN=$P(^ESP(914,ESPOFN,0),U,9),ESPCAT=$P($G(^ESP(910,+ESPFN,0)),U,4)
 ..  S ^(171)=^ESP(912.4,ESPIEN,1,ESPINS,171)+1
 ..  I ESPTYPE="C" S ^(172)=^ESP(912.4,ESPIEN,1,ESPINS,172)+1 D
 ...  I ESPCL'="M",ESPCL'="P" S ^(173)=^ESP(912.4,ESPIEN,1,ESPINS,173)+1
 ...  I ESPCL="M" S ^(174)=^ESP(912.4,ESPIEN,1,ESPINS,174)+1
 ...  I ESPCL="P" S ^(175)=^ESP(912.4,ESPIEN,1,ESPINS,175)+1
 ...  I ESPCAT="E"!(ESPCAT="PO") S ^(176)=^ESP(912.4,ESPIEN,1,ESPINS,176)+1
 ...  I ESPCAT="O"!(ESPCAT="") S ^(177)=^ESP(912.4,ESPIEN,1,ESPINS,177)+1
 ...  I ESPCAT="P" S ^(178)=^ESP(912.4,ESPIEN,1,ESPINS,178)+1
 ...  I ESPCAT="V" S ^(179)=^ESP(912.4,ESPIEN,1,ESPINS,179)+1
 ..  I ESPTYPE="V" S ^(180)=^ESP(912.4,ESPIEN,1,ESPINS,180)+1 D
 ...  I ESPCL'="M",ESPCL'="P" S ^(181)=^ESP(912.4,ESPIEN,1,ESPINS,181)+1
 ...  I ESPCL="M" S ^(182)=^ESP(912.4,ESPIEN,1,ESPINS,182)+1
 ...  I ESPCL="P" S ^(183)=^ESP(912.4,ESPIEN,1,ESPINS,183)+1
 ...  I ESPCAT="E"!(ESPCAT="PO") S ^(184)=^ESP(912.4,ESPIEN,1,ESPINS,184)+1
 ...  I ESPCAT="O"!(ESPCAT="") S ^(185)=^ESP(912.4,ESPIEN,1,ESPINS,185)+1
 ...  I ESPCAT="P" S ^(186)=^ESP(912.4,ESPIEN,1,ESPINS,186)+1
 ...  I ESPCAT="V" S ^(187)=^ESP(912.4,ESPIEN,1,ESPINS,187)+1
 L -^ESP(912.4,ESPIEN)
 W !!,"Done."
EX W:$D(DTOUT) $C(7)
 K %DT,BEGDATE,DA,DD,DIC,DO,DTOUT,ENDDATE,ESPBD,ESPCAT,ESPCC,ESPCL,ESPCN,ESPDOL,ESPDT,ESPED,ESPFN,ESPI,ESPIEN,ESPINS,ESPJ,ESPOF,ESPOFF,ESPOFN,ESPSUB,ESPTYPE,ESPVIC,ESPVICT,ESPX,ESPZ,X,Y
 QUIT
 ;
HELP W "??",!?5,"Ending date must not be before beginning date" G DATE
