DIAXT ;SFISC/DCM-GET EXTRACT TEMPLATE SPECS ;5/13/96  14:01
 ;;22.2;VA FileMan;;Jan 05, 2016;Build 42
 ;;Per VA Directive 6402, this routine should not be modified.
 ;;Submitted to OSEHRA 5 January 2015 by the VISTA Expertise Network.
 ;;Based on Medsphere Systems Corporation's MSC FileMan 1051.
 ;;Licensed under the terms of the Apache License, Version 2.0.
 ;
EN N DIAXI,DILL,DIAX
 S DIAXTTO="^TMP($J,""DIAXTTO"")",DIAXTFR="^TMP($J,""DIAXTFR"")"
 K @DIAXTTO,@DIAXTFR
 D SPEC
 Q
SPEC ;get specs
 D TOP,DR
 D NEXTLVL
 Q
TOP ;get base file specs from extract template
 N X
 S DIAXI=0
 S DIAXI=$O(^DIPT(DIAXT,1,DIAXI)) Q:DIAXI'>0  S X=^(DIAXI,0)
 S DILL=$P(X,U,2)
FILE S @DIAXTFR@(DIAXI,"FR")=+X
 S @DIAXTFR@(+X,"TO")=$P(X,U,9)
 S @DIAXTFR@(+X,"PRT")=$P(X,U,3)
 S @DIAXTFR@(+X,"P4")=$P(X,U,4)
 S @DIAXTFR@(+X,"P2")=$P(X,U,2)
 S @DIAXTFR@(+X,"P5")=$P(X,U,5)
 S @DIAXTFR@(+X,"P7")=$P(X,U,7)
 I DILL>1,$P(X,U,9)'=$P(X,U,10) S @DIAXTTO@(+$P(X,U,9),"PRT")=+$P(X,U,10)
 Q
DR ;get fields
 N DR,DRN,DRX,DRZ,FILE
 S DR="",DRN=1,DRZ=0,FILE=@DIAXTFR@(DILL,"FR")
 F  S DRZ=$O(^DIPT(DIAXT,1,DIAXI,"F",DRZ)) Q:'DRZ  I $D(^(DRZ,0)) S DRX=^(0) D
 . S DR=DR_+DRX_";",FILE=@DIAXTFR@(DIAXI,"FR")
 . S @DIAXTTO@(FILE,+DRX,+$P(DRX,U,5))=@DIAXTFR@(FILE,"TO")_U_$P(DRX,U,3)_U_$P(DRX,U,5)
 . I $L(DR)>245 S @DIAXTFR@(FILE,"DR",DRN)=DR,DRN=DRN+1,DR=""
 S:DR]"" @DIAXTFR@(FILE,"DR",DRN)=DR
 Q
NEXTLVL ;
 S DIAX(DILL,"DIAXI")=DIAXI,DILL=DILL+1
 F DIAXI=DIAXI:0 S DIAXI=$O(^DIPT(DIAXT,1,DIAXI)) Q:DIAXI'=+DIAXI  S X=^(DIAXI,0) D NEXTLVL2 Q:DIAXI=""
 S DILL=DILL-1,DIAXI=DIAX(DILL,"DIAXI")
 Q
NEXTLVL2 ;
 I $P(X,U,2)<DILL S DIAXI="" Q
 Q:$P(X,U,3)'=@DIAXTFR@(DIAX(DILL-1,"DIAXI"),"FR")
 D FILE
 D DR
 D RECURSE
 Q
RECURSE ;
 D NEXTLVL
 Q
