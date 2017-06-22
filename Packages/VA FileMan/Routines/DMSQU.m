DMSQU ;SFISC/JHM-SQLI UTILITIES ;5/13/98  12:03
 ;;22.2;VA FileMan;;Jan 05, 2016;Build 42
 ;;Per VA Directive 6402, this routine should not be modified.
 ;;Submitted to OSEHRA 5 January 2015 by the VISTA Expertise Network.
 ;;Based on Medsphere Systems Corporation's MSC FileMan 1051.
 ;;Licensed under the terms of the Apache License, Version 2.0.
 ;
 Q
SOC(T,B) ;TRANSLATE BASE CODE B TO EXTERNAL FORM FROM TEXT T
 Q $P($P(T,";"_B_":",2),";")
NEW() ;Extrinsic function returns comma-list of variables to NEW
 Q "DI,DIQUIET,DIFM"
ENV Q:$G(DUZ(0))'["@"
 K ERR I $G(DIFM),$G(U)="^",$G(DT),$D(DUZ) D CLEAN^DIEFU Q
 S DIQUIET=1,DIFM=1 D INIZE^DIEFU
 Q
EXT(F,FI,FLG,INT,MSG) ;SQLI ENTRY TO EXTERNAL^DILFD
 D ENV Q $$EXTERNAL^DILFD(F,FI,FLG,INT,$G(MSG))
GET(F,IEN,FI,FLG,BUF,MSG) ;SQLI ENTRY TO GET1^DIQ
 D ENV Q $$GET1^DIQ(F,IEN,FI,$G(FLG),$G(BUF),$G(MSG))
CLF(S) D ENV N X
 S X=$P($G(^DMSQ(S,0)),"^",1,2)_"^" I X'="^" K ^DMSQ(S) S ^DMSQ(S,0)=X
 Q
CLN D CLF("DT"),CLF("DM") Q
VIEN(TI) ;RETURN VIRTUAL IENS FOR TI
 N I,S S S=""
 F I=$L(^DMSQ("T",TI,1),"{K}")-1:-1:1 S S=S_"{K"_I_"},"
 Q S
ET(T) ;REPORT ELAPSED TIME SINCE T ($H FORMAT)
 W ?30,"Time elapsed: ",$$TM($$TD(T,$H))," (HH:MM:SS)"
 Q
TD(T,N) ;RETURNS TIME DIFERENCE OF N(OW)-T(HEN) $H FORMATS
 Q N-T*86400+$P(N,",",2)-$P(T,",",2)
TM(S) ;RETURN TEXT VALUE OF TIME S SECONDS AS HH:MM:SS
 Q $E(S\3600+100,2,3)_":"_$E(S\60#60+100,2,3)_":"_$E(S#60+100,2,3)
PAR(TI,NP,G,P,E) ;GET PARENT, GBL FRAGMENT, AND PIECE OR EXTRACT
 ;CALLED: S PAR=$$PAR^DMSQU(TABLE_ID,NODE;PIECE,.GBL_FRAG,.PC,.EX)
 N PEI,PI,SQ,CI,E1,E2 D ENV
 S PEI=$O(^DMSQ("E","F",TI,"P","")) Q:'PEI ""
 S SQ=$O(^DMSQ("P","C",PEI,""),-1) Q:'SQ ""
 S PI=$O(^DMSQ("P","C",PEI,SQ,"")),CI=$P(^DMSQ("P",PI,0),U,2)
 S G=","_$$SS($P(NP,";"))_")",E=""
 S P=$P(NP,";",2) I P'["E" S:P]"" P=+P
 E  S E=+$P(P,"E",2)_","_(+$P(NP,",",2)),P=""
 Q CI
ERR(F,FI,T) ;ERROR LOGGER
 N TI,EI,FE S FE=$G(ERR("DIERR",1)) D ENV
 I T?1NN,$D(^DMSQ("ET",T)) S TI=T
 E  S TI=$O(^DMSQ("ET","B",T,"")) I 'TI D
 . F TI=$P($G(^DMSQ("ET",0)),U,4)+1:1 Q:'$D(^(TI))
 . S $P(^DMSQ("ET",0),U,3,4)=TI_U_TI,^(TI,0)=T,^DMSQ("ET","B",T,TI)=""
 S EI=$P($G(^DMSQ("EX",0)),U,4)+1,$P(^(0),U,3,4)=EI_U_EI
 S ^DMSQ("EX",EI,0)=F_U_FI_U_TI_U_DT_U_FE,^DMSQ("EX","B",F,EI)=""
 S ^DMSQ("EX","C",TI,EI)="",^DMSQ("EX","D",DT,EI)=""
 I FE S ^DMSQ("EX","E",FE,EI)=""
 Q
ATTR ;;TYPE;FIELD LENGTH;DECIMAL DEFAULT;INPUT TRANSFORM;GLOBAL SUBSCRIPT LOCATION;POINTER;TITLE;SPECIFIER;DESCRIPTION;MULTIPLE-VALUED;LABEL
DOM(F,FI,DEF,ERR) ;GET FIELD ATTRIBUTES - DEF AND ERR ARE OPTIONAL
 ;RETURNS DOMAIN:WIDTH:SCALE ALLWAYS, ARRAYS DEF AND ERR OPTIONALLY
 N T,W,S,X K DEF D ENV
 I '$D(^DD(F,FI,0))#10 Q ""
 D FIELD^DID(F,FI,"",$P($T(ATTR),";;",2),"DEF","ERR")
 I $D(ERR)!$D(DIERR) D  Q T
 . S T=$$DM(F,FI,.DEF) I T]"" D ENV,ERR(F,FI,"FIELD: CALL TO RETRIEVE ATTRIBUTES FAILED")
 S T=DEF("TYPE"),W=DEF("FIELD LENGTH"),S=DEF("DECIMAL DEFAULT")
 S:W W=+W S:S?1N.E S=+S
 S I=DEF("INPUT TRANSFORM"),W=$S(I["$L(X)>":+$P(I,"$L(X)>",2),1:W)
 I T["MUMPS" S W=245,T="FM_MUMPS"
 E  I T["SET" S T="SET_OF_CODES"
 E  I T["DATE/TIME" D
 . S X=$P($P(DEF("INPUT TRANSFORM"),"%DT=""",2),"""")
 . S T=$S(X["R":"FM_DATE_TIME",X["T":"FM_MOMENT",1:"FM_DATE")
 E  I T["NUMERIC",'S S T="INTEGER",S=""
 E  I T["FREE TEXT" S T="CHARACTER"
 E  I T["COMPUTED" S T=$S(S:"NUMERIC",S=0:"INTEGER",1:"CHARACTER")
 E  I T["BOOLEAN" S T="FM_FLAG"
 E  I T["VARIABLE-POINTER" S T="VARIABLE_POINTER"
 E  I T["POINTER" S T="POINTER"
 E  I T["WORD-PROCESSING" S T="WORD_PROCESSING",W=80
 S F=$G(DEF("DESCRIPTION",1)) K DEF("DESCRIPTION")
 S DEF("DESCRIPTION")=$P(F,".")
 Q T_U_W_U_S
DM(F,FI,DEF) ;BUILD META-DATA FOR ONE FIELD (USE WHEN FIELD^DID FAILS!!)
 D ENV N CK,H,IT,SP,P,D,EX,LD,DP,TYP,DM,X
 K DEF S H=$G(^DD(F,FI,0)) Q:H="" ""
 S DEF("LABEL")=$P(H,U),(PE,DEF("GLOBAL SUBSCRIPT LOCATION"))=$P(H,U,4)
 S (IT,DEF("INPUT TRANSFORM"))=$P(H,U,5),(SP,DEF("SPECIFIER"))=$P(H,U,2)
 S DEF("DESCRIPTION")=$P($G(^DD(F,FI,21,1,0)),".")
 S (P,DEF("POINTER"))=$P(H,U,3),DEF("MULTIPLE-VALUED")=SP["M"!SP
 S D=$TR(SP,"aeAIMOn'X*","") ;IGNORE CHILD DESCRIPTORS
 S EX=$P($P(PE,";",2),"E",2)
 I EX F I=1:1 I $E(EX,I)?.A S EX=$E(EX,1,I-1) Q
 S LD=$P(D,"J",2),DP=+$P(LD,",",2) I LD,'DP S LD=+LD
 I LD="" S CK=$P(IT,"$L(X)>",2) I CK S LD=+CK
 I LD="",$P(EX,",",2) S LD=$P(EX,",",2)-EX+1
 S:DP LD=(+LD)_U_DP,DEF("DECIMAL DEFAULT")=DP
 I LD S DEF("FIELD LENGTH")=+LD,LD=U_LD
 S TYP=$S(DP:"N",D["N":"I",D["D":"D",D["P":"P",D["V":"V",D["B":"B",D["K":"K",D["S":"S",D["W":"W",1:"F")
 I TYP="N" S DM="NUMERIC"_LD,DEF("TYPE")="NUMERIC"
 E  I TYP="W" D
 . S DM="WORD_PROCESSING",LD="^80",DEF("TYPE")="WORD-PROCESSING"
 E  I TYP="P" S DM="POINTER",LD="^10",DEF("TYPE")="POINTER"
 E  I TYP="S" D  S DM="SET_OF_CODES"_LD,DEF("TYPE")="SET"
 . N I,X,W S W=1
 . F I=1:1:$L(P,":") S X=$L($P($P(";"_P,":",I),";",2)) S:X>W W=X
 . S LD=U_W
 E  I TYP="I" S DM="INTEGER"_LD,DEF("TYPE")="NUMERIC"
 E  I TYP="V" S DM="VARIABLE_POINTER",DEF("TYPE")="VARIABLE-POINTER"
 E  I TYP="B" S DM="FM_FLAG",DEF("TYPE")="BOOLEAN"
 E  I TYP="D" S X=$P($P($P(H,"^",5),"%DT=",2),"""",2) D
 . I X'["T",X'["R" S DM="FM_DATE"
 . E  I X["R" S DM="FM_DATE_TIME"
 . E  S DM="FM_MOMENT"
 . S DEF("TYPE")="DATE"
 E  I TYP="K" S DM="FM_MUMPS^245",DEF("TYPE")="MUMPS"
 E  S DM="CHARACTER"_$S(LD]"":LD,1:"(80)"),DEF("TYPE")="FREE TEXT"
 Q DM
KL(TI) ;RETURN IEN LIST OF TABLE
 N KL,P S KL=TI
 F  S P=$G(^DD(TI,0,"UP")) Q:P=""  S KL=P_","_KL,TI=P
 Q KL
PUT(I,A,E) ;FILE OR UPDATE
 ;GIVEN I=IEN AND A=FDA ARRAY RETURN IEN AND ERR
 K @E D ENV
 I I?1N.E D
 . D FILE^DIE("",A,E)
 E  D
 . N O D UPDATE^DIE("",A,"O",E) S I=$G(O(1))
 Q $S($D(@E):0,1:+I)
KWC(N) ;RETURN N AS A NON-KEYWORD
 I N]"",$D(^DMSQ("K","B",N)) N X,I S X=$$SQLI(N,25),N=X_1 D
 . F I=2:1 Q:'$D(^DMSQ("K","B",N))  S N=X_I ; AVOID KEYWORDS
 Q N
FNB(F,TI) ;BUILD SQL FILE NAME
 ;EXTRINSIC FUNCTION, ALL PARAMETERS REQUIRED & PASSED BY VALUE
 ;INPUT: F=FILEMAN FILE NUMBER, TI=SQLI IEN
 ;OUTPUT: STANDARD SQLI TABLE LABEL, UNIQUE BY SCHEMA, AND NOT
 ;        A KEY WORD
 N NM,F1,SP,P,I,X,J
 S NM="",F1=F,SP="" F  D  Q:'P
 . S P=$G(^DD(F1,0,"UP"))
 . I P S NM=$O(^DD(F1,0,"NM",""))_SP_NM,SP="_",F1=P
 S NM=$P($G(^DIC(F1,0)),"^")_SP_NM
 I NM=""!(NM["__")!($E(NM,$L(NM))="_")!(NM?1"_".E) Q ""
 F I=1:1:$L(NM,"_")-1 D
 . S X=$P(NM,"_",I)
 . F J=I+1:1:$L(NM,"_") S:$P(NM,"_",J)=X $P(NM,"_",J)=""
 S NM=$$SQLI(NM,26)
 F I=1:1 Q:'$D(^DMSQ("T","B",NM))!($O(^(NM,""))=TI)  S NM=NM_I
 Q $$KWC(NM)
CN(T,C,N) ;BUILD COLUMN NAME N UNIQUE BY TABLE T, COLUMN ELEMENT C
 ;EXTRINSIC FUNCTION, ALL PARAMETERS REQUIRED & PASSED BY VALUE
 ;INPUT: T=SQLI_TABLE EIN, C=SQLI_COLUMN EIN, N=FIELD NAME
 ;FIELD NAME ARE GENERATED FOR PRIMARY AND FOREIGN KEY COLUMNS
 ;OUTPUT: STANDARD SQLI COLUMN LABELS, UNIQUE BY TABLE, NOT KEYWORDS
 N I,X,% I N]"" D
 . S N=$$KWC($$SQLI(N,26)),%="",X=N
 . F I=1:1 S %=$O(^DMSQ("E","G",T,N,"")) Q:%=C!'%  S N=X_I
 Q N
SQLK(T,L) ;RETURN SQL IDENTIFIER NOT A KEYWORD
 ;EXTRINSIC FUNCTION, ALL PARAMETERS REQUIRED & PASSED BY VALUE
 ;SEE $$SQLI FOR DESCRIPTION OF INPUT/OUTPUT
 Q $$KWC($$SQLI(T,L))
SQLI(T,L) ;RETURN VALID SQL IDENTIFIER OF LENGTH L OR LESS BASED ON T
 ;EXTRINSIC FUNCTION, ALL PARAMETERS REQUIRED & PASSED BY VALUE
 ;INPUT: T=FREE TEXT, L=MAXIMUM OUTPUT LENGTH
 ;OUTPUT: AN SQLI STANDARD SQL IDENTIFIER
 N I,PL,T1
 I $TR(T,"_")?.UN,$L(T)'>L G SQLIX ;SKIP PROCESSING FOR SIMPLE CASE
 ;CONVERT LOWER TO UPPER CASE, MOST PUNCTUATION TO UNDERLINES
 S T=$TR(T," -abcdefghijklmnopqrstuvwxyz!@#$%^&*()_-+=|\}]{[:;""'?/>.<,~`","__ABCDEFGHIJKLMNOPQRSTUVWXYZ_________________________________")
 ;REMOVE DOUBLE UNDERLINES
 F  Q:T'["__"  S T=$P(T,"__")_"_"_$P(T,"__",2,99)
 I T?1"_".E S T=$E(T,2,999) ;REMOVE INITIAL UNDERLINE
 I $E(T,$L(T))="_" S T=$E(T,1,$L(T)-1) ;REMOVE TRAILING UNDERLINE
 ;COMPRESSION
 I $L(T)>L D
 . S PL=$L(T,"_") ;1) REDUCE SIZE OF _ PIECES
 . F I=PL-1:-1:2,PL,1 S $P(T,"_",I)=$$SQZ($P(T,"_",I)) Q:$L(T)'>L
 ;2) CONVERT _ PIECES TO INITIAL LETTERS
 I $L(T)>L F I=PL-1:-1:2,PL,1 S $P(T,"_",I)=$E($P(T,"_",I)) Q:$L(T)'>L
 ;3) COMPRESS OVERHANG INTO ONE ALPHA-NUMBERIC CHARACTER
 I $L(T)>L S T=$E(T,1,L-1)_$TR($E(T,L,999),"_")
SQLIX F  Q:$E(T,$L(T))'="_"  S $E(T,$L(T))="" ;REMOVE TRAILING _S
 F  Q:$E(T)'="_"  S $E(T)="" ;REMOVE LEADING _S
 I T?1N.E S T="N"_T ;AVOID INITIAL DIGIT
 I $L(T)>L S T=$E(T,1,$S($E(T,L)="_":L-1,1:L)) ;4) JUST TRUNCATE IT
 Q T
SQZ(T) ;RETURN MNEMONIC VALUE OF T
 I $L(T)>5 S T=$E(T,1,4) S:"AEIOU"[$E(T,4) T=$E(T,1,3)
 Q T
ROOT(F) ;GET GLOBAL NAME SYNTAX FOR A SUBFILE (F)
 N G,P,FI
 S G="{K})" F  D  Q:G["^"
 . S P=$G(^DD(F,0,"UP"))
 . I P D
 . . S FI=$O(^DD(P,"SB",F,""))
 . . I FI S F=P,G="{K},"_$$SS($P($P(^DD(F,FI,0),"^",4),";"))_","_G
 . . E  S G="^"
 . E  I $D(^DIC(F,0,"GL")) S G=^("GL")_G
 . E  S G="^"
 Q G
SS(T) ;CONVERT T TO A VALID SUBSCRIPT (QUOTES)
 I T?1N.N
 E  I T?.N1"."1N.N
 E  S T=$C(34)_T_$C(34)
 Q T
FIL(SF) ;EXTRINSIC FUNCTION RETURNS FILE CONTAINING FILE OR SUBFILE SF
 N F F  S F=SF,SF=$G(^DD(SF,0,"UP")) Q:SF=""
 Q $S($D(^DIC(F,0)):F,1:"")
TBL(TI) ;EXTRINSIC FUNCTION RETURNS TABLE CONTAINING TABLE OR SUBTABLE TI
 N F S F=$P($G(^DMSQ("T",TI,0)),U,7)
 I F S F=$$FIL(F) I F S F=$O(^DMSQ("T","C",F,""))
 Q F
