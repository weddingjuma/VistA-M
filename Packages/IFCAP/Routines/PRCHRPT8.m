PRCHRPT8 ;SF/KSS-CONTINUATION OF GENERATE LOG OF RR/REQUEST/PO'S PRINTED. ;4/27/89  10:04 AM
V ;;5.1;IFCAP;;Oct 20, 2000
 ;Per VHA Directive 10-93-142, this routine should not be modified.
 ;
SDEV ; QUE PROGRAM TO GENERATE AND PRINT LOG OF RR/REQUESTS/P.O.'S PRINTED
 S ZTRTN=$S(M5="P3":"RD3^PRCHRPT5",M5["P":"RD2^PRCHRPT5",1:"RD1^PRCHRPT5")
 D SDEV^PRCHRPT1 G:POP EXIT G:'$D(IO(0)) EXIT G:IO(0)=IO EXIT
 S M="generate and print this list" D PDT^PRCHRPT1 G:X["^" EXIT
 S ZTDTH=PRCHPDAT,ZTDESC="Print "_M1
 K ZTSAVE S ZTSAVE("U")="",ZTSAVE("M1")="",ZTSAVE("M2")="",ZTSAVE("M3")="",ZTSAVE("M4")="",ZTSAVE("M5")="",ZTSAVE("M5")="",ZTSAVE("PRC(""SITE"")")="",ZTSAVE("PRCHBEG")="",ZTSAVE("PRCHEND")=""
 D ^%ZTLOAD K ZTRTN,ZTUCI,ZTDTH,ZTSAVE,ZTDESC,ZTSK,ZTSKT,ZTSAVE
 ;
EXIT K M,M1,M2,M3,M4,M5,PRCHBEG,PRCHEND,PRCHERR,PRCHREC,PRCHTRX,PRCHTYP,PRCHI,PRCHI5,PRCHJ,PRCHPDAT,PRCHDT,PRCHX,PRCHALL,PRCHQ,PRCHX5,PRCHEX,PRCHPGM,I,X,Y,D0,DA,ZTRTN
 Q
 ;
PR1 ; PRINT LISTING OF REQUESTS OR PO'S
 Q:$G(PRCHERR)=1
 I '$D(PRCHREC) W !!,"**** NO "_M1_" WERE PRINTED IN "_M2,!,"   BETWEEN "_M3_" AND "_M4 Q:PRCHPGM="PRCHRPT6"  G EX
 D NOW^%DTC S Y=% D DD^%DT W @IOF,"LISTING OF "_M1_" PREVIOUSLY PRINTED IN "_M2,?65,Y,!,"    BETWEEN "_M3_" AND "_M4,!!,M1,?21,"Date Previously Printed" W:M5="R1" ?46,"Status",?69,"Priority" W !!
 W:M5="P3" "P.O. # - Partial #",!
 S PRCHTRX="" F I=0:0 S PRCHTRX=$O(^PRC(443.5,PRCHREC,1,"B",PRCHTRX)) Q:PRCHTRX=""  S PRCHI=$O(^(PRCHTRX,0)) I PRCHI,$D(^PRC(443.5,PRCHREC,1,PRCHI,0)) S Y=$P(^(0),U,3) D DD^%DT W PRCHTRX,?21,Y D:M5="R1" PR2 W !
 Q:PRCHPGM="PRCHRPT6"
 ;
EX W !,$C(13) D:$D(ZTSK) KILL^%ZTLOAD K ZTSK,ZTSKT
 G EXIT^PRCHRPT5
 ;
PR2 Q:'$D(PRCHTRX)  S (PRCHSTAT,PRCHPR)=""
 S PRCHTX=$O(^PRCS(410,"B",PRCHTRX,0)) I PRCHTX,$D(^PRCS(410,PRCHTX,10)),+$P(^(10),U,4) S:$D(^PRCD(442.3,$P(^(10),U,4),0)) PRCHSTAT=$E($P(^(0),U,1),1,20)
 I $D(PRCHTX),PRCHTX,$D(^PRCS(410,PRCHTX,1)) S PRCHPR=$P(^(1),U,3),PRCHPR=$S(PRCHPR="EM":"Emergency",PRCHPR="SP":"Special",PRCHPR="ST":"Standard",1:"")
 W ?46,PRCHSTAT,?69,PRCHPR
 Q
