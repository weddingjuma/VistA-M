TIUMAPR ; SLC/JER - Title Mapping Review Screen Actions ;7/6/06  12:20
 ;;1.0;TEXT INTEGRATION UTILITIES;**211**;Jun 20, 1997;Build 26
MAP ; Map one or more Local TIU Titles to VHA Enterprise Standard Titles
 N TIUDA,TIUDATA,TIUI,DIROUT,TIUDI,TIUOUT
 I '$D(VALMY) D EN^VALM2(XQORNOD(0))
 S TIUI=0
 F  S TIUI=$O(VALMY(TIUI)) Q:+TIUI'>0  D  Q:$D(DIROUT)
 . N VALMY,LINE,DIRUT
 . S TIUDATA=$G(^TMP("TIUMLISTIDX",$J,TIUI))
 . W !!,"Mapping Title #",TIUI
 . S TIUDA=+$P(TIUDATA,U,2)
 . D FULL^VALM1,MAP^TIUMAP(TIUDA,$P(TIUDATA,U,3))
 . D SETLSTEL^TIUMLIST(TIUDA,TIUI)
 . S LINE=+$O(@VALMAR@("PICK",TIUI,0))
 . D RESTORE^TIULM(LINE),CNTRL^VALM10(LINE,6,VALM("RM"),IOINHI,IOINORM)
 . D CNTRL^VALM10(LINE+1,6,VALM("RM"),IOINHI,IOINORM)
 W !,"Refreshing the list."
 ; Need to poke in update
 K VALMY S:'$D(VALMBCK) VALMBCK="R"
 Q
DIRECT ; Direct mapping without assistance
 N TIUDA,TIUDATA,TIUI,DIROUT,TIUDI,TIUOUT
 I '$D(VALMY) D EN^VALM2(XQORNOD(0))
 S TIUI=0
 F  S TIUI=$O(VALMY(TIUI)) Q:+TIUI'>0  D  Q:$D(DIROUT)
 . N VALMY,LINE,DIRUT
 . S TIUDATA=$G(^TMP("TIUMLISTIDX",$J,TIUI))
 . W !!,"Mapping Title #",TIUI
 . S TIUDA=+$P(TIUDATA,U,2)
 . D FULL^VALM1,DIRECT^TIUMAP2(TIUDA)
 . D SETLSTEL^TIUMLIST(TIUDA,TIUI)
 . S LINE=+$O(@VALMAR@("PICK",TIUI,0))
 . D RESTORE^TIULM(LINE),CNTRL^VALM10(LINE,6,VALM("RM"),IOINHI,IOINORM)
 . D CNTRL^VALM10(LINE+1,6,VALM("RM"),IOINHI,IOINORM)
 W !,"Refreshing the list."
 ; Need to poke in update
 K VALMY S:'$D(VALMBCK) VALMBCK="R"
 Q
