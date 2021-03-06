RMPRPIXA ;HINCIO/ODJ - FILE 661.6 API ;3/8/01
 ;;3.0;PROSTHETICS;**61**;Feb 09, 1996
 Q
 ;
 ; SRCH
SRCH(RMPR,RMPRXREF,RMPRLEV,RMPRT,RMPRFIND,RMPREOF) ;
 N RMPRRET,RMPRK1,RMPRK2,RMPRK3,RMPRK4
 S RMPRRET=0
 S RMPREOF=0
 I RMPRXREF="XHDS" D  G SRCHX
 . S RMPRK1=$G(RMPR("HCPCS"))
 . S RMPRK2=$G(RMPR("DATE&TIME"))
 . S RMPRK3=$G(RMPR("SEQUENCE"))
 . S RMPRK4=$G(RMPR("IEN"))
 . S RMPRFIND=0
 . I RMPRK1="" D
 .. S RMPRK1=$O(^RMPR(661.6,RMPRXREF,""),RMPRT)
 .. Q
 . E  D
 .. I '$D(^RMPR(661.6,RMPRXREF,RMPRK1)) D  Q
 ... S RMPRK1=$O(^RMPR(661.6,RMPRXREF,RMPRK1),RMPRT)
 ... Q
 .. S RMPRFIND=1
 .. Q
 . I RMPRK1="" S RMPREOF=1 Q
 . S RMPR("HCPCS")=RMPRK1
 . I RMPRLEV="HCPCS" Q
 . S RMPRFIND=0
 . I RMPRK2="" D
 .. S RMPRK2=$O(^RMPR(661.6,RMPRXREF,RMPRK1,""),RMPRT)
 .. Q
 . E  D
 .. I '$D(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2)) D  Q
 ... S RMPRK2=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2),RMPRT)
 ... Q
 .. S RMPRFIND=1
 .. Q
 . I RMPRK2="" S RMPREOF=1 Q
 . S RMPR("DATE&TIME")=RMPRK2
 . I RMPRLEV="DATE&TIME" Q
 . S RMPRFIND=0
 . I RMPRK3="" D
 .. S RMPRK3=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,""),RMPRT)
 .. Q
 . E  D
 .. I '$D(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3)) D  Q
 ... S RMPRK3=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3),RMPRT)
 ... Q
 .. S RMPRFIND=1
 .. Q
 . I RMPRK3="" S RMPREOF=1 Q
 . S RMPR("SEQUENCE")=RMPRK3
 . I RMPRLEV="SEQUENCE" Q
 . S RMPRFIND=0
 . I RMPRK4="" D
 .. S RMPRK4=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3,""),RMPRT)
 .. Q
 . E  D
 .. I '$D(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3,RMPRK4)) D  Q
 ... S RMPRK4=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3,RMPRK4),RMPRT)
 ... Q
 .. S RMPRFIND=1
 .. Q
 . I RMPRK4="" S RMPREOF=1 Q
 . S RMPR("IEN")=RMPRK4
 . Q
SRCHX Q RMPRRET
 ;
 ; NEXT
NEXT(RMPR,RMPRXREF,RMPRLEV,RMPRT,RMPROLD,RMPREOF) ;
 N RMPRRET,RMPRK1,RMPRK2,RMPRK3,RMPRK4,RMPRK5,RMPRK6,RMPRK7
 I $G(RMPRT)'=-1 S RMPRT=1
 S RMPRRET=0,RMPREOF=0
 ;
 ; HCPCS, Date&Time, Sequence X-ref
 I RMPRXREF="XHDS" D  G NEXTX
 . S RMPRK1=$G(RMPR("HCPCS"))
 . S RMPRK2=$G(RMPR("DATE&TIME"))
 . S RMPRK3=$G(RMPR("SEQUENCE"))
 . S RMPRK4=$G(RMPR("IEN"))
 . I RMPRLEV="HCPCS" D  Q:RMPREOF
 .. S RMPRK1=$O(^RMPR(661.6,RMPRXREF,RMPRK1),RMPRT)
 .. I RMPRK1="" S RMPREOF=1 K RMPROLD Q
 .. S (RMPRK2,RMPRK3,RMPRK4)=""
 .. Q
 . I RMPRLEV="DATE&TIME",RMPRK1'="" D
 .. S RMPRK2=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2),RMPRT)
 .. I RMPRK2="" S RMPREOF=1
 .. S (RMPRK3,RMPRK4)=""
 .. Q
 . I RMPRLEV="SEQUENCE",RMPRK2'="" D
 .. S RMPRK3=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3),RMPRT)
 .. I RMPRK3="" S RMPREOF=1
 .. S RMPRK4=""
 .. Q
 . I RMPRLEV="",RMPRK3'="" D
 .. S RMPRK4=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3,RMPRK4),RMPRT)
 .. I RMPRK4="" S RMPREOF=1
 .. Q
 . K RMPROLD
 . I RMPREOF D
 .. I RMPRK4="" S:RMPRK3'="" RMPRK3=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3),RMPRT)
 .. I RMPRK3="" S:RMPRK2'="" RMPRK2=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2),RMPRT)
 .. I RMPRK2="" S:RMPRK1'="" RMPRK1=$O(^RMPR(661.6,RMPRXREF,RMPRK1),RMPRT) S:RMPRK1="" RMPREOF=1
 .. Q
 . I RMPRK1="",RMPREOF Q
 . S RMPREOF=0
 . M RMPROLD=RMPR
 . I RMPRK1="" S RMPRK1=$O(^RMPR(661.6,RMPRXREF,""),RMPRT)
 . I RMPRK2="" S RMPRK2=$O(^RMPR(661.6,RMPRXREF,RMPRK1,""),RMPRT)
 . I RMPRK3="" S RMPRK3=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,""),RMPRT)
 . I RMPRK3="" W !,"*** HCPCS = ",RMPRK1,!,"*** DATE = ",RMPRK2,!,"*** is not in file #661.6",!,"*** Please investigate!!!!" Q
 . I RMPRK4="" S RMPRK4=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3,""),RMPRT)
 . S RMPR("HCPCS")=RMPRK1
 . S RMPR("DATE&TIME")=RMPRK2
 . S RMPR("DATE")=$P(RMPRK2,".",1)
 . S RMPR("TIME")=$P(RMPRK2,".",2)
 . S RMPR("SEQUENCE")=RMPRK3
 . S RMPR("IEN")=RMPRK4
 . Q
 ;
 ; Station, Trans. Type, HCPCS, Item, Date&Time, Sequence X-ref.
 I RMPRXREF="ASTHIDS" D  G NEXTX
 . S RMPRK1=$G(RMPR("STATION"))
 . S RMPRK2=$G(RMPR("TRAN TYPE"))
 . S RMPRK3=$G(RMPR("HCPCS"))
 . S RMPRK4=$G(RMPR("ITEM"))
 . S RMPRK5=$G(RMPR("DATE&TIME"))
 . S RMPRK6=$G(RMPR("SEQUENCE"))
 . S RMPRK7=$G(RMPR("IEN"))
 . I RMPRLEV="STATION" D  Q:RMPREOF
 .. S RMPRK1=$O(^RMPR(661.6,RMPRXREF,RMPRK1),RMPRT)
 .. I RMPRK1="" S RMPREOF=1 K RMPROLD Q
 .. S (RMPRK2,RMPRK3,RMPRK4,RMPRK5,RMPRK6,RMPRK7)=""
 .. Q
 . I RMPRLEV="TRAN TYPE",RMPRK1'="" D
 .. S RMPRK2=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2),RMPRT)
 .. I RMPRK2="" S RMPREOF=1
 .. S (RMPRK3,RMPRK4,RMPRK5,RMPRK6,RMPRK7)=""
 .. Q
 . I RMPRLEV="HCPCS",RMPRK2'="" D
 .. S RMPRK3=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3),RMPRT)
 .. I RMPRK3="" S RMPREOF=1
 .. S (RMPRK4,RMPRK5,RMPRK6,RMPRK7)=""
 .. Q
 . I RMPRLEV="ITEM",RMPRK3'="" D
 .. S RMPRK4=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3,RMPRK4),RMPRT)
 .. I RMPRK4="" S RMPREOF=1
 .. S (RMPRK5,RMPRK6,RMPRK7)=""
 .. Q
 . I RMPRLEV="DATE&TIME",RMPRK4'="" D
 .. S RMPRK5=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3,RMPRK4,RMPRK5),RMPRT)
 .. I RMPRK5="" S RMPREOF=1
 .. S (RMPRK6,RMPRK7)=""
 .. Q
 . I RMPRLEV="SEQUENCE",RMPRK5'="" D
 .. S RMPRK6=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3,RMPRK4,RMPRK5,RMPRK6),RMPRT)
 .. I RMPRK6="" S RMPREOF=1
 .. S RMPRK7=""
 .. Q
 . I RMPRLEV="",RMPRK6'="" D
 .. S RMPRK7=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3,RMPRK4,RMPRK5,RMPRK6,RMPRK7),RMPRT)
 .. I RMPRK7="" S RMPREOF=1
 .. Q
 . K RMPROLD
 . I RMPREOF D
 .. I RMPRK7="" S:RMPRK6'="" RMPRK6=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3,RMPRK4,RMPRK5,RMPRK6),RMPRT)
 .. I RMPRK6="" S:RMPRK5'="" RMPRK5=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3,RMPRK4,RMPRK5),RMPRT)
 .. I RMPRK5="" S:RMPRK4'="" RMPRK4=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3,RMPRK4),RMPRT)
 .. I RMPRK4="" S:RMPRK3'="" RMPRK3=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3),RMPRT)
 .. I RMPRK3="" S:RMPRK2'="" RMPRK2=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2),RMPRT)
 .. I RMPRK2="" S:RMPRK1'="" RMPRK1=$O(^RMPR(661.6,RMPRXREF,RMPRK1),RMPRT) S:RMPRK1="" RMPREOF=1
 .. Q
 . I RMPRK1="",RMPREOF Q
 . M RMPROLD=RMPR
 . I RMPRK1="" S RMPRK1=$O(^RMPR(661.6,RMPRXREF,""),RMPRT)
 . I RMPRK2="" S RMPRK2=$O(^RMPR(661.6,RMPRXREF,RMPRK1,""),RMPRT)
 . I RMPRK3="" S RMPRK3=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,""),RMPRT)
 . I RMPRK4="" S RMPRK4=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3,""),RMPRT)
 . I RMPRK5="" S RMPRK5=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3,RMPRK4,""),RMPRT)
 . I RMPRK6="" S RMPRK6=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3,RMPRK4,RMPRK5,""),RMPRT)
 . I RMPRK7="" S RMPRK7=$O(^RMPR(661.6,RMPRXREF,RMPRK1,RMPRK2,RMPRK3,RMPRK4,RMPRK5,RMPRK6,""),RMPRT)
 . S RMPR("STATION")=RMPRK1
 . S RMPR("TRAN TYPE")=RMPRK2
 . S RMPR("HCPCS")=RMPRK3
 . S RMPR("ITEM")=RMPRK4
 . S RMPR("DATE&TIME")=RMPRK5
 . S RMPR("SEQUENCE")=RMPRK6
 . S RMPR("IEN")=RMPRK7
 . Q
NEXTX Q RMPRRET
 ;
 ; CRE
CRE(RMPR616,RMPR6111) ;
 N RMPRRET,RMPRIENA,RMPRFDA,RMPRFME,X,Y,%
 N %,%H,%I,X
 S RMPRRET=0
 ;
 ; Get DATE&TIME for transaction and lock the file
 S RMPR616("DATE&TIME")=""
 F  D  Q:RMPR616("DATE&TIME")'=""
 . D NOW^%DTC
 . I $D(^RMPR(661.6,"XHDS",RMPR616("HCPCS"),%,1)) H (1+$R(3)) Q
 . L +^RMPR(661.6,"XHDS",RMPR616("HCPCS"),%):0 E  Q
 . S RMPR616("DATE&TIME")=%
 . Q
 S RMPRFDA(661.6,"+1,",.01)=RMPR6111("HCPCS")
 S RMPRFDA(661.6,"+1,",2)=RMPR616("DATE&TIME")
 S RMPRFDA(661.6,"+1,",3)=RMPR616("SEQUENCE")
 S RMPRFDA(661.6,"+1,",4)=RMPR616("TRAN TYPE")
 S RMPRFDA(661.6,"+1,",5)=RMPR616("QUANTITY")
 S RMPRFDA(661.6,"+1,",6)=RMPR616("VALUE")
 S RMPRFDA(661.6,"+1,",8)=RMPR616("COMMENT")
 S RMPRFDA(661.6,"+1,",9)=RMPR616("USER")
 S RMPRFDA(661.6,"+1,",11)=RMPR6111("ITEM")
 S RMPRFDA(661.6,"+1,",12)=RMPR616("VENDOR")
 S RMPRFDA(661.6,"+1,",13)=RMPR6111("STATION")
 S RMPRFDA(661.6,"+1,",14)=RMPR616("LOCATION")
 D UPDATE^DIE("","RMPRFDA","RMPRIENA","RMPRFME")
 L -^RMPR(661.6,"XHDS",RMPR616("HCPCS"),RMPR616("DATE&TIME"))
 I $D(RMPRFME) S RMPRRET=1 G CREX
 S RMPR616("IEN")=RMPRIENA(1)
CREX Q RMPRRET
 ;
 ; GET
GET(RMPR) ;
 N RMPRRET,RMPRFME,RMPRIEN,RMPRKEY,RMPRERR,RMPROUP
 S RMPRRET=0
 I $G(RMPR("IEN"))="" D
 . I $G(RMPR("HCPCS"))="" S RMPRRET=1 Q
 . I $G(RMPR("DATE&TIME"))="" S RMPRRET=2 Q
 . S RMPRKEY("HCPCS")=RMPR("HCPCS")
 . S RMPRKEY("DATE&TIME")=RMPR("DATE&TIME")
 . S RMPRERR=$$NEXT(.RMPRKEY,"XHDS","",-1,,.RMPREOF)
 . I RMPRERR S RMPRRET=3 Q
 . I RMPRKEY("SEQUENCE")'=1 S RMPRRET=4 Q
 . S RMPR("IEN")=RMPRKEY("IEN")
 . Q
 I RMPRRET G GETX
 S RMPRIEN=RMPR("IEN")_","
 D GETS^DIQ(661.6,RMPRIEN,"*","","RMPROUP","RMPRFME")
 I $D(RMPRFME) S RMPRRET=5 G GETX
 S RMPR("HCPCS")=RMPROUP(661.6,RMPRIEN,.01)
 S RMPR("DATE&TIME")=RMPROUP(661.6,RMPRIEN,2)
 S RMPR("SEQUENCE")=RMPROUP(661.6,RMPRIEN,3)
 S RMPR("TRAN TYPE")=RMPROUP(661.6,RMPRIEN,4)
 S RMPR("QUANTITY")=RMPROUP(661.6,RMPRIEN,5)
 S RMPR("VALUE")=RMPROUP(661.6,RMPRIEN,6)
 S RMPR("COMMENT")=RMPROUP(661.6,RMPRIEN,8)
 S RMPR("USER")=RMPROUP(661.6,RMPRIEN,9)
 S RMPR("ITEM")=RMPROUP(661.6,RMPRIEN,11)
 S RMPR("VENDOR")=RMPROUP(661.6,RMPRIEN,12)
 S RMPR("STATION")=RMPROUP(661.6,RMPRIEN,13)
 S RMPR("LOCATION")=RMPROUP(661.6,RMPRIEN,14)
GETX Q RMPRRET
