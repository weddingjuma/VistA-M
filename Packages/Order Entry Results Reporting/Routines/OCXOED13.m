OCXOED13 ;SLC/RJS,CLA - Rule Editor (Meta Dictionary Link Display) ;10/29/98  12:37
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**32**;Dec 17,1997
 ;;  ;;ORDER CHECK EXPERT version 1.01 released OCT 29,1998
 ;
 ;
S ;
 ;
 Q
EN(OCXLNK,OCXSRC) ;
 ;
 N OCXACT,OCXRD
 S OCXD0=+$$DIC("^OCXS(863.3,","XM","",OCXLNK)
 I '(OCXD0>0) S OCXD0=$$ADDLINK(OCXLNK,OCXSRC) Q:'OCXD0
 F  K OCXRD,OCXACT S (OCXRD,OCXACT)="" D DISP(OCXD0,.OCXRD,.OCXACT) Q:$$EN^OCXOED14(OCXD0,.OCXRD,.OCXACT)
 ;
 Q
 ;
DISP(OCXD0,OCXRD,OCXACT) ;
 ;
 N OCXTHLN,OCXTNLN,OCXTRLN,OCXTULN,OCXTNLN
 S OCXTNLN=$C(27,91,48,109),OCXTRLN=$C(27,91,55,109),OCXTULN=$C(27,91,52,109),OCXTHLN=$C(27,91,49,109)
 D GETDATA(OCXD0,.OCXRD)
 D CHKVR(OCXD0,.OCXRD)
 ;
 W @IOF,OCXTNLN
 W !,$$CENTER($$FIELD("Meta Dictionary Edit Screen"),80),!
 W !,"  ",$$FIELD("Link:")," ",$$DATA($G(OCXRD("LINK",OCXD0,.01,"E")),50)
 W !,"  ",$$FIELD("        Subject:")," ",$$DATA($G(OCXRD("LINK",OCXD0,.02,"E")),50)
 W !,"  ",$$OPT^OCXOEDT("Change Attribute","EDATT","14",.OCXACT,OCXD0,"CA")
 W "  ",$$FIELD("        Attribute:")," ",$$DATA($G(OCXRD("LINK",OCXD0,.05,"E")),50)
 ;
 W !!,$$SEP("Parameters"),!
 ;
 W !,"  ",$$OPT^OCXOEDT("P1","EDPARAM","14",.OCXACT,OCXD0_",""OCXO EXTERNAL FUNCTION CALL""")
 W "  ",$$FIELD("               M Function Call: "),"  ",$$DATA($$PVAL("LINK",OCXD0,"OCXO EXTERNAL FUNCTION CALL"),30)
 W !,"  ",$$OPT^OCXOEDT("P2","EDPARAM","14",.OCXACT,OCXD0_",""OCXO VARIABLE NAME""")
 W "  ",$$FIELD("            Data Variable Name: "),"  ",$$DATA($$PVAL("LINK",OCXD0,"OCXO VARIABLE NAME"),30)
 W !,"  ",$$OPT^OCXOEDT("P3","EDPARAM","14",.OCXACT,OCXD0_",""OCXO VT-BAR PIECE NUMBER""")
 W "  ",$$FIELD(" Vertical Bar '|' Piece Number: "),"  ",$$DATA($$PVAL("LINK",OCXD0,"OCXO VT-BAR PIECE NUMBER"),30)
 W !,"  ",$$OPT^OCXOEDT("P4","EDPARAM","14",.OCXACT,OCXD0_",""OCXO UP-ARROW PIECE NUMBER""")
 W "  ",$$FIELD("     Up Arrow '^' Piece Number: "),"  ",$$DATA($$PVAL("LINK",OCXD0,"OCXO UP-ARROW PIECE NUMBER"),30)
 W !,"  ",$$OPT^OCXOEDT("P5","EDPARAM","14",.OCXACT,OCXD0_",""OCXO SEMI-COLON PIECE NUMBER""")
 W "  ",$$FIELD("   Semi Colon ';' Piece Number: "),"  ",$$DATA($$PVAL("LINK",OCXD0,"OCXO SEMI-COLON PIECE NUMBER"),30)
 W !,"  ",$$OPT^OCXOEDT("P6","EDPARAM","14",.OCXACT,OCXD0_",""OCXO FILE POINTER""")
 W "  ",$$FIELD("        Pointed To File Number: "),"  ",$$DATA($$PVAL("LINK",OCXD0,"OCXO FILE POINTER"),30)
 W !,"  ",$$OPT^OCXOEDT("P7","EDPARAM","14",.OCXACT,OCXD0_",""OCXO HL7 SEGMENT ID""")
 W "  ",$$FIELD("                HL7 Segment ID: "),"  ",$$DATA($$PVAL("LINK",OCXD0,"OCXO HL7 SEGMENT ID"),30)
 I +$G(OCXRD("LINK",OCXD0,.05,"I")) D
 .W !!,"  ",$$OPT^OCXOEDT("Data Type","EDPATT","14",.OCXACT,(+$G(OCXRD("LINK",OCXD0,.05,"I")))_",""DATA TYPE""","DT")
 .W "  ",$$FIELD("         Attribute Data Type: "),"  ",$$DATA($$PVAL("ATT",+$G(OCXRD("LINK",OCXD0,.05,"I")),"DATA TYPE"),30)
 ;
 Q
 ;
PVAL(SUB,OCXD0,PNAME) ;
 N X S X="" F  S X=$O(OCXRD(SUB,OCXD0,"PAR",X)) Q:'X  I ($G(OCXRD(SUB,OCXD0,"PAR",X,.01,"E"))=PNAME) Q
 Q:'X "" Q $G(OCXRD(SUB,OCXD0,"PAR",X,1,"E"))
 ;
CHKVR(OCXD0,OCXRD) ;
 ;
 N OCXVNM,OCXSID,OCXVPN
 ;
 S OCXVNM=$$PVAL("LINK",OCXD0,"OCXO VARIABLE NAME")
 S OCXVPN=$$PVAL("LINK",OCXD0,"OCXO VT-BAR PIECE NUMBER")
 S OCXSID=$$PVAL("LINK",OCXD0,"OCXO HL7 SEGMENT ID")
 ;
 ;
 I '$L(OCXVNM),$L(OCXVPN),$L(OCXSID) D
 .N OCXVAR S OCXVAR="OCXODATA("""_OCXSID_""","_OCXVPN_")"
 .D SLPVAL^OCXOED14(OCXD0,"OCXO VARIABLE NAME",OCXVAR)
 .D SLPVAL^OCXOED14(OCXD0,"OCXO VT-BAR PIECE NUMBER","@")
 .D SLPVAL^OCXOED14(OCXD0,"OCXO HL7 SEGMENT ID","@")
 .K OCXRD S OCXRD="" D GETDATA(OCXD0,.OCXRD)
 Q
 ;
 Q
CENTER(X,M) ;
 N SP S SP="",$P(SP," ",80)=" " Q $E(SP,1,((M\2)-($L(X)\2)))_X
 ;
SEP(OCXHDR) ;
 ;
 N SPACES S SPACES="",$P(SPACES," ",80-$L(OCXHDR))=" " Q OCXTNLN_OCXTHLN_OCXTULN_$G(OCXHDR)_SPACES_OCXTNLN
 ;
FIELD(OCXHDR) ;
 ;
 Q OCXTHLN_$G(OCXHDR)_OCXTNLN
 ;
DATA(OCXVAL,OCXLEN) ;
 ;
 N SPACES S SPACES="",$P(SPACES," ",OCXLEN+5)=" ",OCXVAL=$G(OCXVAL)
 I ($L(OCXVAL)>OCXLEN) Q $E(OCXVAL,1,OCXLEN-3)_"..."
 Q $E((OCXVAL_SPACES),1,OCXLEN)
 ;
GETDATA(OCXD0,OCXD) ;
 ;
 N OCXDIQ,OCXX,OCXATT,OCXSUB
 ;
 S OCXDIQ="" D DIQ("^OCXS(863.3,",OCXD0,"IEN",.OCXDIQ)
 M OCXD("LINK")=OCXDIQ(863.3) K OCXDIQ S OCXDIQ=""
 S OCXX=0 F  S OCXX=$O(^OCXS(863.3,OCXD0,"PAR",OCXX)) Q:'OCXX  W "." D
 .S OCXDIQ="" D DIQ("^OCXS(863.3,"_OCXD0_",""PAR"",",OCXX,"IEN",.OCXDIQ)
 .M OCXD("LINK",OCXD0,"PAR")=OCXDIQ(863.32) K OCXDIQ S OCXDIQ=""
 ;
 S OCXDIQ="",OCXSUB=$G(OCXD("LINK",OCXD0,.02,"I")) I OCXSUB D
 .D DIQ("^OCXS(863.2,",OCXSUB,"IEN",.OCXDIQ)
 .M OCXD("SUB")=OCXDIQ(863.2) K OCXDIQ S OCXDIQ=""
 ;
 S OCXDIQ="",OCXATT=$G(OCXD("LINK",OCXD0,.05,"I")) I OCXATT D
 .D DIQ("^OCXS(863.4,",OCXATT,"IEN",.OCXDIQ)
 .M OCXD("ATT")=OCXDIQ(863.4) K OCXDIQ S OCXDIQ=""
 .S OCXX=0 F  S OCXX=$O(^OCXS(863.4,OCXATT,"PAR",OCXX)) Q:'OCXX  W "." D
 ..S OCXDIQ="" D DIQ("^OCXS(863.4,"_OCXATT_",""PAR"",",OCXX,"IEN",.OCXDIQ)
 ..M OCXD("ATT",OCXATT,"PAR")=OCXDIQ(863.41) K OCXDIQ S OCXDIQ=""
 Q
 ;
DIC(OCXDIC,OCXDIC0,OCXDICA,OCXX,OCXDICS,OCXDR) ;
 ;
 N DIC,X,Y
 S DIC=$G(OCXDIC) Q:'$L(DIC) -1
 S DIC(0)=$G(OCXDIC0) S:$L($G(OCXX)) X=OCXX
 S:$L($G(OCXDICS)) DIC("S")=OCXDICS
 S:$L($G(OCXDICA)) DIC("A")=OCXDICA
 S:$L($G(OCXDR)) DIC("DR")=OCXDR
 D ^DIC Q:(Y<1) 0 Q Y
 ;
DIQ(DIC,DA,OCXDIQ0,OCXARY) ;
 N DR,DIQ S DR=".01:99999",DIQ="OCXARY(",DIQ(0)=$G(OCXDIQ0)
 D EN^DIQ1
 Q
 ;
ADDLINK(OCXNAME,OCXSRC) ;
 N OCXD0,OCXDR
 S OCXD0=+$$DIC("^OCXS(863.2,","XLME","",$P(OCXNAME,".",1)) Q:(OCXD0<1) 0
 S OCXDR=".02///"_$P(OCXNAME,".",1)_";.04///"_OCXSRC_";.06///99"
 S OCXD0=+$$DIC("^OCXS(863.3,","XLME","",OCXNAME,"",OCXDR)
 Q:(OCXD0<1) 0 Q OCXD0
 ;
