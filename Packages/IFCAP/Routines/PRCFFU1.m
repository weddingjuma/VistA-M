PRCFFU1 ;WISC/SJG-BUILD FMS SEGMENTS ;11/26/93  16:10
V ;;5.1;IFCAP;;Oct 20, 2000
 ;Per VHA Directive 10-93-142, this routine should not be modified.
 ;
NEW(RECNO,TRCODE,TYCODE) ;
 N NODE0,NODE1,TMPLINE,PRCBUD,PRCCC,PRCSTR,INT
 S NODE0=$G(^PRC(442,RECNO,0))
 S NODE1=$G(^PRC(442,RECNO,1))
 S INT=GECSFMS("DA")
 S PRCCC=+$P(PO(0),U,5)
 S PRCSTR=$$ACC^PRC0C(PRC("SITE"),+$P(PO(0),U,3)_"^"_PRC("FY")_"^"_PRCFA("BBFY"))
DOC ; Build 'DOC' header segments
 S TMPLINE=0
 I TRCODE'="AR" D
 . D MO2^PRCFFU2(NODE1,TYCODE)
 . D MO3^PRCFFU21
 . D MO4^PRCFFU22
 I TRCODE="AR" D
 . D RC2^PRCFFU2A(NODE1,TYCODE)
 . D RC3^PRCFFU2A
 S PRCBUD=$$BUD^PRCFFU3(PRCSTR)
 I PRCFA("MP")=21,TYCODE="M",TRCODE'="MO" S NUMB=1 D LIN Q  ; 1358 modification
 N FMSLIN,FMSNOD S FMSLIN=0 F  S FMSLIN=$O(^PRC(442,RECNO,22,FMSLIN)) Q:FMSLIN=""!(FMSLIN'>0)  S FMSNOD=^PRC(442,RECNO,22,FMSLIN,0) D LIN
 QUIT
 ;
LIN ; Build 'LIN' line segments
 I TRCODE'="AR" D MOA^PRCFFU3
 I TRCODE="AR" D RCA^PRCFFU3A
 Q
