PRCORV1 ;WISC/DJM/BGJ/AS-IFCAP VRQ REVIEW ROUTINE, CONTINUED ;3/8/05
V ;;5.1;IFCAP;**7,81**;Oct 20, 2000
 ;Per VHA Directive 10-93-142, this routine should not be modified.
REV ;COMPLETE REVIEW OF VENDOR ENTRY
 N SPACE,VALMY,IEN,PRCOI,PRCOIN,DIC,DA,DR,DIQ,DIR,Y
 D EN^VALM2(XQORNOD(0),"OS")
 S PRCOI=0
 S PRCOI=$O(VALMY(PRCOI)) G:'PRCOI REVQ
 S PRCOIN=$G(^TMP("PRCORV",$J,PRCOI))
 S IEN=+$P(PRCOIN,U,2)
 D FULL^VALM1
 W @IOF
 K PRCORVP
 S DIC="^PRC(440,",DA=IEN,DR=".01:46",DIQ="PRCORVP",DIQ(0)="E"
 D EN^DIQ1
 S $P(SPACE," ",24)=" "
 W !!,"           Vendor Name: "_$$FIELD(IEN,.01)
 W ?70,"PAGE: 1"
 W !,"      Ordering Address: "_$$FIELD(IEN,1)
 W:$$FIELD(IEN,2)]"" !,SPACE_$$FIELD(IEN,2)
 S X=SPACE
 S:$$FIELD(IEN,4.2)]"" X=X_$$FIELD(IEN,4.2)_", "
 S:$$FIELD(IEN,4.4)]"" X=X_$$FIELD(IEN,4.4)_" "
 S X=X_$S($L($$FIELD(IEN,4.6))=9:$E($$FIELD(IEN,4.6),1,5)_"-"_$E($$FIELD(IEN,4.6),6,9),1:$$FIELD(IEN,4.6))
 W !,X
 W !!,"              FMS Name: "_$$FIELD(IEN,34.5)
 W !!,"       Payment ADDRESS: "_$$FIELD(IEN,17.3)
 W !,SPACE_$$FIELD(IEN,17.4)
 W:$$FIELD(IEN,17.5)]"" !,SPACE_$$FIELD(IEN,17.5)
 W:$$FIELD(IEN,17.6)]"" !,SPACE_$$FIELD(IEN,17.6)
 S X=SPACE
 S:$$FIELD(IEN,17.7)]"" X=X_$$FIELD(IEN,17.7)_", "
 S:$$FIELD(IEN,17.8)]"" X=X_$$FIELD(IEN,17.8)_" "
 S X=X_$S($L($$FIELD(IEN,17.9))=9:$E($$FIELD(IEN,17.9),1,5)_"-"_$E($$FIELD(IEN,17.9),6,9),1:$$FIELD(IEN,17.9))
 W !,X
 W !!,"PAYMENT CONTACT PERSON: "_$$FIELD(IEN,17)
 W !,"  PAYMENT PHONE NUMBER: "_$$FIELD(IEN,7.2)
 W !
 S DIR(0)="E"
 D ^DIR
 K DIR
 W !
 G:Y'=1 REVEXIT
 W @IOF
 W !!,"           VENDOR NAME: "_$$FIELD(IEN,.01)
 W ?70,"PAGE: 2"
 W !!,"       FMS VENDOR CODE: "_$$FIELD(IEN,34)
 W !,"          ALT-ADDR-IND: "_$$FIELD(IEN,35)
 W !,"            TAX ID/SSN: "_$$FIELD(IEN,38)
 W !,"        SSN/TAX ID IND: "_$$FIELD(IEN,39)
 W !!,"        NON-RECURRING/"
 W !,"      RECURRUNG VENDOR: "_$$FIELD(IEN,36)
 W !!," 1099 VENDOR INDICATOR: "_$$FIELD(IEN,41)
 W !,"           VENDOR TYPE: "_$$FIELD(IEN,44)
 W !,"      DUN & BRADSTREET: "_$$FIELD(IEN,18.3)
 W !
 S DIR(0)="E"
 S DIR("A")="Enter RETURN to continue"
 D ^DIR
 K DIR
REVEXIT S VALMBCK="R",VALMBG=1
REVQ Q
 ;
EDIT ;EDIT THIS VENDOR
 N PRCOI,PRCOIN,IEN
 D EN^VALM2(XQORNOD(0),"OS")
 S PRCOI=0
 S PRCOI=$O(VALMY(PRCOI)) G:'PRCOI REVQ
 S PRCOIN=$G(^TMP("PRCORV",$J,PRCOI))
 S IEN=+$P(PRCOIN,U,2)
 D FULL^VALM1
 W @IOF
 S NAME=$P($G(^PRC(440,IEN,0)),U)
 W:NAME]"" !!,NAME
 D HILO^PRCFQ
 S (DA,PRCFA("VEND"))=IEN D INFO^PRCFAC3 K PRCTMP D DOIT
 G:$D(DIRUT)!(Y'=1) EDITEX
 D SCREEN
 L +^PRC(440,DA):5 E  W !,$C(7),"Another user is editing this entry!" G EDITEX
 ;K ^PRC(440.3,DA) S %X="^PRC(440,DA,",%Y="^PRC(440.3,DA," D %XY^%RCR
 S DIE="^PRC(440,",DR="[PRCF FMS VENEDIT1B]"
 D ^DIE K DIE,DR,ORDER
 L -^PRC(440,PRCFA("VEND"))
EDITEX S VALMBCK="R",VALMBG=1
 ;   SEND VENDOR UPDATE INFORMATION TO DYNAMED   **81**
 I $$GET^XPAR("SYS","PRCV COTS INVENTORY",1)=1,$D(IEN) D ONECHK^PRCVNDR(PRCFA("VEND"))
 Q
 ;
SEND ;SEND THIS VRQ TO AUSTIN
 N PRCOI,PRCOIN,IEN
 D EN^VALM2(XQORNOD(0),"OS")
 S PRCOI=0
 S PRCOI=$O(VALMY(PRCOI)) G:'PRCOI REVQ
 S PRCOIN=$G(^TMP("PRCORV",$J,PRCOI))
 S IEN=+$P(PRCOIN,U,2)
 D SEND^PRCHE1(IEN)
 D INIT^PRCORV
 S VALMBCK="R",VALMBG=1
 Q
 ;
DELETE ;DELETE THIS VENDOR REQUEST FROM THE LOCAL IFCAP SYSTEM
 N PRCOI,PRCOIN,IEN,VRQ,COUNT
 D EN^VALM2(XQORNOD(0),"OS")
 S PRCOI=0
 S PRCOI=$O(VALMY(PRCOI)) G:'PRCOI REVQ
 S PRCOIN=$G(^TMP("PRCORV",$J,PRCOI))
 S IEN=+$P(PRCOIN,U,2)
 S NAME=$P($G(^PRC(440,IEN,0)),U)
 S DIR("A")="Do you want to delete "_NAME_" (YES/NO)"
 S DIR(0)="Y"
 S DIR("B")="NO"
 D ^DIR
 K DIR
 G:Y'=1 NODELETE
 S VRQ=$O(^PRCF(422.2,"B","123-VRQ-01",0))
 S COUNT=$P(^PRCF(422.2,VRQ,0),U,2),COUNT=$S(COUNT-1>0:COUNT-1,1:0),$P(^PRCF(422.2,VRQ,0),U,2)=COUNT
 K ^PRC(440.3,"AD",IEN,IEN)
 K ^PRC(440.3,IEN)
 D INIT^PRCORV
NODELETE S VALMBCK="R",VALMBG=1
 Q
 ;
FIELD(IEN,FIELD) ;FETCH EXTERNAL VALUE OF FIELD
 ;FOR RECORD 'IEN' FROM FILE 440.3
 S FIELD=$G(PRCORVP(440,IEN,FIELD,"E"))
 Q FIELD
 ;
DOIT ;FIND OUT IF USER WANTS TO EDIT VENDOR RECORD
 W !
 S DIR(0)="Y"
 S DIR("A")="Edit the payment information on Vendor record"
 S DIR("B")="YES"
 S DIR("?")="Enter 'NO' or 'N' or '^' to exit this edit session."
 S DIR("?",1)="Enter 'YES' or 'Y' or 'RETURN' to continue."
 D ^DIR
 K DIR
 W !
 Q
 ;
SCREEN ; Control screen display
 I $D(IOF) W @IOF
HDR ; Write Option Header
 I $D(XQY0) W IOINHI,$P(XQY0,U,2),IOINORM,!
 Q