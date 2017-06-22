DDSVALM ;SFISC/MKO-PUT FOR MULTIPLES (SELECT PROMPT) ;10:45 AM  9 Sep 1994
 ;;22.2;VA FileMan;;Jan 05, 2016;Build 42
 ;;Per VA Directive 6402, this routine should not be modified.
 ;;Submitted to OSEHRA 5 January 2015 by the VISTA Expertise Network.
 ;;Based on Medsphere Systems Corporation's MSC FileMan 1051.
 ;;Licensed under the terms of the Apache License, Version 2.0.
 ;
MULT ;Put multiple or wp field
 N DDSVDIC,DDSVDV,DDSVND,DDSVPC,DDSVSUB
 S DDSVPC=$P(DDSV0,U,4),DDSVND=$P(DDSVPC,";"),DDSVPC=$P(DDSVPC,";",2)
 S DDSVSUB=+DDSV02 Q:$D(^DD(DDSVSUB,.01,0))[0
 S DDSVDV=DDSVSUB_$P(^DD(DDSVSUB,.01,0),U,2),X=$P(^(0),U,3)
 S DDSVDIC=DIE_DA_","""_DDSVND_""","
 ;
 I DDSVDV["W" D PUTWP
 I DDSVDV'["W" D PUTMULT
 Q
 ;
PUTMULT ;Put for multiples
 N DDSVRN
 S DDSVRN=$S(DDSVAL="FIRST":$O(@(DDSVDIC_"0)")),DDSVAL="LAST":$O(@(DDSVDIC_""" "")"),-1),1:+$G(DDSVAL))
 ;
 K Y S Y="",Y(0)=""
 I DDSVRN>0,$D(@(DDSVDIC_+DDSVRN_",0)"))#2 S Y(0)=$P(^(0),U) D
 . I DDSVDV["O"!(DDSVDV["P")!(DDSVDV["V")!(DDSVDV["D")!(DDSVDV["S") D
 .. S Y(0)=$$EXTERNAL^DILFD(DDSVSUB,.01,"",DDSVRN)
 . S Y=DDSVRN
 ;
 S:'$D(@DDSREFT@("F"_DDP,DDSVDA,DDSFLD,"M")) ^("M")=1_DDSVDIC_U_DDSVSUB
 D UPDATE^DDSVAL(DDP,DDSVDA,.DA,DDSFLD,DDSPG,.Y)
 Q
 ;
PUTWP ;File wp field from @DDSVAL into @DDSREFT
 N DDSTMP
 S DDSTMP=$NA(@DDSREFT@("F"_DDP,DDSDA))
 ;
 I DDSVAL]"",$D(@DDSVAL) D  Q:$G(DIERR)
 . D PUTWP^DIEFW($E("A",DDSPARM["A"),DDSVAL,$NA(@DDSTMP@(DDSFLD,"D")))
 E  K @DDSTMP@(DDSFLD,"D")
 ;
 S:$D(@DDSTMP@(DDSFLD,"M"))[0 ^("M")="0"_DDSVDIC_U_DDSVSUB
 S:$D(@DDSTMP@("GL"))[0 ^("GL")=DIE
 S (DDSCHG,@DDSTMP@(DDSFLD,"F"))=3
 Q
 ;
GETWP ;Merge wp field into ^TMP, return root in DDSANS
 N DDSGL
 S DDSGL=DIE_DA_","""_DDSVND_""","
 S DDSANS=$NA(^TMP("DDSWP",$J,DDP,DDSDA,DDSFLD))
 ;
 K @DDSANS
 M:$D(@(DDSGL_"0)"))#2 @DDSANS=@($E(DDSGL,1,$L(DDSGL)-1)_")")
 Q
 ;
REL(DDP,DA,DDSFLD,DDSPARM) ;Relational syntax
 N DDSCD,DDSI,X
 D DD^DDSPTR(DDP,DDSFLD,"",.DDSCD,"",DDSPARM["I"+1)
 F DDSI=1:1:DDSCD X DDSCD(DDSI)
 Q X
 ;
ERR(DDSVEP) ;Print error messages
 Q:'$G(DIERR)
 I '$D(DDS) D MSG^DIALOG("BW") Q
 N DDSVMSG
 S DDSER=DIERR
 D BLD^DIALOG(3031,DDSVEP,"","DDSVMSG")
 D MSG^DDSMSG(DDSVMSG(1)),ERR^DDSMSG
 Q
