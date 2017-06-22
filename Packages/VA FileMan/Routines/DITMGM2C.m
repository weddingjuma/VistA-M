DITMGM2C ;SFISC/EDE(OHPRD)TKW-CONTINUATION OF DITMGM2 ;10/7/98  10:38
 ;;22.2;VA FileMan;;Jan 05, 2016;Build 42
 ;;Per VA Directive 6402, this routine should not be modified.
 ;;Submitted to OSEHRA 5 January 2015 by the VISTA Expertise Network.
 ;;Based on Medsphere Systems Corporation's MSC FileMan 1051.
 ;;Licensed under the terms of the Apache License, Version 2.0.
 ;
ENTRY ; PROCESS ONE FILE/SUBFILE ENTRY
 ;
 W:'$D(DITMGM2("NOTALK")) "."
 I DITMGMDI D DINUM Q  ; merge dinum entries
 ;
 ; ----- Transform DITMGMT
 S DITMGM("DITMGMT")=DITMGMT
 I 'DITMGMV S DITMGMT=$S(DITMGMFD=.01:"`",1:"/")_DITMGMT I 1
 E  S X=$P(DITMGMT,";",2),DITMGMT=$P(DITMGMT,";",1),X=+$P(@("^"_X_"0)"),U,2) D  Q:X=""  S DITMGMT=X_".`"_DITMGMT
 . S X=$O(^DD(DITMGMFL,DITMGMFD,"V","B",X,0))
 . Q:X=""
 . S X=$P(^DD(DITMGMFL,DITMGMFD,"V",X,0),U,4)
 . Q
 ; -----
 ;
 I DITMGMMU D ENTRYM I 1
 E  D ENTRYS
 S DITMGMT=DITMGM("DITMGMT") K DITMGM("DITMGMT")
 Q
 ;
ENTRYS ;
 ;
 S DITC="",DA=DITMGMN,D0=DA,DIE=DITMGMG,DR=DITMGMFD_"///"_DITMGMT
 D ^DIE K DA,DIE,DITC,DR,D0
 I $D(Y) S DITMGMEC=DITMGMEC+1,DITMGMRG("ERROR",DITMGMEC)="DIE"_U_DITMGMFL_U_DITMGMFD_U_DITMGMN_U_DITMGMF_U_DITMGMT
 Q
 ;
ENTRYM ; PROCESS ONE SUBFILE ENTRY
 S DITC="",DIE=DITMGMGM,DA=DITMGMN,DR=DITMGMFD_"///"_DITMGMT
 D ^DITMU1 ; Set D0, D1, etc.
 D ^DIE K DA,DIE,DITC,DR
 D KILL^DITMU1 ; Kill D0, D1, etc.
 I $D(Y) S DITMGMEC=DITMGMEC+1,DITMGMRG("ERROR",DITMGMEC)="DIE"_U_DITMGMFL_U_DITMGMFD_U_DITMGMN_U_DITMGMF_U_DITMGMT
 Q
 ;
DINUM ; DINUM FILE
 ; Move the 'from' entry to it's new IEN location.  Do a merge
 ; if there is already a record at that location.
 ;
 N DIDA,DIK,DITMFROM S DITMFROM=$S(DITMGMMU:DITMGMGM,1:DITMGMG)
 S $P(@(DITMFROM_DITMGMF_",0)"),U)=DITMGMT
 I '$D(@(DITMFROM_DITMGMT_",0)")) D
 . S @(DITMFROM_DITMGMT_",0)")=DITMGMT
 . S $P(@(DITMFROM_"0)"),U,3,4)=DITMGMT_"^"_($P(@(DITMFROM_"0)"),U,4)+1)
 . Q
 S DIDA=$S('DITMGMMU:",",1:$$IEN^DIEFU(.DA)),DIDA("F")=DITMGMF_DIDA,DIDA("T")=DITMGMT_DIDA
 D TRNMRG^DIT("M",DITMGMFL,"",DIDA("F"),DIDA("T"))
 S $P(@(DITMFROM_DITMGMF_",0)"),U)=DITMGMF
 D
 . N DA D DA^DIEFU(DIDA("T"),.DA) Q:$D(DIERR)
 . K DIK S DIK=$$ROOT^DIQGU(DITMGMFL,DIDA("T")) Q:$D(DIERR)
 . N DIDA D IX1^DIK Q
 D
 . N DA D DA^DIEFU(DIDA("F"),.DA) Q:$D(DIERR)
 . K DIK S DIK=$$ROOT^DIQGU(DITMGMFL,DIDA("F")) Q:$D(DIERR)
 . N DIDA D ^DIK Q
 Q
