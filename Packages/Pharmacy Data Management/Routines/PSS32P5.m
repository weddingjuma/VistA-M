PSS32P5 ;BIR/LDT - API FOR INFORMATION FROM FILE 9009032.5; 5 Sep 03
 ;;1.0;PHARMACY DATA MANAGEMENT;**85**;9/30/97
 ;
ALL(PSSIEN,PSSFT,LIST) ;
 ;PSSIEN - IEN of entry in 9009032.5.
 ;PSSFT - Free Text TYPE in 9009032.5.
 ;LIST - Subscript of ^TMP array in the form ^TMP($J,LIST,Field Number where Field Number is the
 ;Field Number of the data piece being returned.
 ;Returns RECOMMENDATION field (#.01) of APSP INTERACTION RECOMMENDATION file (#9009032.5).
 N DIERR,ZZERR,PSS32P5,SCR,PSS
 I $G(LIST)']"" Q
 K ^TMP($J,LIST)
 I +$G(PSSIEN)'>0,($G(PSSFT)']"") S ^TMP($J,LIST,0)=-1_"^"_"NO DATA FOUND" Q
 I $G(PSSIEN)]"",+$G(PSSIEN)'>0 S ^TMP($J,LIST,0)=-1_"^"_"NO DATA FOUND" Q
 I +$G(PSSIEN)>0 N PSSIEN2 S PSSIEN2=$$FIND1^DIC(9009032.5,"","A","`"_PSSIEN,,,"") D
 .I +PSSIEN2'>0 S ^TMP($J,LIST,0)=-1_"^"_"NO DATA FOUND" Q
 .S ^TMP($J,LIST,0)=1
 .D GETS^DIQ(9009032.5,+PSSIEN2,".01","I","PSS32P5") S PSS(1)=0
 .F  S PSS(1)=$O(PSS32P5(9009032.5,PSS(1))) Q:'PSS(1)  D SETALL
 I $G(PSSIEN)="",$G(PSSFT)]"" D
 .I PSSFT["??" D LOOP Q
 .D FIND^DIC(9009032.5,,"@;.01;","QP",PSSFT,,"B",,,"")
 .I +$G(^TMP("DILIST",$J,0))=0 S ^TMP($J,LIST,0)=-1_"^"_"NO DATA FOUND" Q
 .I +^TMP("DILIST",$J,0)>0 S ^TMP($J,LIST,0)=+^TMP("DILIST",$J,0) N PSSXX S PSSXX=0 F  S PSSXX=$O(^TMP("DILIST",$J,PSSXX)) Q:'PSSXX  D
 ..S PSSIEN=+^TMP("DILIST",$J,PSSXX,0) K PSS32P5 D GETS^DIQ(9009032.5,+PSSIEN,".01","I","PSS32P5") S PSS(1)=0
 ..F  S PSS(1)=$O(PSS32P5(9009032.5,PSS(1))) Q:'PSS(1)   D SETALL
 K ^TMP("DILIST",$J)
 Q
 ;
SETALL ;
 S ^TMP($J,LIST,+PSS(1),.01)=$G(PSS32P5(9009032.5,PSS(1),.01,"I"))
 S ^TMP($J,LIST,"B",$G(PSS32P5(9009032.5,PSS(1),.01,"I")),+PSS(1))=""
 Q
 ;
LOOP ;
 N PSSIEN
 S PSSIEN=0 F  S PSSIEN=$O(^APSPQA(32.5,PSSIEN)) Q:'PSSIEN  D
 .D GETS^DIQ(9009032.5,+PSSIEN,".01","I","PSS32P5") S PSS(1)=0,^TMP($J,LIST,0)=0 D
 ..F  S PSS(1)=$O(PSS32P5(9009032.5,PSS(1))) Q:'PSS(1)   D SETALL S ^TMP($J,LIST,0)=^TMP($J,LIST,0)+1
 Q
