TIUSRVL1 ; SLC/JER - Server functions for lists ;7/9/96  12:47
 ;;1.0;TEXT INTEGRATION UTILITIES;;Jun 20, 1997
NOTES(TIUY,DFN,EARLY,LATE,ROOTFLAG) ; Gets list of Notes
 I $S(+$G(DFN)'>0:1,'$D(^DPT(+$G(DFN),0)):1,1:0) Q
 D LIST(.TIUY,DFN,3,$G(EARLY),$G(LATE),$G(ROOTFLAG))
 Q
SUMMARY(TIUY,DFN,EARLY,LATE,ROOTFLAG) ; Gets list of Summaries
 I $S(+$G(DFN)'>0:1,'$D(^DPT(+$G(DFN),0)):1,1:0) Q
 D LIST(.TIUY,DFN,244,$G(EARLY),$G(LATE),$G(ROOTFLAG))
 Q
CONSULT(TIUY,DFN,EARLY,LATE,ROOTFLAG) ; Gets list of Consults
 I $S(+$G(DFN)'>0:1,'$D(^DPT(+$G(DFN),0)):1,1:0) Q
 D LIST(.TIUY,DFN,243,$G(EARLY),$G(LATE),$G(ROOTFLAG))
 Q
LIST(TIUY,DFN,TYPE,EARLY,LATE,ROOTFLAG) ; Build List
 N TIUCNT,TIUDT,TIUI,TIUJ,TIUK,TIUP,TIUQ,TIUIFN,TIUREC,TIUPRM0,TIUPRM1
 N TIUPRM3,TIUT,TIUTP,TIUS,TIUCONT
 K ^TMP("TIULIST",$J),^TMP("TIUI",$J)
 I '$D(TIUPRM0) D SETPARM^TIULE
 I +$D(TYPE)'>0 S TIUY=0 Q
 S EARLY=9999999-+$G(EARLY),LATE=9999999-$S(+$G(LATE):+$G(LATE),1:3333333)
 S TIUI=0
 F  S TIUI=$O(^TIU(8925,"APTCL",DFN,TYPE,TIUI)) Q:TIUI'>0!(TIUI>EARLY)  D
 . D GATHER(TYPE,TIUI)
 S TIUY=$NA(^TMP("TIULIST",$J))
 I +$O(^TMP("TIULIST",$J,0)) S (TIUI,TIUK)=0
 F  S TIUI=$O(^TMP("TIULIST",$J,TIUI)) Q:+TIUI'>0  D
 . S TIUJ=0 F  S TIUJ=$O(^TMP("TIULIST",$J,TIUI,TIUJ)) Q:+TIUJ'>0  D
 . . S TIUK=TIUK+1
 . . S ^TMP("TIULIST",$J,TIUK)=$G(^TMP("TIULIST",$J,TIUI,TIUJ))
 . . S ^TMP("TIULIDX",$J,TIUI,TIUJ)=TIUK K ^TMP("TIULIST",$J,TIUI,TIUJ)
 . . S:+$G(ROOTFLAG) $P(^TMP("TIULIST",$J),U)=TIUK
 . . S:TIUK=1&+$G(ROOTFLAG) $P(^TMP("TIULIST",$J),U,3)=(9999999-TIUI)
 . . S:+$G(ROOTFLAG) $P(^TMP("TIULIST",$J),U,2)=(9999999-TIUI)
 Q
GATHER(TYPE,TIUI) ; Find/sort records for the list
 N TIUDA
 S TIUDA=0
 F  S TIUDA=$O(^TIU(8925,"APTCL",DFN,TYPE,TIUI,TIUDA)) Q:+TIUDA'>0  D
 . I +$$CANDO^TIULP(TIUDA,"VIEW")'>0 Q
 . D ADDELMNT(TIUDA,.TIUCNT)
 Q
ADDELMNT(DA,TIUCNT) ; Add each element to the list
 N DOC,LOC,PT,AUT,EDT,TIUPT,TIULST4,TIUREC,TIUR0,TIUR12,TIUR13
 N STATUS,EDTCNT,LOCTYP,TIUADT,TIUDDT
 S TIUR0=$G(^TIU(8925,+DA,0)),TIUR12=$G(^TIU(8925,+DA,12))
 S TIUR13=$G(^TIU(8925,+DA,13)),TIUPT=$G(^DPT(+$P(TIUR0,U,2),0))
 S DOC=$$PNAME^TIULC1(+TIUR0)
 I DOC="Addendum" S DOC=DOC_" to "_$$PNAME^TIULC1(+$G(^TIU(8925,+$P(TIUR0,U,6),0)))
 S STATUS=$$LOWER^TIULS($P(^TIU(8925.6,+$P(TIUR0,U,5),0),U))
 S LOC=$G(^SC(+$P(TIUR12,U,5),0)),LOCTYP=$P(LOC,U,3),LOC=$P(LOC,U)
 S TIUADT=$S(LOCTYP="W":"Adm: ",1:"Visit: ")_$$DATE^TIULS($P(TIUR0,U,7),"MM/DD/YY")
 S TIUDDT=$S(+$P(TIUR0,U,8):"Dis: ",1:"")_$$DATE^TIULS($P(TIUR0,U,8),"MM/DD/YY")
 S PT=$$NAME^TIULS($P(TIUPT,U),"LAST, FIRST MI")
 S TIULST4=$E($P(TIUPT,U,9),6,9)
 S TIULST4="("_$E(PT)_TIULST4_")"
 S AUT=$$SIGNAME^TIULS(+$P(TIUR12,U,2))
 S EDT=+TIUR13,EDTCNT=+$G(EDTCNT)+1
 F  Q:+$D(^TMP("TIULIST",$J,9999999-EDT,EDTCNT))'>0  S EDTCNT=EDTCNT+1
 S TIUCNT=+$G(TIUCNT)+1
 S TIUREC=DA_U_DOC_U_EDT_U_PT_" "_TIULST4_U_AUT_U_LOC_U_STATUS_U_TIUADT_U_TIUDDT
 S ^TMP("TIULIST",$J,9999999-EDT,EDTCNT)=TIUREC
 ;S TIUY(TIUCNT)=TIUREC
 Q
DOCTYPE(TIUY,DA,TYPE,TIUK) ; Get all descendent's of a given type
 N I,J,X,CURTYP,Y
 ; TIUK is STATIC
 S TIUK=+$G(TIUK)
 I $G(TYPE)']"" S TYPE="DOC"
 S CURTYP=$P(^TIU(8925.1,+DA,0),U,4)
 S TYPMATCH=$$TYPMATCH^TIULA1(TYPE,CURTYP)
 I +TYPMATCH S TIUK=+$G(TIUK)+1,TIUY(TIUK)=+DA_U_$$PNAME^TIULC1(+DA)
 S I=0 F  S I=$O(^TIU(8925.1,+DA,10,I)) Q:+I'>0  D
 . N J
 . S J=+$G(^TIU(8925.1,+DA,10,+I,0)) Q:+J'>0
 . D DOCTYPE(.TIUY,+J,TYPE,.TIUK)
 Q
STATUS(TIUY,STATUS,INCLDESC) ; Get statuses
 N TIUI,TIUS,TIUSTAT S STATUS=$G(STATUS,"ALL")
 I STATUS'="ALL" D  Q
 . S TIUS=$O(^TIU(8925.6,"B",STATUS,0)) Q:+TIUS'>0
 . S TIUSTAT=$P($G(^TIU(8925.6,+TIUS,0)),U)
 . I $P(^TIU(8925.6,+TIUS,0),U,4)'="DEF" S TIUY(1)=TIUS_U_$$LOWER^TIULS(TIUSTAT)
 S STATUS=""
 F  S STATUS=$O(^TIU(8925.6,"B",STATUS)) Q:STATUS']""  D
 . S TIUS=0
 . F  S TIUS=$O(^TIU(8925.6,"B",STATUS,TIUS)) Q:+TIUS'>0  D
 . . S TIUI=+$G(TIUI)+1,TIUSTAT=$P($G(^TIU(8925.6,+TIUS,0)),U)
 . . I $P(^TIU(8925.6,+TIUS,0),U,4)'="DEF" D
 . . . S TIUY(TIUI)=TIUS_U_$$LOWER^TIULS(TIUSTAT)
 . . . I +$G(INCLDESC) D
 . . . . N TIUJ S TIUJ=0
 . . . . F  S TIUJ=$O(^TIU(8925.6,+TIUS,1,TIUJ)) Q:+TIUJ'>0  D
 . . . . . S TIUY(TIUI,1,TIUJ)=$G(^TIU(8925.6,+TIUS,1,+TIUJ,0))
 Q
