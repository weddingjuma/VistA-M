VIABPCE2 ;AITC/BWF - wrap calls to PCE ;2/12/16  15:13
 ;;1.0;VISTA INTEGRATION ADAPTER;**5**;06-FEB-2014;Build 8
 Q
HFTYPE(VIALST,ADDCATS) ;get the list of active  health factors
 N IEN,CNT,BINDEX,REC
 S (CNT,BINDEX)=0,ADDCATS=+$G(ADDCATS)
 F  S BINDEX=$O(^AUTTHF("B",BINDEX)) Q:BINDEX']""  D
 .S IEN=0 F  S IEN=$O(^AUTTHF("B",BINDEX,IEN)) Q:'+IEN  D
 ..S REC=$G(^AUTTHF(IEN,0))
 ..I +$P(REC,U,11) S REC=""
 ..I 'ADDCATS,$P(REC,U,10)="C" S REC=""
 ..I REC'="" D
 ...S CNT=CNT+1,VIALST(CNT)=IEN_U_$P(REC,U)
 ...I ADDCATS S VIALST(CNT)=VIALST(CNT)_U_$P(REC,U,10)_U_$P(REC,U,3)
 Q
