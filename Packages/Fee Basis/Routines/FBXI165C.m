FBXI165C ;OI&T/LKG - FB*3.5*165 PAYMENT REMOVAL FROM BATCH REPORT ;11/30/15  11:28
 ;;3.5;FEE BASIS;**165**;JAN 30, 1995;Build 7
 ;;Per VA Directive 6402, this routine should not be modified.
 ;
 ; ICRs
 ;  2056    $$GET1^DIQ(), GETS^DIQ()
 ;  10103   $$FMTE^XLFDT()
 I '$D(^XTMP("FB*3.5*165")) D  Q
 . W !,?5,"There are no entries in the compile file for the FB*3.5*165 conversion.",!?10,"The file must have been purged."
 . R !,"Hit <RETURN> to continue. ",X:DTIME
 N POP S %ZIS="Q" D ^%ZIS Q:POP
 I $D(IO("Q")) D   Q 
 . S ZTRTN="ENTRY^FBXI165C",ZTDESC="RPT: FB*3.5*165 PAYMENT REMOVAL FROM BATCH"
 . D ^%ZTLOAD,HOME^%ZIS K ZTSK,IO("Q")
ENTRY ;
 U IO
 N FBABORT,FBFILE,FBBATCH,FBIENS,FBL,FBP,FBQUIT,FBSTRG,X S FBP=0,FBABORT=0
 D HDR
 I '$D(^XTMP("FB*3.5*165","RMVPAY")) W !!,"There are no payment entries removed from batches." G EXIT
 S FBFILE="",FBBATCH="",FBIENS=""
 F  S FBFILE=$O(^XTMP("FB*3.5*165","RMVPAY",FBFILE)) Q:FBFILE=""  D  Q:FBABORT
 . F  S FBBATCH=$O(^XTMP("FB*3.5*165","RMVPAY",FBFILE,FBBATCH)) Q:FBBATCH=""  D  Q:FBABORT
 . . F  S FBIENS=$O(^XTMP("FB*3.5*165","RMVPAY",FBFILE,FBBATCH,FBIENS)) Q:FBIENS=""  D  Q:FBABORT
 . . . N FBVALS
 . . . S FBSTRG=^XTMP("FB*3.5*165","RMVPAY",FBFILE,FBBATCH,FBIENS)
 . . . D GETDATA(FBFILE,FBBATCH,FBIENS,FBSTRG,.FBVALS)
 . . . D:FBL+8>IOSL HDR Q:FBABORT
 . . . W !,"BATCH TYPE: ",FBVALS("FBTYPE"),?25,"STATUS: ",$$GET1^DIQ(161.7,FBBATCH_",",11) S FBL=FBL+1
 . . . W !," DATE PAID: ",FBVALS("DATE PAID"),?40,"CHECK NUMBER: ",FBVALS("CHECK") S FBL=FBL+1
 . . . W !," CANCELLATION DATE: ",FBVALS("CANCEL DT") S FBL=FBL+1
 . . . W !," CURRENT BATCH: ",FBVALS("BATCH"),?40,"FORMER BATCH: ",FBVALS("OLD BATCH") S FBL=FBL+1
 . . . W !," DATE FINALIZED: ",FBVALS("DATE FINAL"),?40,"FORMER DATE FINAL: ",$G(FBVALS("OLD DT FINAL")) S FBL=FBL+1
EXIT I 'FBABORT W !!,"<End of Report>" R:$E(IOST,1,2)="C-" X:DTIME
 W:FBABORT !!,"<Report Aborted>"
 D ^%ZISC
 S:$D(ZTQUEUED) ZTREQ="@"
 Q
GETDATA(FBFNBR,FBBAT,FBIENS,FBSTR,FBARR) ;Returns values in FBARR
 N X,Y
 S FBARR("OLD BATCH")=$$GET1^DIQ(161.7,FBBAT_",",.01)
 I FBFNBR=162.04 D  Q
 . N FBERR,FBTMP
 . D GETS^DIQ(FBFNBR,FBIENS,"1;8;9;10;7","","FBTMP","FBERR")
 . S FBARR("BATCH")=FBTMP(FBFNBR,FBIENS,1),FBARR("DATE PAID")=FBTMP(FBFNBR,FBIENS,8)
 . S FBARR("CHECK")=FBTMP(FBFNBR,FBIENS,9),FBARR("CANCEL DT")=FBTMP(FBFNBR,FBIENS,10)
 . S FBARR("DATE FINAL")=FBTMP(FBFNBR,FBIENS,7),FBARR("FBTYPE")="B2"
 I FBFNBR=162.03 D  Q
 . N FBERR,FBTMP,FBX,X,Y
 . D GETS^DIQ(FBFNBR,FBIENS,"7;12;35;36;5","","FBTMP","FBERR")
 . S FBARR("BATCH")=FBTMP(FBFNBR,FBIENS,7),FBARR("DATE PAID")=FBTMP(FBFNBR,FBIENS,12)
 . S FBARR("CHECK")=FBTMP(FBFNBR,FBIENS,35),FBARR("CANCEL DT")=FBTMP(FBFNBR,FBIENS,36)
 . S FBARR("DATE FINAL")=FBTMP(FBFNBR,FBIENS,5),FBARR("FBTYPE")="B3"
 . S FBX=$P($P(FBSTR,"^",2),":",2),X=$$FMTE^XLFDT(FBX,1) X ^%ZOSF("UPPERCASE")
 . S FBARR("OLD DT FINAL")=Y
 I FBFNBR=162.11 D  Q
 . N FBERR,FBTMP
 . D GETS^DIQ(FBFNBR,FBIENS,"13;28;30;31","","FBTMP","FBERR")
 . S FBARR("BATCH")=FBTMP(FBFNBR,FBIENS,13),FBARR("DATE PAID")=FBTMP(FBFNBR,FBIENS,28)
 . S FBARR("CHECK")=FBTMP(FBFNBR,FBIENS,30),FBARR("CANCEL DT")=FBTMP(FBFNBR,FBIENS,31)
 . S FBARR("DATE FINAL")="",FBARR("FBTYPE")="B5"
 I FBFNBR=162.5 D  Q
 . N FBERR,FBTMP,FBX,X,Y
 . D GETS^DIQ(FBFNBR,FBIENS,"20;45;48;49;19","","FBTMP","FBERR")
 . S FBARR("BATCH")=FBTMP(FBFNBR,FBIENS,20),FBARR("DATE PAID")=FBTMP(FBFNBR,FBIENS,45)
 . S FBARR("CHECK")=FBTMP(FBFNBR,FBIENS,48),FBARR("CANCEL DT")=FBTMP(FBFNBR,FBIENS,49)
 . S FBARR("DATE FINAL")=FBTMP(FBFNBR,FBIENS,19),FBARR("FBTYPE")="B9"
 . S FBX=$P($P(FBSTR,"^",2),":",2),X=$$FMTE^XLFDT(FBX,1) X ^%ZOSF("UPPERCASE")
 . S FBARR("OLD DT FINAL")=Y
 Q
HDR ;
 I $E(IOST,1,2)="C-",FBP R !,"Hit <RETURN> to continue, '^' to Exit",FBQUIT:DTIME I FBQUIT["^" S FBABORT=1 Q
 S FBP=FBP+1 W @IOF,?20,"REPORT OF PAYMENTS REMOVED FROM BATCHES",?65,"Page: ",FBP,!
 S FBL=2
 Q
 ;
 ;FBXI165C
