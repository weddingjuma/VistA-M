XDRDVAL2 ;SF-IRMFO.SEA/JLI - IDENTIFY FIELDS THAT NEED CHECKING FOR MERGE ;02/07/2000  09:55
 ;;7.3;TOOLKIT;**23,34,36,42,45,77**;Apr 25, 1995
 ;;
 Q
 ;
CHKMERG(FILENUM,IENFROM,IENTO,ARRAY) ;
 N XDRDVALF
 S XDRDVALF=1
 S FILE=FILENUM D SETUP^XDRMERG(2)
 D CHKFMERG(FILE,IENFROM,IENTO,ARRAY)
 S XGLOB="" F  S XGLOB=$O(^TMP($J,"XGLOB",XGLOB)) Q:XGLOB=""  D
 . I $P($G(^TMP($J,"XGLOB",XGLOB,0,1)),U,3)="DINUM" S F=$P(^(1),U) D CHKFMERG(F,IENFROM,IENTO,ARRAY)
 Q
 ;
CHKFMERG(XFILNO,IENFROM,IENTO,LOCATION) ; CHECK VALIDITY FOR MERGE OF TWO ENTRIES IN FILE
 N F,FILE,FILENUM,XGLOB,NODE,NODE1,NODE2,NODEA,SFILE,XDRFROM,XDRTO,NODEA,VALUE,XVALUE,XDRXX,NODEB,DIK,DA,I,Y,VREF,XNN,IENTOSTR,DFN,XDRZZ
 N XDRAA ; DEBUG STATEMENT
 ;
 S XDRDIC=$G(^DIC(XFILNO,0,"GL")) Q:XDRDIC=""
 S IENTOSTR=IENTO_","
 S DFN=IENTO
 ;
 ; CHECK FOR BROKEN LR NODES IF PATIENT FILE
 ;
 ; FOLLOWING LINE MODIFIED TO INCLUDE IDENTIFIED PROBLEMS IN OUTPUT - JLI 03/23/99
 I XFILNO=2 F I=IENFROM,IENTO S J=$G(^DPT(I,"LR")) I J>0,($P(^LR(J,0),U,2)'=2)!($P(^LR(J,0),U,3)'=I) S @LOCATION@(2,(I_","),63,"INVALID")="Broken ""LR"" node pointers for PATIENT file and LAB DATA FILE - DFN="_I_"   LRFN="_J
 ;
 ; NOW MERGE DATA GOING NODE BY NODE
 ;
 S NODE=""
 F  D  Q:NODE=""
 . S NODE1=$O(@(XDRDIC_IENFROM_","""_NODE_""")"))
 . I NODE1="" S NODE="" Q  ; NOTHING MORE TO MOVE OVER
 . S NODE2=$O(@(XDRDIC_IENTO_","""_NODE_""")"))
 . I NODE2'="",NODE1]NODE2 S NODE=NODE2 Q  ; NODE ON TO, BUT NOT ON FROM - GO TO NEXT
 . S NODE=NODE1
 . I $D(@(XDRDIC_IENFROM_","""_NODE_""")"))=1 D  Q  ; SINGLE NODE, MERGE DATA
 . . I NODE2]NODE1!(NODE2="") D  Q  ;  MISSING NODE, JUST MOVE IT OVER
 . . . N XDRXX,FLD,N,J
 . . . F N=0:0 S N=$O(^DD(XFILNO,"GL",NODE,N)) Q:N'>0  S FLD=$O(^(N,0)) I $O(^DD(XFILNO,FLD,1,0))>0 D
 . . . . S X=0 F J=0:0 S J=$O(^DD(XFILNO,FLD,1,J)) Q:J'>0  I $O(^(J,0))>0 S X=1 Q
 . . . . I X>0 D
 . . . . . S XDRXX(XFILNO,IENTOSTR,FLD)=$$GETEXT(XDRDIC,IENFROM,XFILNO,FLD)
 . . . I $D(XDRXX) D CHEKFDA("XDRXX",LOCATION)
 . . I $D(@(XDRDIC_IENTO_","""_NODE_""")"))>1 Q  ; MISMATCH SKIP
 . . N XDRXX,FLD
 . . S X1=@(XDRDIC_IENFROM_","""_NODE_""")")
 . . S (X2,X3)=@(XDRDIC_IENTO_","""_NODE_""")")
 . . F XDRI=1:1 Q:X1=""  S X=$P(X1,U),X1=$P(X1,U,2,999) I X'="" D
 . . . S Y=$P(X2,U,XDRI)
 . . . I Y=""  D
 . . . . S $P(X2,U,XDRI)=X
 . . . . S FLD=$O(^DD(XFILNO,"GL",NODE,XDRI,0)) S JXFLD=FLD
 . . . . I FLD>0,$O(^DD(XFILNO,FLD,1,0))>0 S XDRXX(XFILNO,IENTOSTR,FLD)=$$GETEXT(XDRDIC,IENFROM,XFILNO,FLD)
 . . I X2'=X3 D
 . . . I $D(XDRXX) D
 . . . . N X2 D CHEKFDA("XDRXX",LOCATION)
 . ;
 . ; THE FOLLOWING HANDLES NODES THAT HAVE MULTIPLES
 . ;
 . S XDRFROM=XDRDIC_IENFROM_","""_NODE_""","
 . S XDRTO=XDRDIC_IENTO_","""_NODE_""","
 . I NODE="DIS",XFILNO=2 Q
 . S IENTOSTR=IENTO_","
 . D CHKSUBS(XDRFROM,XDRTO,IENTOSTR,IENTO)
 Q
 ;
CHKSUBS(XDRFROM,XDRTO,IENTOSTR,XDRDASEQ) ;
 N NODEA,SFILE,VALUE,XVALUE,XDRXX,XDRYY,YVALUE,XENTOSTR
 N XDRAA,XDRZZ ; DEBUG STATEMENT
 S SFILE=+$P($G(@(XDRFROM_"0)")),U,2)
 I SFILE'>0 Q  ; NO FILE NUMBER, NOT FILE MANAGER COMPATIBLE
 I $P($G(^DD(SFILE,.01,0)),U,2)["W" Q  ; HANDLE WORD PROCESSING FIELDS
 F NODEA=0:0 S NODEA=$O(@(XDRFROM_NODEA_")")) Q:NODEA'>0  D
 . S VALUE=$P($G(@(XDRFROM_NODEA_",0)")),U) ; GET .01 VALUE
 . N XDRDT S XDRDT=^DD(SFILE,.01,0)
 . I $P(XDRDT,U,2)["D" S XDRDT=$P(XDRDT,U,5,999),XDRDINUM=$S(XDRDT["DINUM":1,1:0) I XDRDINUM S XDRDT=0 D DINUMDAT Q:XDRDT  ; HANDLE DINUMED DATES BY SIMPLY MOVING THEM
 . S YVALUE=0,XVALUE=0 I $D(^DD(SFILE,.001,0)) S YVALUE=NODEA I $D(@(XDRTO_NODEA_")")) S XVALUE=YVALUE
 . I XVALUE=0,$P(^DD(SFILE,.01,0),U,5,99)["DINUM",$D(@(XDRTO_NODEA_")")) S XVALUE=NODEA
 . I XVALUE=0 S XVALUE=+$$FIND1^DIC(SFILE,(","_IENTOSTR),"Q",VALUE) ; FIND CURRENT ENTRY NUMBER, IF PRESENT
 . I XVALUE>0 D  Q  ; SUBFILE EXISTS IN IENTO, CHECK FOR LOWER SUBFILES
 . . N X,X1,NODE,NEWFROM,NEWTO,NEWTOIEN
 . . S NODE=""
 . . F  S NODE=$O(@(XDRFROM_NODEA_","""_NODE_""")")) Q:NODE=""  D
 . . . I $D(@(XDRFROM_NODEA_","""_NODE_""")"))'>1 Q
 . . . S NEWFROM=XDRFROM_NODEA_","""_NODE_""","
 . . . S NEWTO=XDRTO_XVALUE_","""_NODE_""","
 . . . S NEWTOIEN=XVALUE_","_IENTOSTR
 . . . D CHKSUBS(NEWFROM,NEWTO,NEWTOIEN,(XVALUE_U_XDRDASEQ))
 . K XDRYY I YVALUE>0 S XDRYY(1)=YVALUE
 . S XENTOSTR="+1,"_IENTOSTR
 . S XDRFILTY=$P($G(^DD(SFILE,.01,0)),U,2)
 . ;I XDRFILTY["P",SFILE'=2.011 S VALUE="`"_VALUE
 . ;I XDRFILTY["V" D
 . ;. N Y S Y=$P(VALUE,";",2) Q:Y=""
 . ;. S Y=$P($G(@("^"_Y_"0)")),U) Q:Y=""
 . ;. S VALUE=Y_".`"_(+VALUE)
 . ;. Q
 . I (XDRFILTY["P")!(XDRFILTY["V")!(XDRFILTY["D") Q  ; HANDLE AS INTERNAL VALUES ;  JLI 9-1-99
 . I SFILE=2.011 Q  ; SPECIAL HANDLING ;  JLI 9-1-99
 . S XDRXX(SFILE,XENTOSTR,.01)=$$GETEXT(XDRFROM,NODEA,SFILE,.01)
 . D CHEKFDA("XDRXX",LOCATION)
 . F XDRID=0:0 S XDRID=$O(^DD(SFILE,0,"ID",XDRID)) Q:XDRID'>0  D
 . . Q:$P(^DD(SFILE,XDRID,0),U,2)'["R"
 . . S VALUE=$$GETEXT(XDRFROM,NODEA,SFILE,XDRID)
 . . I VALUE="" W !,"PROBLEM WITH IDENTIFIER  FILE=",SFILE,"  IENSTR=",XENTOSTR,"   FIELD=",XDRID
 Q
 ;
GETEXT(DICA,DA,FILNUM,FIELD,TYPE) ; GET EXTERNAL VALUE FOR .01 FIELD
 N DIC,DIQ,DR,XDRQ,TEMP
 I $G(FIELD)="" S FIELD=.01
 I $G(TYPE)="" S TYPE="E"
 S DIC=DICA,DIC("P")=FILNUM,DR=FIELD,DIQ="XDRQ",DIQ(0)="I"
 D EN^DIQ1
 S TEMP=$G(XDRQ(FILNUM,DA,FIELD,"I")) I TEMP="" Q ""
 S DIC=DICA,DIC("P")=FILNUM,DR=FIELD,DIQ="XDRQ",DIQ(0)="E" K XDRQ
 D EN^DIQ1
 Q TEMP_U_$G(XDRQ(FILNUM,DA,FIELD,"E"))
 Q $G(XDRQ(FILNUM,DA,FIELD,TYPE))
 ;
DINUMDAT ; PROCESS ENTRIES WITH SAMPLE DATE/TIMES WITH SECONDS, NEEDS DINUM
 I $D(@(XDRTO_NODEA_")")) Q
 S XDRDT=1
 Q
 ;
CHEKFDA(FDA,LOCATION) ;
 N FILE,IENS,FIELD,VAL,VALEXT
 F FILE=0:0 S FILE=$O(@FDA@(FILE)) Q:FILE'>0  D
 . S IENS="" F  S IENS=$O(@FDA@(FILE,IENS)) Q:IENS=""  D
 . . F FIELD=0:0 S FIELD=$O(@FDA@(FILE,IENS,FIELD)) Q:FIELD'>0  D
 . . . S VAL=@FDA@(FILE,IENS,FIELD),VALEXT=$P(VAL,U,2),VAL=$P(VAL,U) I VAL="" Q
 . . . I FILE=2,FIELD=.09 Q  ; SSN NUMBER IS ENTERED AS INTERNAL
 . . . I FILE=2,$P(^DD(FILE,FIELD,0),U,5,99)["DGLOCK2" Q  ; no NOK check
 . . . I FILE=70.03,FIELD=.01 Q  ; TIES UP EVERYTHING... ;  JLI 9-1-99
 . . . I FILE=354,FIELD=.03!(FIELD=.05) Q  ; THIS ONE IS TOUGH, DON'T WORRY ABOUT IT
 . . . I FILE=2,FIELD=63 Q  ; LAB DATA POINTER HAS SPECIAL PROCESSING
 . . . I FILE=161,FIELD=.5 Q  ; FB has special processing, JDS XT*7.3*77, 8/5/03
 . . . S MESGROOT=$NA(^TMP($J,"MESG")) K @MESGROOT
 . . . D CHKVALID^XDRDVAL(MESGROOT,FILE,IENS,FIELD,VALEXT,VAL)
 . . . I $D(@MESGROOT) M @LOCATION=@MESGROOT K @MESGROOT
 . . . Q
 . . Q
 . Q
 Q
