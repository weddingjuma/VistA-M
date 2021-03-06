RMPRPIU9 ;HINCIO/ODJ - PIP STOCK RECONCILE UPDATE UTILITY;3/8/01
 ;;3.0;PROSTHETICS;**61**;Feb 09, 1996
 Q
 ;
 ;***** REC - Create a Stock Reconciliation Transaction
 ;
 ; Inputs:
 ;    RMPR6  -
 ;    RMPR11 -
 ;    RMPR5  -
 ;
 ; Outputs:
 ;    RMPRERR -
 ;
REC(RMPR6,RMPR11,RMPR5) ;
 N RMPRERR,RMPRCSTK,RMPRQGL,RMPRVGL,RMPRD,RMPRT,RMPR,RMPRUCST
 S RMPRERR=0
 ;
 ; Lock the current stock 661.7 file at HCPCS Item level as we may be
 ; reducing or increasing the quantity on hand
 L +^RMPR(661.7,"XSLHIDS",RMPR11("STATION IEN"),RMPR5("IEN"),RMPR11("HCPCS"),RMPR11("ITEM"))
 ;
 ; Get current quantity on hand
 S RMPRCSTK("STATION IEN")=RMPR11("STATION IEN")
 S RMPRCSTK("HCPCS")=RMPR11("HCPCS")
 S RMPRCSTK("ITEM")=RMPR11("ITEM")
 S RMPRCSTK("UNIT")=$G(RMPR11("UNIT"))
 S RMPRCSTK("LOCATION IEN")=RMPR5("IEN")
 S RMPRCSTK("VENDOR IEN")=RMPR6("VENDOR IEN")
 S RMPRERR=$$STOCK^RMPRPIUE(.RMPRCSTK)
 I RMPRERR S RMPRERR=11 G RECU ;error 11 - problem getting current qoh
 S RMPRQGL=RMPR6("QUANTITY")-RMPRCSTK("QOH") ;gain/loss
 S RMPRUCST=""
 I $G(RMPR6("NEW UNIT COST"))'="" S RMPRUCST=RMPR6("NEW UNIT COST")
 ;
 ; If not showing any quantity on hand then use the unit cost
 ; of the most recent receipt or reconciliation transaction
 I RMPRUCST="",RMPRCSTK("QOH")=0 D
 . F RMPRT=3,9 D  Q:RMPRERR!(RMPRD'="")
 .. S RMPRD=$O(^RMPR(661.6,"ASTHIDS",RMPR11("STATION IEN"),RMPRT,RMPR11("HCPCS"),RMPR11("ITEM"),""),-1)
 .. Q:RMPRD=""
 .. K RMPR
 .. S RMPR("IEN")=$QS($Q(^RMPR(661.6,"ASTHIDS",RMPR11("STATION IEN"),RMPRT,RMPR11("HCPCS"),RMPR11("ITEM"),RMPRD)),9)
 .. S RMPRERR=$$GET^RMPRPIX6(.RMPR)
 .. Q:RMPRERR
 .. S:+RMPR("QUANTITY") RMPRUCST=RMPR("VALUE")/RMPR("QUANTITY")
 .. Q
 . Q
 E  D
 . S:RMPRUCST="" RMPRUCST=RMPRCSTK("UNIT COST")
 . Q
 I RMPRUCST="" D
 . S RMPRUCST=0
 . I +RMPR6("QUANTITY"),+$G(RMPR6("VALUE")) D
 .. S RMPRUCST=RMPR6("VALUE")/RMPR6("QUANTITY")
 .. Q
 . Q
 I RMPRERR S RMPRERR=12 G RECU ;error 12 problem with cost
 ;
 ; calculate the gain/loss for value
 S RMPRVGL=$J(RMPRQGL*RMPRUCST,0,2)
 ;
 ; Create a 661.6 Reconciliation Transaction record
 S RMPR6("COMMENT")=$G(RMPR6("COMMENT"))
 S RMPR6("SEQUENCE")=1
 S RMPR6("TRAN TYPE")=9
 S RMPR6("LOCATION")=RMPR5("IEN")
 S RMPR6("USER")=$G(DUZ)
 S RMPR6("VENDOR")=RMPR6("VENDOR IEN")
 S RMPR6("VALUE")=$J(RMPR6("QUANTITY")*RMPRUCST,0,2)
 K RMPR6("IEN")
 S RMPR11("STATION")=RMPR11("STATION IEN")
 S RMPRERR=$$CRE^RMPRPIX6(.RMPR6,.RMPR11)
 I RMPRERR S RMPRERR=61 G RECU ;error 61 if problem with 661.6
 ;
 ; Create 661.69 Gain/Loss record
 K RMPR
 S RMPR("TRANS IEN")=RMPR6("IEN")
 S RMPR("GAIN/LOSS")=RMPRQGL
 S RMPR("GAIN/LOSS VALUE")=RMPRVGL
 S RMPRERR=$$CRE^RMPRPIXB(.RMPR)
 I RMPRERR S RMPRERR=61 G RECU ;error 61 if problem with 661.69
 ;
 ; Adjust stock for gain/loss
 I RMPRQGL=0 G RECU ;no gain loss so just exit
 I RMPRQGL>0 G RECGN ;adjust for stock gain
 ;
 ; Adjust for stock loss
RECLS K RMPR
 S RMPR("STATION IEN")=RMPR11("STATION IEN")
 S RMPR("LOCATION IEN")=RMPR5("IEN")
 S RMPR("HCPCS")=RMPR11("HCPCS")
 S RMPR("ITEM")=RMPR11("ITEM")
 S RMPR("UNIT")=$G(RMPR11("UNIT"))
 S RMPR("VENDOR IEN")=RMPR6("VENDOR IEN")
 S RMPR("ISSUED QTY")=0-RMPRQGL
 S RMPR("ISSUED VALUE")=0-RMPRVGL
 S RMPRERR=$$FIFO^RMPRPIUF(.RMPR)
 I RMPRERR S RMPRERR=71 G RECU ;error 71 problem with adjusting
 K RMPR
 S RMPR("STA")=RMPR11("STATION IEN")
 S RMPR("HCP")=RMPR11("HCPCS")
 S RMPR("ITE")=RMPR11("ITEM")
 S RMPR("RDT")=$P(RMPR6("DATE&TIME"),".",1)
 S RMPR("TQTY")=RMPRQGL
 S RMPR("TCST")=RMPRVGL
 S RMPRERR=$$UPCR^RMPRPIXJ(.RMPR)
 I RMPRERR S RMPRERR=71
 G RECU
 ;
 ; Adjust for stock gain
RECGN K RMPR
 S RMPR("STATION")=RMPR11("STATION IEN")
 S RMPR("LOCATION")=RMPR5("IEN")
 S RMPR("HCPCS")=RMPR11("HCPCS")
 S RMPR("ITEM")=RMPR11("ITEM")
 S RMPR("UNIT")=$G(RMPR11("UNIT"))
 S RMPR("VENDOR")=RMPR6("VENDOR IEN")
 S RMPR("QUANTITY")=RMPRQGL
 S RMPR("VALUE")=RMPRVGL
 S RMPR("DATE&TIME")=$G(RMPR6("DATE&TIME"))
 S RMPR("SEQUENCE")=RMPR6("SEQUENCE")
 S RMPRERR=$$REVI^RMPRPIU1(.RMPR)
 I RMPRERR S RMPRERR=71
 G RECU
 ;
 ; exit points
RECU L -^RMPR(661.7,"XSLHIDS",RMPR11("STATION IEN"),RMPR5("IEN"),RMPR11("HCPCS"),RMPR11("ITEM"))
RECX Q RMPRERR
