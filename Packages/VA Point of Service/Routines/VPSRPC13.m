VPSRPC13  ;WOIFO/BT - Patient Demographic RPC - Consult/Procedure;08/14/14 13:07
 ;;1.0;VA POINT OF SERVICE (KIOSKS);**4,14**;Aug 14, 2014;Build 26
 ;;Per VHA Directive 2004-038, this routine should not be modified.
 ;
 ; External Reference DBIA#
 ; ------------------------
 ; #2740 - Call to OER^GMRCSLM1      (Controlled Subs)
 ; #1252 - Call to $$OUTPTPR^SDUTL3  (Supported)
 ; #1252 - Call to $$OUTPTTM^SDUTL3  (Supported)
 ; #6116 - Read-Only access to File #123, Fields .01,.03,3,5,8,10,13,17 (Controlled Subs)
 QUIT
 ;
GETCNSLT(VPSARR,DFN,PARAMS) ;given DFN, returns the patient lab
 ; OUTPUT
 ;   VPSARR   - passed in by reference; this is the output array to store Consult
 ; INPUT
 ;   DFN      - patient DFN (This value must be validated before calling this procedure)
 ;   PARAMS   - optional date range
 ;
 N ORSERV S ORSERV="" ;Service
 S PARAMS=$G(PARAMS)
 N ORSDT S ORSDT=$P(PARAMS,":") ;Beg Date for Search
 N OREDT S OREDT=$P(PARAMS,":",2) ;End Date for Search
 N ORSTATUS S ORSTATUS="" ;ALL STATI
 N GMRCOER S GMRCOER=2 ;0 if request is from CONSULTS, 1 if request is for CPRS List Manager, 2 if for CPRS GUI
 ;
 K ^TMP("GMRCR",$J)
 D OER^GMRCSLM1(DFN,ORSERV,ORSDT,OREDT,ORSTATUS,GMRCOER) ;Return list of consult/procedures
 ;
 N CSLTIEN,VAL,DATA
 N SEQ S SEQ=0
 N EXIST S EXIST=0
 ;
 F  S SEQ=$O(^TMP("GMRCR",$J,"CS",SEQ)) QUIT:'SEQ  D
 . S DATA=$G(^TMP("GMRCR",$J,"CS",SEQ,0))
 . QUIT:$F(DATA,"PATIENT DOES NOT HAVE ANY CONSULTS/REQUESTS")
 . S EXIST=1
 . S CSLTIEN=$P(DATA,U) D SET(.VPSARR,123,DFN_";"_CSLTIEN,.001,CSLTIEN,"CONSULT IEN") ; CONSULT IEN
 . S VAL=$$GET1^DIQ(123,CSLTIEN_",",.01,"I") D SET(.VPSARR,123,DFN_";"_CSLTIEN,.01,VAL) ; FILE ENTRY DATE
 . S VAL=$$GET1^DIQ(123,CSLTIEN_",",8,"E") D SET(.VPSARR,123,DFN_";"_CSLTIEN,8,VAL) ; CPRS STATUS
 . S VAL=$P(DATA,U,4) D SET(.VPSARR,123.5,DFN_";"_CSLTIEN,.01,VAL,"CONSULT NAME") ; CONSULT NAME
 . S VAL=$$OUTPTPR^SDUTL3(DFN) D SET(.VPSARR,200,DFN,.01,$P(VAL,U,2),"PC PROVIDER") ; PC PROVIDER
 . S VAL=$$OUTPTTM^SDUTL3(DFN) D SET(.VPSARR,404.51,DFN,.01,$P(VAL,U,2),"PC TEAM") ; PC TEAM NAME
 . S VAL=$P(DATA,U,5) D SET(.VPSARR,123,DFN_";"_CSLTIEN,4,VAL,"PROCEDURE") ; CONSULT/PROC/REQUEST TYPE
 . S VAL=$$GET1^DIQ(123,CSLTIEN_",",.03,"E") D SET(.VPSARR,123,DFN_";"_CSLTIEN,.03,VAL) ; OE/RR FILE NUMBER
 . S VAL=$$GET1^DIQ(123,CSLTIEN_",",13,"E") D SET(.VPSARR,123,DFN_";"_CSLTIEN,13,VAL,"REQUEST TYPE") ; REQUEST TYPE
 . S VAL=$$GET1^DIQ(123,CSLTIEN_",",10,"E") D SET(.VPSARR,123,DFN_";"_CSLTIEN,10,VAL) ; SENDING PROVIDER/REQUESTED PC PROVIDER
 . S VAL=$$GET1^DIQ(123,CSLTIEN_",",17,"I") D SET(.VPSARR,123,DFN_";"_CSLTIEN,17,VAL) ; EARLIEST APPT.DATE/SCHEDULED PC APP DATE
 . S VAL=$$GET1^DIQ(123,CSLTIEN_",",3,"I") D SET(.VPSARR,123,DFN_";"_CSLTIEN,3,VAL) ; DATE OF REQUEST
 . S VAL=$$GET1^DIQ(123,CSLTIEN_",",5,"E") D SET(.VPSARR,123,DFN_";"_CSLTIEN,5,VAL) ; URGENCY
 ;
 I 'EXIST D SET(.VPSARR,"E",DFN,"","NO CONSULT DETAIL RECORDS FOUND FOR PATIENT","CONSULT NOT FOUND")
 K ^TMP("GMRCR",$J)
 QUIT
 ;
SET(VPSARR,VPSFL,VPSIEN,VPSFLD,VPSDA,VPSDS) ;Set line item to output array
 I VPSDA'="" D SET^VPSRPC1(.VPSARR,VPSFL,VPSIEN,VPSFLD,VPSDA,$G(VPSDS),3) ;Set line item to output array
 QUIT
