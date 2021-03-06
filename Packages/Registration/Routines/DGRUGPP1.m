DGRUGPP1 ;ALB/BOK/MLI - PRINT PAI FOR A PATIENT ; 25 FEB 87  12:00
 ;;5.3;Registration;**89,173**;Aug 13, 1993
 S DIC="^DG(45.9,",DIC(0)="AEQMZ" D ^DIC K DIC G QUIT:Y'>0 S DGPT=+Y
 W !!,*7,!!,"THIS REPORT REQUIRES 132 COLUMN OUTPUT"
 S DGPGM="START^DGRUGPP1",DGVAR="DGPT",%ZIS("B")="" D ZIS^DGUTQ G:POP QUIT D START
 D CLOSE^DGUTQ
QUIT K %,^UTILITY($J),%DT,%ZIS,DA,DGA,DGA1,DGAD,DGALL,DGCAT,DGED,DGFY,DGG,DGHM,DGI,DGNO,DGNOW,DGPGM,DGPT,DGR,DGS,DGSD,DGT,DGVAR,DGW,DGX,DIC,DIV,E,I,J,K,M,POP,W,X,X1,VAUTD,Y,Z Q
START U IO S X=132 X ^%ZOSF("RM")
EN D NOW^DGPTOTRL Q:'$D(^DG(45.9,DGPT))  S DGI=^(DGPT,0),DGG=$S($D(^DG(45.9,DGPT,"R")):^("R"),1:""),DGS=$S($D(^DG(45.9,DGPT,"C")):^("C"),1:"")
 S DGFY=$S($E($P(DGI,U,2),4,5)<10:($E($P(DGI,U,2),1,3)_"0000"),1:($E($P(DGI,U,2),1,3)+1_"0000"))
 S Z=$P(DGG,U,4),DGCAT=$S(Z=1:"1 - HEAVY REHABILITATION",Z=2:"2 - SPECIAL CARE",Z=3:"3 - CLINICAL COMPLEX",Z=4:"4 - BEHAVIORAL",Z=5:"5 - PHYSICAL",1:"")
 Q:'$D(^DPT(+DGI,0))
 I ($E(IOST)="C")!($D(FIRST)) W @IOF
 W !?48,">>>>PATIENT ASSESSMENT INSTRUMENT<<<<",!!,"NAME: ",$P(^DPT(+DGI,0),U),?92,"PRINTED: ",DGNOW,!," 1.",$J("SSN: ",32),$P(DGI,U,3)
 W ?86,$J("RUG-II GROUP: ",15),$P(DGG,U,2),!," 2.",$J("SEX: ",32),$P(DGI,U,4),?86,$J("ADL SUM: ",15),$P(DGG,U,3)
 W !," 3.",$J("YEAR OF BIRTH: ",32),$P(DGI,U,5),?86,$J("CATEGORY: ",15),DGCAT,!," 4.",$J("ASSESSMENT DATE: ",32),$$FMTE^XLFDT($P(DGI,U,2),"5DZ")
 W ?86,$J("RUG-II WWUs: ",15) I $P(DGG,U,2) W $S($D(^DG(45.91,+$P(DGG,U,2),"FY",DGFY,0)):$P(^(0),U,2),1:"")
 W !," 5.",$J("ASSESSMENT PURPOSE: ",32),$S($P(DGI,U,6)=1:"1 ADMISSION/TRANSFER",$P(DGI,U,6)=2:"2 SEMI-ANNUAL CENSUS",1:"3 CONTRACT NURSING HOME")
 W !," 6.",$J("DATE OF ADMISSION/TRANSFER IN: ",32),$$FMTE^XLFDT($P(DGI,U,7),"5DZ")
 W ?86,$J("RECORD STATUS: ",15),$S($P(DGS,U)]"":$P(DGS,U),1:"INCOMPLETE"),"  " W:$P(DGS,U)]"" $P($P(^DD(45.9,80,0),$P(DGS,U)_":",2),";",1)
 W !," 7.",$J("MEDICAL CENTER CODE: ",32),$P(DGI,U,8),!," 8.",$J("BED SECTION: ",32),$P(DGI,U,9),$S($P(DGI,U,9)="I":"-INTERMEDIATE MED.",$P(DGI,U,9)="N":"-NURSING HOME CARE",1:"")
 I $P(DGI,"^",6)'=3 W ?86,$J("WARD: ",15) I +DGG,$D(^DIC(42,+DGG,0)) W $P(^(0),U,1)
 I $P(DGI,"^",6)=3 W ?86,$J("CNH LOCATION: ",15) I +DGG,$D(^FBAAV(+DGG,0)) W $P(^(0),U)
PRT K Y W !!?24,"MEDICAL TREATMENTS",?91,"SELECTED DIAGNOSIS",! S $P(Y,"-",19)="" W ?24,Y S $P(Y,"-",18)="" W ?91,Y K Y
 F E=10:1:16 W ! D MT I E<14 S E=E+22 W ?66 D MT S E=E-22
 W ?87,"ACTIVITIES OF DAILY LIVING" S E=17,$P(Y,"-",27)="" W ! D MT W ?87,Y
 F E=18:1:21 W ! X:E<21 "D MT W ?66 D ADL" I E=21 S E=-1 D ADL S E=21 W ?66 D ADL
 W !!?26,"MEDICAL EVENTS",?95,"BEHAVIORS",! K Y S $P(Y,"-",15)="" W ?26,Y K Y S $P(Y,"-",10)="",X1=47 W ?95,Y F E=23:1:28 W ! D MT W ?66 X:E=26 "S E=E+21 D MT S E=E-21" I E<26 S E=E-1 D ADL S E=E+1
 W !!?56,"SPECIALIZED SERVICES" K Y S $P(Y,"-",21)="" W !?56,Y,!?17,"REHABILITATION MEDICINE THERAPIES",?86,"CHRONIC RESPIRATORY SUPPORT",! S $P(Y,"-",34)="" W ?17,Y K Y S $P(Y,"-",28)="" W ?86,Y
 S E(2)=51 F E=47:1:51 W ! D LEV^DGRUGPP S E(2)=E(2)+1 W ?66 D:E<50 ADL2 W ! D THER^DGRUGPP S E(2)=E(2)+1 I E<49 W ?66 D ADL2
 S %=IOSL-6 F I=$Y:1:% W !
 W !?26,"*QUESTIONS 21,28,29,30,35,36,37 AND 38 ARE RESERVED FIELDS AND ARE NOT DISPLAYED",! Q
MT W $J(E-1,2),".",$J($P(^DD(45.9,E,0),U),30),": ",$P(DGI,U,E),$S(E'=23&(E'=47):$S($P(DGI,U,E)=1:"> NO",$P(DGI,U,E)=2:"> YES",1:""),$P(DGI,U,E)']"":"",1:"> "_$E($P($P(^DD(45.9,E,0),$P(DGI,U,E)_":",2),";",1),1,24)) Q
ADL W E+21,".",$J($P(^DD(45.9,(E+22),0),U),30),": " W:$P(DGI,U,(E+22))]"" $E($P($P(^DD(45.9,(E+22),0),$P(DGI,U,(E+22))_":",2),";",1),1,27)
 Q
ADL1 W ?66,E+36,".",$J($P(^DD(45.9,(E+32),0),U),30),": " Q:$P(DGI,U,(E+32))']""  W:E>26 $E($P($P(^DD(45.9,(E+32),0),$P(DGI,U,(E+32))_":",2),";",1),1,27) I E=26 W $P(DGI,U,E+32),"> ",$S($P(DGI,U,E+32)=1:"NO",1:"YES")
 Q
ADL2 W E(2),".",$J($P(^DD(45.9,(E(2)+6),0),U),30),": " Q:$P(DGI,U,(E(2)+6))']""  W:E>47!(E(2)=53) $E($P($P(^DD(45.9,(E(2)+6),0),$P(DGI,U,(E(2)+6))_":",2),";",1),1,27) I E=47&(E(2)'=53) W $P(DGI,U,E(2)+6),"> ",$S($P(DGI,U,E(2)+6)=1:"NO",1:"YES")
 Q
