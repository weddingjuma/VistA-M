DDS41 ;SFISC/MKO-VERIFY DATA ;2015-01-02  5:02 PM
 ;;22.2;VA FileMan;;Jan 05, 2016;Build 42
 ;;Per VA Directive 6402, this routine should not be modified.
 ;;Submitted to OSEHRA 5 January 2015 by the VISTA Expertise Network.
 ;;Based on Medsphere Systems Corporation's MSC FileMan 1051.
 ;;Licensed under the terms of the Apache License, Version 2.0.
 ;
 N DDO,DIERR
 N DDS4B,DDS4DA,DDS4DONE,DDS4ERR,DDS4FLD,DDS4OUT,DDS4PG,DDS4PG1,DDS4TP
 N DDSCAP,DDSERROR,DDSFDA,DDSI,DDSKEY,DDSPID,DDSREQ
 ;
 S DDS4OUT=$NA(@DDSREFT@("VALMSG"))
 S DDS4PG=DDSPG
 ;
 K @DDS4OUT,@DDSREFT@("MSG"),@DDSREFT@("KMSG")
 ;
 I $G(DDSPTB)_$G(DDSREP)]"" N DIE,DDP,DDSDA,DA,DDSDL D
 . S DA=+DDSDAORG,DDSDL=DDSDLORG,DDSDA=DA_"," ;GFT
 . F DDSI=1:1:DDSDL S DA(DDSI)=DDSDAORG(DDSI),DDSDA=DDSDA_DA(DDSI)_","
 . S DDP=$P($G(DDSFLORG),U),DIE=U_$P($G(DDSFLORG),U,2) S:DIE=U DIE=""
 ;
 D LDALL
 I $G(DIERR) D  G END
 . N P
 . S P(1)=$P($G(^DIST(.403,+DDS,40,DDSPG,0)),U),P(2)=$P($G(^(1)),U)
 . S:P(2)="" P(2)="unnamed"
 . D BLD^DIALOG(3041,.P),ERR^DDSMSG
 . S DDS4ERR=1
 ;
 D LP
 ;
 ;Validate keys
 S DDSKEY=1
 I $D(DDSFDA) D
 . S DDSKEY=$$KEYVAL^DIE("","DDSFDA",$NA(@DDSREFT@("KMSG")))
 . I 'DDSKEY,$D(DDS4ERR)[0 S DDS4ERR=1 D BLD^DIALOG(3091,"","",DDS4OUT,"S")
 ;
 S DDSPG=DDS4PG
 I '$G(DDS4ERR),$G(^DIST(.403,+DDS,20))'?."^" X ^(20) ;DATA VALIDATION
 I $G(@DDSREFT@("MSG"))>0!$G(DDS4ERR)!'DDSKEY D PRNT
 ;
END S Y='$D(DDSERROR)&'$G(DDS4ERR)&$G(DDSKEY) ;BRX-0903-10662
 K @DDS4OUT,@DDSREFT@("MSG"),@DDSREFT@("KMSG")
 Q
 ;
LDALL ;Load all pages
 S DX=0,DY=IOSL-1 X IOXY
 W "..."_$P(DDGLCLR,DDGLDEL) ;**'PLEASE WAIT'
 S (DDSPG,DDS4PG1)=$O(^DIST(.403,+DDS,40,"B",$S($G(DDSPAGE)]"":DDSPAGE,1:1),""))
 S Y=1
 F  D EN^DDS1(DDSPG) Q:$G(DIERR)  S DDSPG=$$NP^DDS5(.Y) Q:DDSPG=DDS4PG1!'Y
 Q
 ;
LP ;Loop through all pages/blocks
 N DDP
 S DX=0,DY=IOSL-1 X IOXY
 W "..."_$P(DDGLCLR,DDGLDEL) ;**'VERIFYING'
 ;
 S DDSPG=0 F  S DDSPG=$O(@DDSREFT@(DDSPG)) Q:'DDSPG  D
 . S DDS4B=0 F  S DDS4B=$O(@DDSREFT@(DDSPG,DDS4B)) Q:'DDS4B  D
 .. Q:$D(DDS4DONE(DDS4B))  Q:$P(@DDSREFS@(DDSPG,DDS4B),U,5)'="e"
 .. S DDSPID=$S($P($G(^DIST(.403,+DDS,40,DDSPG,1)),U)]"":$P(^(1),U),1:"Page "_$P(^(0),U))
 .. S DDS4DONE(DDS4B)="",DDP=$P(^DIST(.404,DDS4B,0),U,2)
 .. S DDO=0 F  S DDO=$O(^DIST(.404,DDS4B,40,DDO)) Q:'DDO  D VF
 Q
 ;
VF ;Check required and key fields
 Q:$D(^DIST(.404,DDS4B,40,DDO,0))[0  S DDS4TP=$P(^(0),U,3)
 Q:DDS4TP=1  Q:DDS4TP=4
 S DDSCAP=$P(^DIST(.404,DDS4B,40,DDO,0),U,2)_$S($P(^(0),U,4)]"":" ("_$P(^(0),U,4)_")",1:"")
 S DDSREQ=$P($G(^DIST(.404,DDS4B,40,DDO,4)),U)
 S DDSKEY=0
 ;
 I DDS4TP=2 N DDP D
 . S DDP=0,DDS4FLD=DDO_","_DDS4B
 . S:DDSCAP="" DDSCAP=$P(^DIST(.404,DDS4B,40,DDO,0),U,5)
 ;
 E  D  Q:DDS4FLD'=+$P(DDS4FLD,"E")
 . S DDS4FLD=$G(^DIST(.404,DDS4B,40,DDO,1))
 . I $G(^DD(DDP,DDS4FLD,0))?."^" S DDS4FLD="" Q
 . S:DDSCAP="" DDSCAP=$$LABEL^DIALOGZ(DDP,DDS4FLD) ;FOR SOME REASON, HE USED TO GRAB TITLE, IF PRESENT!
 . S:DDSREQ="" DDSREQ=$P(^DD(DDP,DDS4FLD,0),U,2)["R"
 . S DDSKEY=$D(^DD("KEY","F",DDP,DDS4FLD))>0
 ;
 S DDS4DA=" "
DAS F  S DDS4DA=$O(@DDSREFT@(DDSPG,DDS4B,DDS4DA)) Q:DDS4DA'[","  D  ;IGNORE "COMP MUL" NODE
 . I $P(@DDSREFT@(DDSPG,DDS4B,DDS4DA),U,6)<2 D VR Q
 . ;
 . N DDS4PDA S DDS4PDA=DDS4DA N DDS4DA
 . S DDS4DA=""
 . F  S DDS4DA=$O(@DDSREFT@(DDSPG,DDS4B,DDS4PDA,"B",DDS4DA)) Q:'DDS4DA  D VR
 Q
 ;
VR ;Check individual records
 I $P($G(@DDSREFT@("F"_DDP,DDS4DA,DDS4FLD,"A")),U)]"" N DDSREQ S DDSREQ=$P(^("A"),U)
 I 'DDSREQ,'DDSKEY Q
 ;
 ;Required WP fields (quit if mult)
 I DDP,$D(@DDSREFT@("F"_DDP,DDS4DA,DDS4FLD,"M")) D:'^("M")  Q
 . N DDS4I,DDS4REF,DDS4VAL
 . I $G(@DDSREFT@("F"_DDP,DDS4DA,DDS4FLD,"F")) S DDS4REF=$NA(^("D"))
 . E  S DDS4REF=$P(@DDSREFT@("F"_DDP,DDS4DA,DDS4FLD,"M"),U,2),DDS4REF=U_$E(DDS4REF,1,$L(DDS4REF)-1)_")"
 . S (DDS4VAL,DDS4I)=0
 . F  S DDS4I=$O(@DDS4REF@(DDS4I)) Q:'DDS4I  I $G(@DDS4REF@(DDS4I,0))'?." " S DDS4VAL=1 Q
 . D:'DDS4VAL LDERR
 ;
 I $G(@DDSREFT@("F"_DDP,DDS4DA,DDS4FLD,"D"))="" D LDERR Q
 ;
 I DDSKEY,$D(@DDSREFT@("F"_DDP,DDS4DA,DDS4FLD,"F")) S DDSFDA(DDP,DDS4DA,DDS4FLD)=$G(^("D"))
 Q
 ;
LDERR ;Call ^DIALOG to load error
 N P,E
 I $D(DDS4ERR)[0 S DDS4ERR=1 D BLD^DIALOG(3091,"","",DDS4OUT,"S") ;'THE DATA COULD NOT BE FILED.'
 S P(1)=DDSPID,P(2)=DDSCAP
 I $L(DDS4DA,",")>2
 E  S E=$O(@DDSREFT@("F"_DDP,"")) I E]"" S E=$O(^(E)) I E]"" ;ARE THERE MORE THAN ONE OF THESE ENTRIES?
 I  S P(3)=$$GET1^DIQ(DDP,DDS4DA,.01,,,"E") I P(3)]"" S P(3)="("_$$EZBLD^DIALOG(8079)_": "_P(3)_")" ;'SUBRECORD'
 D BLD^DIALOG(3092,.P,"",DDS4OUT,"S") ; '|1|, |2| is a required field |3|'
 Q
 ;
PRNT ;Print messages
 N DDSABT
 S (DDSABT,DX,DY)=0 X IOXY
 W $P(DDGLCLR,DDGLDEL,2)
 S $X=0,$Y=0
 ;
 ;Print required field messages
 I $G(DDS4ERR) S DDSI=0 F  S DDSI=$O(@DDS4OUT@(DDSI)) Q:'DDSI  D  Q:DDSABT
 . D:$G(@DDS4OUT@(DDSI))]"" WLIN(^(DDSI))
 ;
 ;Print duplicate key messages
 S DDSI=0 F  S DDSI=$O(@DDSREFT@("KMSG","DIERR",DDSI)) Q:'DDSI  D  Q:DDSABT
 . D WLIN(" "),WLIN(@DDSREFT@("KMSG","DIERR",DDSI,"TEXT",1))
 . Q:@DDSREFT@("KMSG","DIERR",DDSI)'=740
 . ;
 . N DA,FIL,FILE,FLD,FLDS,FNAME,IENS,J,KEY,LEV,RNAME
 . S FILE=@DDSREFT@("KMSG","DIERR",DDSI,"PARAM","FILE"),IENS=$G(^("IENS")),KEY=$G(^("KEY"))
 . D FRNAME^DIKCU1(FILE,IENS,.FNAME,.RNAME,.LEV)
 . ;
 . I LEV D
 .. S FNAME=$J("",7)_"Subfile: "_FNAME D WLIN(.FNAME,16)
 .. S RNAME=$J("",8)_"Record: "_RNAME D WLIN(.RNAME,16)
 . ;
 . S FLDS="",J=0 F  S J=$O(^DD("KEY",KEY,2,J)) Q:'J  D
 .. Q:'$D(^DD("KEY",KEY,2,J,0))  S FLD=$P(^(0),U),FIL=$P(^(0),U,2)
 .. Q:'$D(^DD(FIL,FLD,0))  S FLDS=FLDS_$P(^(0),U)_" (#"_FLD_"), "
 . D:FLDS]"" WLIN("  Key Field(s): "_$E(FLDS,1,$L(FLDS)-2),16)
 ;
 ;Print developer messages
 S DDSI=0 F  S DDSI=$O(@DDSREFT@("MSG",DDSI)) Q:'DDSI  D  Q:DDSABT
 . D:@DDSREFT@("MSG",DDSI)]"" WLIN(^(DDSI))
 ;
 D EOP
 Q
 ;
WLIN(DDSX,DDSINDNT) ;Write a single line, wrap at word boundaries
 N I
 D WRAP^DIKCU2(.DDSX,IOM-1-$G(DDSINDNT),IOM-1)
 S DDSX(0)=DDSX
 F I=0:1 Q:'$D(DDSX(I))  D  Q:DDSABT
 . I $Y+4>IOSL D EOP I 'Y S DDSABT=1 Q
 . W !,$J("",$S(I:$G(DDSINDNT),1:0))_DDSX(I)
 Q
EOP ;Issue EOP prompt
 N X
 S DX=0,DY=IOSL-1 X IOXY
 W $$EZBLD^DIALOG(8053) R X:DTIME ;**
 S Y=X'[U&$T
 I Y S (DX,DY)=0 X IOXY W $P(DDGLCLR,DDGLDEL,2) S $X=0,$Y=0
 Q
