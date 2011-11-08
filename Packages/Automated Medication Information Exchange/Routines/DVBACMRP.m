DVBACMRP ;ALB/GTS-557/THM-INCOMPETENT RPT ; 1/16/91  7:23 AM
 ;;2.7;AMIE;**17**;Apr 10, 1995
 K ^TMP($J) G TERM
SET Q:'$D(^DPT(DA,.29))  S ICDAT=^(.29) Q:$P(ICDAT,U,12)'=1&(ICDAT']"")  S INCMP="" S:$P(ICDAT,U)]""!($P(ICDAT,U,12)=1) INCMP=1 Q:INCMP'=1  S ICDAT2=$P(ICDAT,U,2),ICDAT=$P(ICDAT,U)
 S:ICDAT]"" ICDAT=$$FMTE^XLFDT(ICDAT,"5DZ")
 S:ICDAT2]"" ICDAT2=$$FMTE^XLFDT(ICDAT2,"5DZ")
 Q:'$D(^DPT(DA,0))  S DFN=DA D RCV^DVBAVDPT Q:CFLOC'=RONUM&(RO="Y")&(CFLOC'=0)&(CFLOC'=376)
 S ^TMP($J,XCN,CFLOC,MB,DA)=MA_U_RCVAA_U_RCVPEN_U_CNUM_U_ICDAT_U_ICDAT2_U_INCMP
 Q
 ;
PRINTB S MA=$P(DATA,U),RCVAA=$P(DATA,U,2),RCVPEN=$P(DATA,U,3),CNUM=$P(DATA,U,4),ICDAT=$P(DATA,U,5),ICDAT2=$P(DATA,U,6),INCMP=$P(DATA,U,7),DFN=DA,QUIT1=1 D ADM^DVBAVDPT
 S ADMDT=$$FMTE^XLFDT(ADMDT,"5DZ")
 S DCHGDT=$$FMTE^XLFDT(DCHGDT,"5DZ")
 S LADM=ADM,TDIS="UNKNOWN",TO="",DCHPTR=$P(^DGPM(LADM,0),U,17),TDIS=$S($D(^DGPM(+DCHPTR,0)):$P(^(0),U,18),1:"") I TDIS="" S TDIS="Unknown discharge type"
 S:'$D(^DG(405.2,+TDIS,0)) TDIS="Unknown discharge type" I $D(^(0)) S TDIS=$S($P(^DG(405.2,+TDIS,0),U,1)]"":$P(^(0),U,1),1:"Unknown discharge type")
 W:(IOST?1"C-".E)!($D(DVBAON2)) @IOF
 W !!!,?(80-$L(HEAD)\2),HEAD,!,?(80-$L(HEAD1)\2),HEAD1,!!
 W ?10,"Patient Name:",?26,PNAM,!!,?14,"Claim No:",?26,CNUM,!,?6,"Claim Folder Loc:",?26,CFLOC,!,?9,"Social Sec No:",?26,SSN,!,?8,"Admission Date:",?26,ADMDT,!,?3,"Admitting Diagnosis:",?26,DIAG,!
 W ?8,"Discharge Date:",?26,DCHGDT,! W:DCHGDT]"" ?5,"Type of Discharge:",?26,TDIS_$S(TO]"":" TO "_$S($D(^DIC(4,+TO,0)):$P(^(0),U,1),1:""),1:""),!
 W ?11,"Bed Service:",?26,BEDSEC,!,?13,"Recv A&A?:",?26,$S(RCVAA=0:"NO",RCVAA=1:"YES",1:"Not specified"),!
 W ?14,"Pension?:",?26,$S(RCVPEN=0:"NO",RCVPEN=1:"YES",1:"Not specified"),! D ELIG^DVBAVDPT
 W !,?5,"DATE RULED INCOMP:" W:ICDAT]"" ?26,ICDAT_" (VA)" W:ICDAT2]"" " - ",ICDAT2_" (CIVIL)" W !
 I IOST?1"C-".E W *7,!,"Press RETURN to continue or ""^"" to stop    " R ANS:DTIME S:ANS=U!('$T) QUIT=1 I '$T S DVBAQUIT=1
 S DVBAON2=""
 Q
 ;
PRINT U IO S QUIT=""
 S XCN="" F M=0:0 S XCN=$O(^TMP($J,XCN)) Q:XCN=""!(QUIT=1)  S CFLOC="" F J=0:0 S CFLOC=$O(^TMP($J,XCN,CFLOC)) Q:CFLOC=""!(QUIT=1)  D PRINT1
 Q
PRINT1 S ADM="" F K=0:0 S ADM=$O(^TMP($J,XCN,CFLOC,ADM)) Q:ADM=""!(QUIT=1)  S DA="" F L=0:0 S DA=$O(^TMP($J,XCN,CFLOC,ADM,DA)) Q:DA=""!(QUIT=1)  S DATA=^(DA) D PRINTB
 Q
 ;
TERM D HOME^%ZIS K NOASK
 ;
SETUP W @IOF,!,"VARO INCOMPETENCY REPORT" D NOPARM^DVBAUTL2 G:$D(DVBAQUIT) KILL^DVBAUTIL S DTAR=^DVB(396.1,1,0),FDT(0)=$$FMTE^XLFDT(DT,"5DZ")
 S HEAD="INCOMPETENCY REPORT",HEAD1="FOR "_$P(DTAR,U,1)_" ON "_FDT(0)
 W !,HEAD1
EN1 W !!,"Please enter dates for search, oldest date first, most recent date last.",!!,"Last report was run on " S Y=$P(DTAR,U,5) X ^DD("DD") W Y,!!
 D DATE^DVBAUTIL G:X=""!(Y<0) KILL
 S %ZIS="Q" D ^%ZIS K %ZIS G:POP KILL^DVBAUTIL
 ;
QUEUE I $D(IO("Q")) S ZTRTN="DEQUE^DVBACMRP",ZTIO=ION,NOASK=1,ZTDESC="AMIE INCOMPETENT VET REPORT" F I="FDT(0)","HEAD","HEAD1","BDATE","EDATE","TYPE","RO","RONUM","NOASK" S ZTSAVE(I)=""
 I $D(IO("Q")) D ^%ZTLOAD W:$D(ZTSK) !!,"Request queued.",!! G KILL
 ;
GO S MA=BDATE F J=0:0 S MA=$O(^DGPM("AMV1",MA)) Q:$P(MA,".")>EDATE!(MA="")  F DA=0:0 S DA=$O(^DGPM("AMV1",MA,DA)) Q:DA=""  F MB=0:0 S MB=$O(^DGPM("AMV1",MA,DA,MB)) Q:MB=""  D SET I '$D(NOASK) W "."
 I '$D(^TMP($J)) U IO W !!,*7,"No data found for parameters entered.",!! H 2 G KILL
 I $D(^TMP($J)) D PRINT I $D(DVBAQUIT) K DVBAON2 G KILL^DVBAUTIL
 ;
KILL D ^%ZISC S X=5 K DVBAON2 D:$D(ZTQUEUED) KILL^%ZTLOAD G FINAL^DVBAUTIL
 ;
DEQUE K ^TMP($J) G GO