LRBLTA1 ;AVAMC/REG - TRANSFUSION REACTION COUNTS ;10/7/90  10:54 ;
 ;;5.2;LAB SERVICE;**247**;Sep 27, 1994
 ;Per VHA Directive 97-033 this routine should not be modified.  Medical Device # BK970021
 K ^TMP($J) D H Q:LR("Q")
 F LRDFN=0:0 S LRDFN=$O(^LR("AR",LRDFN)) Q:'LRDFN  F LRR=0:0 S LRR=$O(^LR("AR",LRDFN,LRR)) Q:'LRR  F LRI=LRLDT:0 S LRI=$O(^LR("AR",LRDFN,LRR,LRI)) Q:'LRI!(LRI>LRSDT)  D S
 F LRR=0:0 S LRR=$O(^TMP($J,LRR)) Q:'LRR!(LR("Q"))  D:$Y>(IOSL-6) H Q:LR("Q")  S LRR(1)=$P(^LAB(65.4,LRR,0),U) W !!,LRR(1),?31,$J(^TMP($J,LRR),4) D:LRF B
 D END^LRUTL,END Q
S S:'$D(^TMP($J,LRR)) ^(LRR)=0 S ^(LRR)=^(LRR)+1 S:LRF ^(LRR,LRDFN,LRI)="" Q
B S LRDFN=0 F  S LRDFN=$O(^TMP($J,LRR,LRDFN)) Q:'LRDFN!(LR("Q"))  D N^LRBLTA,C
 Q
C S LRI=0 F  S LRI=$O(^TMP($J,LRR,LRDFN,LRI)) Q:'LRI!(LR("Q"))  D:$Y>(IOSL-6) H1 Q:LR("Q")  W !,SSN,?5,LRP,?36 S Y=+$G(^LR(LRDFN,1.9,LRI,0)) D DT^LRU W Y
 Q
 ;
END D V^LRU Q
 ;
H I $D(LR("F")),IOST?1"C".E D M^LRU Q:LR("Q")
 D F^LRU W !,"TRANSFUSION REACTION COUNTS NOT ASSOCIATE WITH SPECIFIC UNITS",!,"FROM ",LRSTR," TO ",LRLST,!,"REACTION",?31,"COUNT" W:LRF !,"SSN",?5,"Patient",?36,"Transfusion Reaction Date" W !,LR("%") Q
H1 D H Q:LR("Q")  W !,LRR(1) Q
