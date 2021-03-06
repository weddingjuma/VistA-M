GMTSROE ; SLC/KER - Surgery Extract                   ; 06/24/2002 [7/28/04 8:40am]
 ;;2.7;Health Summary;**37,57,71**;Oct 20, 1995
 ;
 ; External References
 ;   DBIA   2491  ^SRF(  file #130
 ;   DBIA  10103  $$HTFM^XLFDT
 ;   DBIA  10015  EN^DIQ1
 ;   DBIA   1996  $$CPT^ICPTCOD
 ;   DBIA  10011  ^DIWP
 ;   DBIA   2056  $$GET1^DIQ  (file #81.3)
 ;   DBIA   2056  $$GET1^DIQ  (file #81)
 ;   DBIA   2056  $$GET1^DIQ  (file #130)
 ;   DBIA   2052  FILE^DID
 ;                  
 Q
ONE(X) ; Extract One Surgery Report
 K REC N GMTSCPTM,GMSG,DA,DR,DIC,DIQ,IEN,IENS,FILE,FLD,FLDS,FLDI
 N FLDA,FLDB,FLDR,FLDRT,IEN,GMTSI,GMTSRT,GMTST,GMTSS,GMTSC,GMTSCS
 S GMTSCPTM=+($$CPT^GMTSU(+($G(GMTSEGN)))) S:$G(GMPXCMOD)="N" GMTSCPTM=0
 Q:'$D(^SRF(X,0))  S (IENS,IEN,X)=+($G(X)),U="^"
 S:'$D(DT) DT=$$HTFM^XLFDT($H,1) S:'$D(DTIME) DTIME=300
 S (FILE,DIC)=130,DA=+($G(X)),DIQ="REC(",DIQ(0)="IE"
 S GMSG=$$SG(IEN),REC(130,IEN,118,"E")=$S(GMSG=0:"YES",1:""),REC(130,IEN,118,"I")=$S(GMSG=0:"Y",1:"")
 S:+GMSG DR=".09;.04;.14;.205;.22;.23;.31;1.15;10;15;17;26;27;32;34;36;39;43;49"
 S:'GMSG DR=".09;.31;26;27;33;55;59;66;1.15;121;122;123;124;125"
 D EN^DIQ1 S REC(130,IEN,"STATUS")=$$OS(IEN) S:+GMSG REC(130,IEN,"VERIFIED")=$S($G(REC(130,IEN,43,"I"))'="Y":"(Unverified)",1:"")
 S GMTSM=$G(REC(130,IEN,27,"I")) I GMTSM>0 D
 . S GMTSC=$$CPT^ICPTCOD(GMTSM),(GMTSCS,GMTSS)=$$EN2^GMTSUMX($P(GMTSC,"^",3))
 . S REC(130,IEN,27,"X")=$P(GMTSC,"^",2)_"^"_$P(GMTSC,"^",3)
 . S GMTSC=$P(GMTSC,"^",2),GMTST=$$EN2^GMTSUMX($G(REC(130,IEN,26,"E")))
 . S:$L(GMTSS)&(GMTSS'=GMTST) GMTST=GMTST_" - "_GMTSS
 . S:$L(GMTSC)=5 GMTST=GMTST_" (CPT "_GMTSC_")",GMTSCS=GMTSCS_" (CPT "_GMTSC_")"
 . S REC(130,IEN,27,"N")=GMTSS
 . S (REC(130,IEN,26,"S"),REC(130,IEN,27,"S"))=GMTST
 . S REC(130,IEN,27,"S")=GMTSCS
 D SUB
 S:$D(REC(130,IEN,32)) REC(130,IEN,32,"S")=$$EN2^GMTSUMX($G(REC(130,IEN,32,"E")))
 S:$D(REC(130,IEN,33)) REC(130,IEN,33,"S")=$$EN2^GMTSUMX($G(REC(130,IEN,33,"E")))
 S:$D(REC(130,IEN,34)) REC(130,IEN,34,"S")=$$EN2^GMTSUMX($G(REC(130,IEN,34,"E")))
 S:$D(REC(130,IEN,.04)) REC(130,IEN,.04,"S")=$$EN2^GMTSUMX($G(REC(130,IEN,.04,"E")))
 S:$D(REC(130,IEN,125)) REC(130,IEN,125,"S")=$$EN2^GMTSUMX($G(REC(130,IEN,125,"E")))
 I $L($G(REC(130,IEN,33,"S"))) D
 . S:'$L($G(REC(130,IEN,66,"E"))) REC(130,IEN,33,"S")=$G(REC(130,IEN,33,"S"))_" (Unknown)"
 . S:$L($G(REC(130,IEN,66,"E"))) REC(130,IEN,33,"S")=$G(REC(130,IEN,33,"S"))_" (ICD "_$G(REC(130,IEN,66,"E"))_")"
 S:+($G(REC(130,IEN,.09,"I")))>0 REC(130,IEN,.09,"S")=$$ED^GMTSU($G(REC(130,IEN,.09,"I")))
 S:+($G(REC(130,IEN,15,"I")))>0 REC(130,IEN,15,"S")=$$EDT^GMTSU($G(REC(130,IEN,15,"I")))
 S:+($G(REC(130,IEN,39,"I"))) REC(130,IEN,39,"S")=$$EDT^GMTSU($G(REC(130,IEN,39,"I")))
 S:+GMSG REC(130,IEN,"LAB")=$S($O(REC(130,IEN,49,0))>0:"Yes",1:"")
 I 'GMSG D:+($O(REC(130,IEN,55,0)))>0 WP(IEN,55,58) D:+($O(REC(130,IEN,59,0)))>0 WP(IEN,59,58)
 Q
WP(X,Y,Z) ; Word Processing
 N GMTSI,GMTSF,GMTSW,GMI,DIWF,DIWL,DIWR
 S GMTSI=+($G(X)) Q:GMTSI=0!('$D(REC(130,GMTSI)))
 S GMTSF=+($G(Y)) Q:GMTSF=0!('$D(REC(130,GMTSI,GMTSF)))
 S GMTSW=+($G(Z)) Q:GMTSW'>0!(GMTSW>79)
 Q:+($O(REC(130,GMTSI,GMTSF,0)))'>0
 K ^UTILITY($J,"W") S DIWF="C"_GMTSW,DIWL=0,DIWR=0,GMI=0
 F  S GMI=$O(REC(130,GMTSI,GMTSF,GMI)) Q:+GMI=0  D
 . S X=$G(REC(130,GMTSI,GMTSF,GMI)) D ^DIWP
 S GMI=0 F  S GMI=$O(^UTILITY($J,"W",0,GMI)) Q:+GMI=0  D
 . S REC(130,GMTSI,GMTSF,"S",GMI)=$G(^UTILITY($J,"W",0,GMI,0))
 . S REC(130,GMTSI,GMTSF,"S",0)=$G(REC(130,GMTSI,GMTSF,"S",0))+1
 K ^UTILITY($J,"W")
 Q
OS(X) ; Obtains status for OR procedures
 N GMN S GMN=+($G(X)) S X="" I $G(REC(130,GMN,118,"I"))="Y" D  Q X
 . S:+($G(REC(130,GMN,122,"I")))>0 X="(Completed)"
 . S:+($G(REC(130,GMN,121,"I")))>0&(+($G(REC(130,GMN,122,"I")))'>0) X="Incomplete"
 . S:X="" X="Unknown"
 I +($G(REC(130,GMN,17,"I")))>0 D  Q X
 . S X=$S(+($G(REC(130,GMN,.205,"I")))>0:"(Aborted)",1:"Cancelled")
 I +($G(REC(130,GMN,.23,"I")))>0 S X="(Completed)" Q X
 I +($G(REC(130,GMN,.22,"I")))>0 S X="Incomplete" Q X
 I +($G(REC(130,GMN,10,"I")))>0 S X="Scheduled" Q X
 I +($G(REC(130,GMN,36,"I")))>0,+($G(REC(130,GMN,.22,"I")))'>0 S X="Requested" Q X
 S X="Unknown"
 Q X
SUB ; Surgery Subfiles 
 N DA,DR,DIC,DIQ,IENS,FILE,FLD,FLDS,FLDI,FLDA,FLDB,FLDR,FLDRT,GMTSM,GMTSC,GMTSI,GMTSJ,STXT,SNAM,SCOD,SUB
 I +GMSG D
 . ; ^SRF(DO,14,I)                .72
 . ;   Other Preop Diagnosis      14;0  130.17
 . ; $P(^SRF(DO,14,I,0),U)        .01
 . ;   Other Preop Diagnosis       0;1  Text
 . S DA=IEN,(FILE,DIC)=130,SUB=130.17,DR=.72,DR(SUB)=".01",DIQ="REC(130,"_IEN_",",DIQ(0)="IE"
 . K REC(SUB) S GMTSI=0 F  S GMTSI=$O(^SRF(+($G(IEN)),14,GMTSI)) Q:+GMTSI=0  D
 . . S DA(SUB)=GMTSI D EN^DIQ1
 . . S REC(130,IEN,130.17,GMTSI,.01,"S")=$$EN2^GMTSUMX($G(REC(130,IEN,130.17,GMTSI,.01,"E")))
 . ; ^SRF(DO,15,I)                .74
 . ;   Other Postop Diagnosis     15;0  130.18
 . ; $P(^SRF(DO,15,I,0),U)        .01
 . ;   Other Postop Diagnosis      0;1  Text
 . S DA=IEN,(FILE,DIC)=130,SUB=130.18,DR=.74,DR(SUB)=".01",DIQ="REC(130,"_IEN_",",DIQ(0)="IE"
 . K REC(SUB) S GMTSI=0 F  S GMTSI=$O(^SRF(+($G(IEN)),15,GMTSI)) Q:+GMTSI=0  D
 . . S DA(SUB)=GMTSI D EN^DIQ1
 . . S REC(130,IEN,130.18,GMTSI,.01,"S")=$$EN2^GMTSUMX($G(REC(130,IEN,130.18,GMTSI,.01,"E")))
 ; ^SRF(GMN,"OPMOD",I)           28
 ;   Primary Proc CPT Mod   OPMOD;0  130.028
 ; $P(^SRF(GMN,"OPMOD",I,0),U)  .01
 ;   Primary Proc CPT Mod       0;1  Ptr 81.3
 I GMTSCPTM D
 . S DA=IEN,(FILE,DIC)=130,SUB=130.028,DR=28,DR(SUB)=".01",DIQ="REC(130,"_IEN_",",DIQ(0)="IE"
 . K REC(SUB) S GMTSI=0 F  S GMTSI=$O(^SRF(+($G(IEN)),"OPMOD",GMTSI)) Q:+GMTSI=0  D
 . . S DA(SUB)=GMTSI D EN^DIQ1
 . . S GMTSM=+($G(REC(130,+($G(IEN)),SUB,+($G(GMTSI)),.01,"I")))
 . . I GMTSM>0 D
 . . . N GMTSMOD S GMTSMOD=$$MOD^ICPTMOD(+GMTSM)
 . . . S GMTSC=$P(GMTSMOD,"^",2)
 . . . S GMTSS=$P(GMTSMOD,"^",3)
 . . . S REC(130,IEN,SUB,GMTSI,.01,"MID")=GMTSC
 . . . S REC(130,IEN,SUB,GMTSI,.01,"MOD")=GMTSS
 . . . S GMTST=$$EN2^GMTSUMX(GMTSS)
 . . . S:$L(GMTSC) GMTST=GMTST_" (CPT Mod "_GMTSC_")"
 . . . S REC(130,IEN,SUB,GMTSI,.01,"S")=GMTST
 ; ^SRF(DO,13,I)                .42
 ;   Other Proc                13;0  130.16
 ; $P(^SRF(DO,13,I,0),U)        .01
 ;   Other Proc                 0;1  Text      
 ; $P(^SRF(DO,13,I,2),U)          3
 ;   Other Proc CPT Code        2;1  Ptr 81
 S DA=IEN,(FILE,DIC)=130,SUB=130.16,DR=.42,DR(SUB)=".01;3",DIQ="REC(130,"_IEN_",",DIQ(0)="IE"
 K REC(SUB) S GMTSI=0 F  S GMTSI=$O(^SRF(+($G(IEN)),13,GMTSI)) Q:+GMTSI=0  D
 . N GMTSCPT S DA(SUB)=GMTSI
 . D EN^DIQ1 S GMTSM=+($G(REC(130,IEN,130.16,GMTSI,3,"I")))
 . S GMTSCPT=$$CPT^ICPTCOD(+GMTSM)
 . S:GMTSM>0 REC(130,IEN,130.16,GMTSI,3,"N")=$P(GMTSCPT,"^",3)
 . N GMTST,GMTSS,GMTSC S GMTSM=$G(REC(130,IEN,130.16,GMTSI,3,"I")) I GMTSM>0 D
 . . S GMTSC=$$CPT^ICPTCOD(GMTSM),(GMTSCS,GMTSS)=$$EN2^GMTSUMX($P(GMTSC,"^",3))
 . . S REC(130,IEN,130.16,GMTSI,3,"X")=$P(GMTSC,"^",2)_"^"_$P(GMTSC,"^",3)
 . . S GMTSC=$P(GMTSC,"^",2)
 . . S GMTST=$$EN2^GMTSUMX($G(REC(130,IEN,130.16,GMTSI,.01,"E")))
 . . S:$L(GMTSS)&(GMTSS'=GMTST) GMTST=GMTST_" - "_$$EN2^GMTSUMX(GMTSS)
 . . S:$L(GMTSC)=5 GMTST=GMTST_" (CPT "_GMTSC_")",GMTSCS=GMTSCS_" (CPT "_GMTSC_")"
 . . S REC(130,IEN,130.16,GMTSI,3,"N")=GMTSS
 . . S REC(130,IEN,130.16,GMTSI,.01,"S")=GMTST
 . . S REC(130,IEN,130.16,GMTSI,3,"S")=GMTSCS
 . ;     ^SRF(8,13,2,"MOD",0)       4
 . ;       Oth Proc CPT Mod     MOD;0  130.164
 . ;     ^SRF(8,13,2,"MOD",1,0)   .01
 . ;       Oth Proc CPT Mod       0;1  Ptr 81.3
 . I GMTSCPTM D
 . . N GMTSJ S GMTSJ=0 F  S GMTSJ=$O(^SRF(+($G(IEN)),13,GMTSI,"MOD",GMTSJ)) Q:+GMTSJ=0  D
 . . . N DA,FILE,DIC,SUB,DR,DIQ S DA=IEN,DR=.42,FILE=130,SUB=130.16,DR(SUB)="4",DA(SUB)=GMTSI,SUB=130.164,DR(SUB)=".01",DA(SUB)=GMTSJ,DIC=130,DIQ="REC(130,"_IEN_",130.16,"_GMTSI_",",DIQ(0)="IE"
 . . . D EN^DIQ1
 . . . S GMTSM=+($G(REC(130,IEN,130.16,GMTSI,130.164,GMTSJ,.01,"I")))
 . . . I GMTSM>0 D
 . . . . N GMTSMOD S GMTSMOD=$$MOD^ICPTMOD(+GMTSM)
 . . . . S GMTSC=$P(GMTSMOD,"^",2)
 . . . . S GMTSS=$P(GMTSMOD,"^",3)
 . . . . S REC(130,IEN,130.16,GMTSI,SUB,GMTSJ,.01,"MID")=GMTSC
 . . . . S REC(130,IEN,130.16,GMTSI,SUB,GMTSJ,.01,"MOD")=GMTSS
 . . . . S REC(130,IEN,130.16,GMTSI,SUB,GMTSJ,.01,"X")=GMTSC_"^"_GMTSS
 . . . . S GMTST=$$EN2^GMTSUMX(GMTSS) S:$L(GMTSC) GMTST=GMTST_" (CPT Mod "_GMTSC_")"
 . . . . S REC(130,IEN,130.16,GMTSI,SUB,GMTSJ,.01,"S")=GMTST
 . . . K REC(130,IEN,130.16,GMTSI,130)
 Q
SORT ; Sort surgeries by inverted date
 N GMDT S GMDT=$P(^SRF(GMN,0),U,9) I GMDT>GMTSBEG&(GMDT<GMTSEND) D
 . F  Q:'$D(SURG(9999999-GMDT))  S GMDT=GMDT+.0001
 . S SURG(9999999-GMDT)=GMN
 Q
GL(X) ; Global Location
 N FIL D FILE^DID(130,"N","GLOBAL NAME","FIL","FIL(""ERR"")") S X=$G(FIL("GLOBAL NAME"))
 S:$E(X,1)'="^"!($E(X,2,$L(X))["^")!($L($E(X,2,$L(X)))<2)!($L($E(X,2,$L(X)))>8)!($E(X,2,$L(X))'["(") X=""
 I $L(X) S:'$D(@($P(X,"(",1))) X=""
 Q X
SG(X) ; Surgical (Operative) Record
 S X=$$GET1^DIQ(130,+($G(X)),118,"I") S X=$S(X["Y":0,1:1) Q X
