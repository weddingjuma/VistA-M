PSGL0 ;BIR/CML3-ACTUAL LABEL PRINT ; 26 Jun 98 / 8:30 AM
 ;;5.0; INPATIENT MEDICATIONS ;**7**;16 DEC 97
ENACL ;
 W !!,"There are unprinted new labels from AUTO ",$S(PSGTOL=3:"REINSTATED",1:"DISCONTINUED")," orders." F  W !,"Do you want any of them now" S %=1 D YN^DICN Q:%  D CHKM^PSGLH
 Q:%<0  I %=1 D ENAC S %=1 Q
 F  W !!,"Will you want these labels at a later date" S %=1 D YN^DICN Q:%  D LM^PSGLH
 Q:%'=2  S DIK="^PS(53.41,",DA=PSGTOL D ^DIK S %=2 Q
 ;
ENAC ; select ward
 W !!,"Wards: " S NP="",QQ=0 F W=1:1 S QQ=$O(^PS(53.41,PSGTOL,1,QQ)) Q:'QQ  D NP:'(W#20) Q:NP["^"  W !,$J(W,3),".  ",$S($D(^DIC(42,QQ,0)):$P(^(0),"^"),1:QQ) S W(W)=QQ
 S W=W-1 I 'W K ^PS(53.41,PSGTOL) W !!?3,"Sorry, no labels were found after all.  (The problem has been corrected.)",! Q
 F  W !!,"Select 1 - ",W,": " R X:DTIME W:'$T $C(7) S:'$T X="^" Q:"^"[X  D SC Q:$D(X)
 G:"^"[X DONE S PSGLWARD=PSGODDD F Q=1:1:PSGODDD F Q1=1:1 S Q2=$P(PSGODDD(Q),",",Q1) Q:'Q2  S PSGLWARD(Q)=$S($D(PSGLWARD(Q)):PSGLWARD(Q)_",",1:"")_W(Q2)
 K ZTSAVE S PSGLRTN="ENACP^PSGL0",PSGLDESC="MAR AUTO LABELS",(ZTSAVE("PSGLWARD"),ZTSAVE("PSGLWARD("),ZTSAVE("PSGTOL"))="" D DEV1 I 'POP,'$D(IO("Q")) D ENACP
 G DONE
 ;
ENNL ; new labels, other than auto discontinue
 K ZTSAVE S PSGLRTN="ENNLP^PSGL0",PSGLDESC="UD NEW LABEL REPRINT" D DEV1 G:POP!$D(IO("Q")) DONE D ENNLP
 ;
SC ; selection validation
 I X?1."?" W !!,"  Select (1-",W,") the ward(s) you wish to print labels for.  Enter an '^',",!,"or press the RETURN key, to quit now." K X Q
 Q:'$D(W)
 S PSGLMT=W D ^PSGON W:'$D(X) $C(7),"  ??" Q
 ;
DEV1 ; device ask for auto discontinue or new labels
 K IO("Q"),%ZIS,IOP S PSGION=ION,%ZIS="Q",%ZIS("A")="Label Printing Device: ",%ZIS("B")=$P(PSJSYSL,"^",2) W ! D ^%ZIS K %ZIS I POP S IOP=PSGION D ^%ZIS K IOP S POP=1 W !,"No device selected.  Option terminated." Q
 D EN2^PSGLBA S POP=0 I $D(IO("Q")) S PSGTIR=PSGLRTN,ZTDESC=PSGLDESC,(ZTSAVE("PSGLWARD"),ZTSAVE("PSGLWARD("),ZTSAVE("PSGTOL"))="" W ! D ENTSK^PSGTI K PSGLDESC,PSGLRTN W:$D(ZTSK) !?3,"Labels queued!"
 Q
 ;
ENACP ; auto label print
 D NOW^%DTC S PSGDT=% U IO
 F PSGLWC=1:1:PSGLWARD F PSGLWC1=1:1:$L(PSGLWARD(PSGLWC),",") S PSGLWD=$P(PSGLWARD(PSGLWC),",",PSGLWC1),PSGLWDN=$S($D(^DIC(42,PSGLWD,0)):$P(^(0),"^"),1:"zz") F PSGOP=0:0 S PSGOP=$O(^PS(53.41,PSGTOL,1,PSGLWD,1,PSGOP)) Q:'PSGOP  D AC
 Q
AC ;
 N PSJFIRST,VAINDT S PSJFIRST=1
 F PSGLWC2=1,2,3 F PSGLWC3=0:0 S PSGLWC3=$O(^PS(53.41,PSGTOL,1,PSGLWD,1,PSGOP,1,PSGLWC2,1,PSGLWC3)) Q:'PSGLWC3  S PSGORD=PSGLWC3_$E("ANV",PSGLWC2) D
 .S:PSGTOL'=2 VAINDT=$E($P($G(^PS(53.41,PSGTOL,1,PSGLWD,1,PSGOP,1,PSGLWC2,1,PSGLWC3,0)),U,3),1,12) D ^PSGLPI
 .I PSJFIRST D ENHEDER^PSGLPI S PSJFIRST=0
 .I PSGLWC2=2,($P($G(^PS(53.1,+PSGORD,0)),U,9)="P") S PSGORD=+PSGORD_"P" NEW PSJFLUID S:$P(^(0),U,4)="F" PSJFLUID=1
 .I PSGLWC2=3!$G(PSJFLUID) D EN^PSIVUDL(PSGOP,PSGORD,PSGLWD_U_PSGLWDN,PSGLRB)
 .D:PSGLWC2'=3 ^PSGLOI
 K DA,DIK S DA(1)=PSGTOL,DA=PSGLWD,DIK="^PS(53.41,"_PSGTOL_",1," D ^DIK
 I '$O(^PS(53.41,PSGTOL,1,0)) K DA,DIK S DA=PSGTOL,DIK="^PS(53.41," D ^DIK
 Q
 ;
DEV2 ; device for new labels
 K IO("Q"),%ZIS,IOP S PSGION=ION,%ZIS("A")="Print on DEVICE: ",%ZIS="Q",%ZIS("B")=$P(PSJSYSL,"^",2) W ! D ^%ZIS K %ZIS I POP S IOP=PSGION D ^%ZIS K IOP S POP=1 W !,"No device selected.  Option terminated." Q
 I $D(IO("Q")) S PSGTIR="ENNLP^PSGL0",ZTDESC="LABELS" K ZTSAVE D ENTSK^PSGTI W:$D(ZTSK) !,"Labels queued!" Q
 ;
ENNLP ; new label print
 D NOW^%DTC N PSJFIRST,PSJFLUID
 S PSJFIRST=1,PSGDT=%,QT=2,QL=DUZ,PSJACNWP=1 U IO
 F PSGOP=0:0 S PSGOP=$O(^PS(53.41,2,1,DUZ,1,PSGOP)) Q:'PSGOP  D ^PSGLPI F QS=1,2,3 F QO=0:0 S QO=$O(^PS(53.41,2,1,DUZ,1,PSGOP,1,QS,1,QO)) Q:'QO  D
 . I PSJFIRST,$P($G(^PS(59.6,+$O(^PS(59.6,"B",+PSGLWD,0)),0)),U,18) D ENHEDER^PSGLPI S PSJFIRST=0
 . S PSGORD=QO_$E("ANV",QS) I QS=2 S X=^PS(53.1,+PSGORD,0),PSJFLUID=$P(X,U,4)="F"
 . I QS<3,'$G(PSJFLUID) D ^PSGLOI
 . I QS=3!$G(PSJFLUID) D EN^PSIVUDL(PSGOP,PSGORD,PSGLWD_U_PSGLWDN,PSGLRB)
 K DA,DIK S DA(1)=2,DA=DUZ,DIK="^PS(53.41,2,1," D ^DIK I '$O(^PS(53.41,2,1,0)) K DA,DIK S DA=2,DIK="^PS(53.41," D ^DIK
 Q
NP ;
 R !!,"Enter an '^' to stop list, or press RETURN to continue. ",NP:DTIME W:'$T $C(7) S:'$T NP="^" W:NP'["^" *13,# Q
 ;
DONE ;
 K NP,PSGOP,PSGION,QD,QS,SAVE,W,X1,X2,Z,ZTOUT D ^%ZISC
 Q
 ;
ENKL ;
 K ^PS(53.41,QT,1,QL,1,PSGOP,1,QS,1,QO)
ENKL1 Q:$O(^PS(53.41,QT,1,QL,1,PSGOP,1,QS,1,0))  K ^PS(53.41,QT,1,QL,1,PSGOP,1,QS) Q:$O(^PS(53.41,QT,1,QL,1,PSGOP,1,0))  K ^PS(53.41,QT,1,QL,1,PSGOP) Q:$O(^PS(53.41,QT,1,QL,1,0))  K ^PS(53.41,QT,1,QL)
 Q
 ;
ENCU ; clean-up
 F QT=1,2 F QL=0:0 S QL=$O(^PS(53.41,QT,1,QL)) Q:'QL  F PSGOP=0:0 S PSGOP=$O(^PS(53.41,QT,1,QL,1,PSGOP)) Q:'PSGOP  F QS=1,2 D ENKL1
 K PSGOP,QL,QS,QT Q
