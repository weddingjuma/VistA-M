PSS50CMP ;BIR/RTR - CONTINUATION OF API FOR INFORMATION FROM FILE 50; 5 Sep 03
 ;;1.0;PHARMACY DATA MANAGEMENT;**85**;9/30/97
 ;
CMOP ;
 ;PSSIEN - IEN of entry in 50
 ;PSSFT - Free Text name in 50
 ;PSSFL - Inactive flag - "" - All entries
 ;                        FileMan Date - Only entries with no Inactive Date or an Inactive Date greater than this date.
 ;PSSPK - Application Package's Use - "" - All entries
 ;                                         Alphabetic codes that represent the DHCP packages that consider this drug to be
 ;                                         part of their formulary.
 ;PSSRTOI - Orderable Item - return only entries matched to a Pharmacy Orderable Item                                         
 ;LIST - Subscript of ^TMP array in the form ^TMP($J,LIST,Field Number where Field Number is the Field Number of the data
 ;       piece being returned.
 ;Returns zero node of 50
 N DIERR,ZZERR,PSSP50,SCR,PSS,PSSMLCT
 I $G(LIST)']"" Q
 K ^TMP($J,LIST)
 I +$G(PSSIEN)'>0,($G(PSSFT)']"") S ^TMP($J,LIST,0)=-1_"^"_"NO DATA FOUND" Q
 S SCR("S")=""
 I +$G(PSSFL)>0!($G(PSSPK)]"")!($G(PSSRTOI)=1) N PSS5ND,PSSZ3,PSSZ4 D SETSCRN^PSS50A
 I +$G(PSSIEN)>0 N PSSIEN2 S PSSIEN2=$$FIND1^DIC(50,"","A","`"_PSSIEN,,SCR("S"),"") D  K ^TMP("PSSP50",$J) Q
 .K ^TMP("DIERR",$J)
 .I +PSSIEN2'>0 S ^TMP($J,LIST,0)=-1_"^"_"NO DATA FOUND" Q
 .S ^TMP($J,LIST,0)=1
 .D SETSUB5^PSS50AQM(+PSSIEN2)
 .K ^TMP("PSSP50",$J) D GETS^DIQ(50,+PSSIEN2,".01;213;214*;215;28","IE","^TMP(""PSSP50"",$J)") S PSS(1)=0
 .F  S PSS(1)=$O(^TMP("PSSP50",$J,50,PSS(1))) Q:'PSS(1)  D SETCMOP D
 ..S (PSS(2),PSSMLCT)=0 F  S PSS(2)=$O(^TMP("PSSP50",$J,50.0214,PSS(2))) Q:'PSS(2)  S PSSMLCT=PSSMLCT+1 D SETACT
 ..S ^TMP($J,LIST,+PSS(1),"AL",0)=$S($G(PSSMLCT):PSSMLCT,1:"-1^NO DATA FOUND")
 I $G(PSSIEN)'="" S ^TMP($J,LIST,0)=-1_"^"_"NO DATA FOUND" Q
 I $G(PSSFT)]"" D
 .I PSSFT["??" D LOOP Q
 .K ^TMP("DILIST",$J)
 .D FIND^DIC(50,,"@;.01","QP",PSSFT,,"B",SCR("S"),,"")
 .I +$G(^TMP("DILIST",$J,0))=0 S ^TMP($J,LIST,0)=-1_"^"_"NO DATA FOUND" Q
 .I ^TMP("DILIST",$J,0)>0 S ^TMP($J,LIST,0)=+^TMP("DILIST",$J,0) N PSSXX S PSSXX=0 F  S PSSXX=$O(^TMP("DILIST",$J,PSSXX)) Q:'PSSXX  D
 ..S PSSIEN=+^TMP("DILIST",$J,PSSXX,0)
 ..D SETSUB5^PSS50AQM(PSSIEN) K ^TMP("PSSP50",$J) D GETS^DIQ(50,+PSSIEN,".01;213;214*;215;28","IE","^TMP(""PSSP50"",$J)") S PSS(1)=0
 ..F  S PSS(1)=$O(^TMP("PSSP50",$J,50,PSS(1))) Q:'PSS(1)  D SETCMOP D
 ...S (PSS(2),PSSMLCT)=0 F  S PSS(2)=$O(^TMP("PSSP50",$J,50.0214,PSS(2))) Q:'PSS(2)  S PSSMLCT=PSSMLCT+1 D SETACT
 ...S ^TMP($J,LIST,+PSS(1),"AL",0)=$S($G(PSSMLCT):PSSMLCT,1:"-1^NO DATA FOUND")
 K ^TMP("DILIST",$J),^TMP("PSSP50",$J)
 Q
SETCMOP ;
 S ^TMP($J,LIST,+PSS(1),.01)=$G(^TMP("PSSP50",$J,50,PSS(1),.01,"I"))
 S ^TMP($J,LIST,"B",$G(^TMP("PSSP50",$J,50,PSS(1),.01,"I")),+PSS(1))=""
 S ^TMP($J,LIST,+PSS(1),213)=$S($G(^TMP("PSSP50",$J,50,PSS(1),213,"I"))="":"",1:^TMP("PSSP50",$J,50,PSS(1),213,"I")_"^"_$G(^TMP("PSSP50",$J,50,PSS(1),213,"E")))
 S ^TMP($J,LIST,+PSS(1),215)=$G(^TMP("PSSP50",$J,50,PSS(1),215,"I"))
 S ^TMP($J,LIST,+PSS(1),28)=$S($G(^TMP("PSSP50",$J,50,PSS(1),28,"I"))="":"",1:^TMP("PSSP50",$J,50,PSS(1),28,"I")_"^"_$G(^TMP("PSSP50",$J,50,PSS(1),28,"E")))
 Q
SETACT ;
 S ^TMP($J,LIST,+PSS(1),"AL",+PSS(2),.01)=$S($G(^TMP("PSSP50",$J,50.0214,PSS(2),.01,"I"))="":"",1:^TMP("PSSP50",$J,50.0214,PSS(2),.01,"I")_"^"_$G(^TMP("PSSP50",$J,50.0214,PSS(2),.01,"E")))
 S ^TMP($J,LIST,+PSS(1),"AL",+PSS(2),1)=$S($G(^TMP("PSSP50",$J,50.0214,PSS(2),1,"I"))="":"",1:^TMP("PSSP50",$J,50.0214,PSS(2),1,"I")_"^"_$G(^TMP("PSSP50",$J,50.0214,PSS(2),1,"E")))
 S ^TMP($J,LIST,+PSS(1),"AL",+PSS(2),2)=$S($G(^TMP("PSSP50",$J,50.0214,PSS(2),2,"I"))="":"",1:^TMP("PSSP50",$J,50.0214,PSS(2),2,"I")_"^"_$G(^TMP("PSSP50",$J,50.0214,PSS(2),2,"E")))
 S ^TMP($J,LIST,+PSS(1),"AL",+PSS(2),3)=$G(^TMP("PSSP50",$J,50.0214,PSS(2),3,"I"))
 S ^TMP($J,LIST,+PSS(1),"AL",+PSS(2),4)=$G(^TMP("PSSP50",$J,50.0214,PSS(2),4,"I"))
 S ^TMP($J,LIST,+PSS(1),"AL",+PSS(2),5)=$G(^TMP("PSSP50",$J,50.0214,PSS(2),5,"I"))
 Q
 ;
LOOP ;
 N PSS50DD9,PSS50D10,PSS50D11,PSS50ER9,PSS50E10,PSS50E11,PSS28OPD,PSS213PD,PSS5021X
 D FIELD^DID(50,28,"Z","POINTER","PSS50DD9","PSS50ER9") S PSS28OPD=$G(PSS50DD9("POINTER"))
 D FIELD^DID(50,213,"Z","POINTER","PSS50D10","PSS50E10") S PSS213PD=$G(PSS50D10("POINTER"))
 D FIELD^DID(50.0214,1,"Z","POINTER","PSS50D11","PSS50E11") S PSS5021X=$G(PSS50D11("POINTER"))
 N PSSENCT
 S PSSENCT=0
 S PSS(1)=0 F  S PSS(1)=$O(^PSDRUG(PSS(1))) Q:'PSS(1)  D
 .I $P($G(^PSDRUG(PSS(1),0)),"^")="" Q
 .I $G(PSSFL),$P($G(^PSDRUG(PSS(1),"I")),"^"),$P($G(^("I")),"^")'>PSSFL Q
 .I $G(PSSRTOI)=1,'$P($G(^PSDRUG(PSS(1),2)),"^") Q
 .;Naked reference below refers to ^PSDRUG(PSS(1),2)
 .I $G(PSSPK)]"" N PSSZ5,PSSZ6 S PSSZ5=0 F PSSZ6=1:1:$L(PSSPK) Q:PSSZ5  I $P($G(^(2)),"^",3)[$E(PSSPK,PSSZ6) S PSSZ5=1
 .I $G(PSSPK)]"",'PSSZ5 Q
 .D SETSUB5^PSS50AQM(PSS(1))
 .D SETCMQ,SETACQ
 .S PSSENCT=PSSENCT+1
 S ^TMP($J,LIST,0)=$S($G(PSSENCT):$G(PSSENCT),1:"-1^NO DATA FOUND")
 Q
 ;
SETCMQ ;
 N PSSCMP3,PSSCMP5,PSSCMP6
 S ^TMP($J,LIST,+PSS(1),.01)=$P(^PSDRUG(PSS(1),0),"^")
 S ^TMP($J,LIST,"B",$P(^PSDRUG(+PSS(1),0),"^"),+PSS(1))=""
 N PSS28OP S PSS28OP=$P($G(^PSDRUG(+PSS(1),6)),"^")  D
 .I PSS28OP'="",PSS28OPD'="",PSS28OPD[(PSS28OP_":") S ^TMP($J,LIST,+PSS(1),28)=PSS28OP_"^"_$P($E(PSS28OPD,$F(PSS28OPD,(PSS28OP_":")),999),";") Q
 .S ^TMP($J,LIST,+PSS(1),28)=""
 N PSS213P S PSS213P=$P($G(^PSDRUG(+PSS(1),3)),"^")  D
 .I PSS213P'="",PSS213PD'="",PSS213PD[(PSS213P_":") S ^TMP($J,LIST,+PSS(1),213)=PSS213P_"^"_$P($E(PSS213PD,$F(PSS213PD,(PSS213P_":")),999),";") Q
 .S ^TMP($J,LIST,+PSS(1),213)=""
 S ^TMP($J,LIST,+PSS(1),215)=$P($G(^PSDRUG(+PSS(1),5)),"^")
 Q
 ;
SETACQ ;
 N PSS504C S PSS504C=0
 I $O(^PSDRUG(+PSS(1),4,0)) N PSS504,PSS504ND D
 .F PSS504=0:0  S PSS504=$O(^PSDRUG(+PSS(1),4,PSS504)) Q:'PSS504  D
 ..S PSS504ND=$G(^PSDRUG(+PSS(1),4,PSS504,0)) I $P(PSS504ND,"^")'="" S PSS504C=PSS504C+1 D
 ...N Y S (^TMP($J,LIST,+PSS(1),"AL",PSS504,.01),Y)=$P(PSS504ND,"^") X ^DD("DD") S ^TMP($J,LIST,+PSS(1),"AL",PSS504,.01)=^TMP($J,LIST,+PSS(1),"AL",PSS504,.01)_"^"_$G(Y)
 ...N PSS5021 S PSS5021=$P(PSS504ND,"^",2)  D
 ....I PSS5021'="",PSS5021X'="",PSS5021X[(PSS5021_":") S ^TMP($J,LIST,+PSS(1),"AL",PSS504,1)=PSS5021_"^"_$P($E(PSS5021X,$F(PSS5021X,(PSS5021_":")),999),";") Q
 ....S ^TMP($J,LIST,+PSS(1),"AL",PSS504,1)=""
 ...N PSS200,PSSA200 S PSS200=$P(PSS504ND,"^",3) I PSS200 D GETS^DIQ(50.0214,+PSS504_","_+PSS(1),2,"E","PSSA200") S ^TMP($J,LIST,+PSS(1),"AL",PSS504,2)=PSS200_"^"_$G(PSSA200(50.0214,+PSS504_","_+PSS(1)_",",2,"E"))
 ...S ^TMP($J,LIST,+PSS(1),"AL",PSS504,3)=$P(PSS504ND,"^",4)
 ...S ^TMP($J,LIST,+PSS(1),"AL",PSS504,4)=$P(PSS504ND,"^",5)
 ...S ^TMP($J,LIST,+PSS(1),"AL",PSS504,5)=$P(PSS504ND,"^",6)
 S ^TMP($J,LIST,+PSS(1),"AL",0)=$S(PSS504C:PSS504C,1:"-1^NO DATA FOUND")
 Q
                
