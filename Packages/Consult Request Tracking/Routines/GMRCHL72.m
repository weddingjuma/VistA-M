GMRCHL72 ;SLC/DCM - HL-7 formats OBX and NTE segments ;11/15/02 07:32
 ;;3.0;CONSULT/REQUEST TRACKING;**1,5,12,15,29**;DEC 27, 1997
 ;
 ; This routine invokes IA #872
 ;
 Q
OBX(GMRCIFN) ;Build the OBX segment of the HL-7 message
 ;GMRCIFN=GMRCIEN - the internal file # of the record from file 123
 N OBXSEGNO,GMRCND,GMRCND1
 S OBXSEGNO=0
 I ORCTRL'="RT",$D(^GMR(123,GMRCIFN,20,0)) S GMRCND=0,GMRCND1=0 D
 . S OBXSEGNO=OBXSEGNO+1
 . S GMRCND=$O(^GMR(123,GMRCIFN,20,GMRCND))
 . S OBX(OBXSEGNO)="OBX|"_OBXSEGNO
 . S OBX(OBXSEGNO)=OBX(OBXSEGNO)_"|TX|2000.02^REASON FOR REQUEST^AS4||"
 . S OBX(OBXSEGNO)=OBX(OBXSEGNO)_^GMR(123,GMRCIFN,20,GMRCND,0)
 . S GMRCND1=GMRCND1+1
 . F  S GMRCND=$O(^GMR(123,GMRCIFN,20,GMRCND)) Q:GMRCND=""  D
 .. S OBX(OBXSEGNO,GMRCND1)=^GMR(123,GMRCIFN,20,GMRCND,0)
 .. S GMRCND1=GMRCND1+1
 .Q
 I $D(^GMR(123,GMRCIFN,30)) S OBXSEGNO=OBXSEGNO+1 D
 . S OBX(OBXSEGNO)="OBX|"_OBXSEGNO
 . N OBXSEG
 . I '$D(^GMR(123,GMRCIFN,30.1)) D
 .. S OBXSEG="|TX|^PROVISIONAL DIAGNOSIS^||"_$G(^GMR(123,GMRCIFN,30))
 . I $D(^GMR(123,GMRCIFN,30.1)) D
 .. S OBXSEG="|CE|^PROVISIONAL DIAGNOSIS^||"_^GMR(123,GMRCIFN,30.1)_U
 .. S OBXSEG=OBXSEG_$P(^GMR(123,GMRCIFN,30),(" ("_^(30.1)))_U_"I9C"
 . S OBX(OBXSEGNO)=OBX(OBXSEGNO)_OBXSEG
 I ORCTRL="RE",$L($P(^GMR(123,GMRCIFN,0),U,19)) D
 . S OBXSEGNO=OBXSEGNO+1
 . S OBX(OBXSEGNO)="OBX|"_OBXSEGNO
 . N OBXSEG
 . S OBXSEG="|TX|^SIG FINDINGS^|1|"_$P(^GMR(123,GMRCIFN,0),U,19)
 . S OBX(OBXSEGNO)=OBX(OBXSEGNO)_OBXSEG
 Q
 ;
NTE(GMRCFN,GMRCND,GMRCTRL) ;Build the NTE segment of the HL7 message
 ;GMRCND=GMRCOM, an array. GMRCND = flag that a comment exists.
 ;GMRCND(0)= DA = the internal entry in node 40: ^GMR(123,IEN,40,DA
 ;GMRCTRL=HL7 control code from table 119
 Q:'$D(GMRCND(0))  S ND=GMRCND(0)
 S ND2=1,NTE(ND2)="NTE|16|L|"
 I $S($P(^GMR(123,GMRCFN,40,ND,0),"^",2)=6:1,$P(^(0),"^",2)=20:1,$P(^(0),"^",2)=7:1,$P(^(0),"^",2)=5:1,GMRCTRL="XX":1,1:0) D
 .S ND1=0,ND1=$O(^GMR(123,GMRCFN,40,ND,1,ND1)) Q:ND1=""  S NTE(ND2)=NTE(ND2)_^GMR(123,GMRCFN,40,ND,1,ND1,0),ND2=ND2+1
 .F  S ND1=$O(^GMR(123,GMRCFN,40,ND,1,ND1)) Q:ND1=""  S NTE(ND2)=^GMR(123,GMRCFN,40,ND,1,ND1,0),ND2=ND2+1
 .Q
 ;I $P(NTE(1),"|",4)="",$S(GMRCTRL="OD":1,GMRCTRL="OC":1,1:0) S $P(NTE(1),"|",4)=$P(^GMR(123.1,$P(^GMR(123,GMRCFN,40,ND,0),"^",2),0),"^",1)_$S($P(^(0),"^",2)]"":" BY SERVICE",1:"")
 I GMRCTRL="OD"!(GMRCTRL="OC") D
 . N ACTION S ACTION=$P(^GMR(123,GMRCFN,40,ND,0),"^",2) Q:ACTION=""
 . S ACTION=$$GET1^DIQ(123.1,ACTION,.01)
 . S $P(NTE(1),"|",4)=ACTION_" BY SERVICE"
 I $P(NTE(1),"|",4)="",GMRCTRL="XX" S $P(NTE(1),"|",4)=$P(^GMR(123.1,$P(^GMR(123,GMRCFN,40,ND,0),"^",2),0),"^",1)_" "_$S($P(^GMR(123,GMRCFN,40,ND,0),"^",6)]"":$P(^GMR(123.5,$P(^GMR(123,GMRCFN,40,ND,0),"^",6),0),"^",1),1:GMRCSSNM)
 K N,ND1,ND2
 Q
OBR(GMRCIEN,RESBY,GMRCACDT) ;Build the OBR segment of the HL-7 message
 ;GMRCIEN=IEN of the consult from file 123
 ;NOTIFY=Person who is notified when consult is ordered/completed
 ;RESBY=Person entering/interpreting result & signing report- GMRCPROV
 K OBR
 N OI,PROCID,PROCNM,STS,RESTATUS,SERVID,ORCDT,CONLOC,CONSVC,HL7DT
 ;I +$P(^GMR(123,GMRCIEN,0),"^",5)'>0,$S($D(GMRCSSNM):1,+GMRCGRP("ROOT"):1,1:0) S $P(^(0),"^",5)=$S(+GMRCGRP("ROOT"):GMRCGRP("ROOT"),1:$O(^GMR(123.5,"B",GMRCSSNM,0)))
 S STS=$P(^GMR(123,GMRCIEN,0),"^",12),RESTATUS=$S(STS=1:"X",STS=2:"F",STS=5:"O",STS=6:"I",STS=8:"S",STS=9:"R",1:"X")
 S SERVID=$P(^GMR(123,GMRCIEN,0),"^",5),ORCDT=$P(^(0),"^",7),CONLOC=$P(^(0),"^",10) I CONLOC]"" S CONLOC=$S($P(^ORD(101,CONLOC,0),"^",1)["BEDSIDE":"B",$P(^(0),"^",1)["EMERGENCY":"E",1:"OC")
 S NOTIFY=$P(^GMR(123,GMRCIEN,0),"^",11),CONSVC=$S(+SERVID]"":$P($G(^GMR(123.5,+SERVID,0)),"^",1),1:"")
 I +$P(^GMR(123,+GMRCIEN,0),U,8) D
 . S PROCID=+$P(^GMR(123,+GMRCIEN,0),U,8)
 . S PROCNM=$$GET1^DIQ(123.3,PROCID,.01)
 . S OI=PROCID_U_PROCNM_"^99PRC"
 I '$D(OI) S OI=SERVID_U_CONSVC_"^99CON"
 S HL7DT=$$HL7DT^GMRCHL7($S($G(GMRCACDT):GMRCACDT,1:$$NOW^XLFDT))
 S OBR="OBR||||^^^"_OI_"||||||||||||||"_CONLOC_"|"_NOTIFY_"|||"_HL7DT_"|||"_RESTATUS_$S(RESBY]"":"|||||||"_RESBY,1:"")
 K STS,RESTATUS,SERVID,ORCDT,CONLOC,CONSVC,HL7DT
 Q