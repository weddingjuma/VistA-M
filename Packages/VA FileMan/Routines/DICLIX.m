DICLIX ;SEA/TOAD,SF/TKW-FileMan: Lister, Search Compound Indexes ;6/5/00  10:13
 ;;22.2;VA FileMan;;Jan 05, 2016;Build 42
 ;;Per VA Directive 6402, this routine should not be modified.
 ;;Submitted to OSEHRA 5 January 2015 by the VISTA Expertise Network.
 ;;Based on Medsphere Systems Corporation's MSC FileMan 1051.
 ;;Licensed under the terms of the Apache License, Version 2.0.
 ;
WALK(DIFLAGS,DINDEX,DIDENT,DIFILE,DIEN,DIFIEN,DISCREEN,DILIST,DINDEX0,DIXV,DIC) ;
 ;
 ; a walker to traverse a compound index, taking actions
 ; DINDEX is an array describing the index and how to walk it
 ;
PREP ; prepare to loop through subscript
 ;
 N DISUB S DISUB=DINDEX("AT")
 N DIVAL S DIVAL=DINDEX(DISUB)
 N DIPART,DIMORE S DIPART=$G(DINDEX(DISUB,"PART")),DIMORE=+$G(DINDEX(DISUB,"MORE?"))
 I $G(DINDEX(DISUB,"USE")),DIVAL'="" D
 . S DIVAL=$O(@DINDEX(DISUB,"ROOT")@(DIVAL),-DINDEX(DISUB,"WAY"))
 ;
LOOP ; loop through subscripts
 ;
 N DIDONE,DISKIP S DIDONE=0 F  D  Q:DIDONE!$G(DIERR)
 . S DIVAL=$O(@DINDEX(DISUB,"ROOT")@(DIVAL),DINDEX(DISUB,"WAY"))
 .
DATA . ; if we're in the data subscripts, we need to walk further
 .
 . I DISUB'>DINDEX("#") D  Q
 . . I DISUB=1,$O(DIXV(0)) D LOWSUB
 . . S DISKIP=0
 . . I DIVAL'="",'$D(DINDEX(DISUB,"IXROOT")) D CHK Q:DISKIP
 . . S:DIVAL="" DIDONE=1
 . . Q:DIDONE
 . . S DINDEX(DISUB)=DIVAL,DINDEX("AT")=DISUB+1
 . . I $D(DINDEX("ROOTCNG",DISUB+1)) D BLDTMP^DICLIX1(.DINDEX,.DISCREEN,DIFLAGS,.DIDENT)
 . . D WALK(.DIFLAGS,.DINDEX,.DIDENT,.DIFILE,.DIEN,DIFIEN,.DISCREEN,.DILIST,.DINDEX0,"",.DIC)
 . . S DINDEX("AT")=DISUB
 . . I $G(DINDEX("DONE"))!$G(DIERR) S DIDONE=1
 . . Q
 .
IEN . ; otherwise, we're in the IEN subscripts & need to process
 .
 . I DIVAL="" S DIDONE=1 Q
 . I DINDEX="B" N DISKIPMN,DIMNEM S DISKIPMN=0 D  Q:DISKIPMN
 . . I $D(@DINDEX(DISUB,"ROOT")@(DIVAL))#2 Q:'^(DIVAL)
 . . E  Q:'$O(@DINDEX(DISUB,"ROOT")@(DIVAL,""))
 . . I DIFLAGS["M" S DISKIPMN=1 Q
 . . S DIMNEM="" Q
 . I $G(DINDEX(DISUB,"TO")) D  Q:DIDONE
 . . Q:$D(DINDEX(DISUB,"IXROOT"))
 . . D BACKPAST^DICLIX1(DIFLAGS,.DINDEX,DISUB,DIVAL,.DIDONE) Q
 . D TRY
 . Q
CLEAN ; clean up after loop, exit
 S DINDEX(DISUB)=""
 I DISUB>1,$G(DINDEX(DISUB,"PART"))]"" S DINDEX(DISUB)=DINDEX(DISUB,"FROM")
 Q
 ;
CHK ; See whether we have a match or are at the end of the subscripts.
 D MATCH I DIDONE,'$G(DINDEX("DONE")),DIMORE D
 . S DIDONE=0 D FINDMORE^DICLIX0(DISUB,.DIVAL,DIPART,.DINDEX,.DIMORE) I DIVAL="" S DIDONE=1 Q
 . D MATCH Q
 Q
 ;
MATCH ; No more subscripts or partial matches, or past our TO value?
 Q:DIVAL=""
 I $P(DIVAL,$G(DIPART))'="" S DIDONE=1 Q
 Q:$G(DINDEX(DISUB,"TO"))=""
 I DIFLAGS["p" D BACKPAST^DICLIX1(DIFLAGS,.DINDEX0,DISUB,DIVAL,.DIDONE) Q
 I $G(DINDEX(DISUB+1,"TO"))="" D BACKPAST^DICLIX1(DIFLAGS,.DINDEX,DISUB,DIVAL,.DIDONE)
 Q
 ;
LOWSUB ; Find next subscript value from multiple pointed-to files
 N I,DILOWNO,DILOWVAL S DILOWNO=+DIFILE("STACK"),DILOWVAL=DIVAL
 I DILOWVAL="" D  I 'DILOWNO K DIXV Q
 . K DIXV(DILOWNO),DIFILE("STACKEND",DILOWNO)
 . S DILOWNO=$O(DIXV(0)),DILOWVAL=$G(DIXV(+DILOWNO,1,"NXTVAL"))
 . Q
 N J S J=DILOWNO
 I DILOWVAL'="" F I=0:0 S I=$O(DIFILE("STACKEND",I)) Q:'I  I I'=J D
 . I DINDEX(1,"WAY")=1,DILOWVAL']]DIXV(I,1,"NXTVAL") Q
 . I DINDEX(1,"WAY")=-1,DIXV(I,1,"NXTVAL")']]DILOWVAL Q
 . S DILOWNO=I,DILOWVAL=$G(DIXV(DILOWNO,1,"NXTVAL"))
 . Q
 I DILOWNO'=DIFILE("STACK") D
 . I DIVAL'="" S DIXV(+DIFILE("STACK"),1,"NXTVAL")=DIVAL
 . S DIFILE("STACK")=DILOWNO_U_DIFILE("STACKEND",DILOWNO)
 . S DIVAL=DILOWVAL
 . S DIFILE=+$P(DIFILE("STACK"),U,3)
 . M DINDEX=DIXV(DILOWNO) Q
 Q
 ;
TRY ; Apply screens to entry.  If passed, add entry to output.
 S (DIEN,DINDEX(DISUB))=DIVAL
 I DIFLAGS["p" D
 . S DINDEX0(1,"EXT")=DINDEX(1)
 . D BACKTRAK^DICL3(.DIFLAGS,.DIFILE,DIFILE("STACK"),.DIEN,DIFIEN,.DINDEX0,.DINDEX,.DIDENT,.DISCREEN,.DILIST)
 . S:$G(DINDEX0("DONE")) (DIDONE,DINDEX("DONE"))=1 Q
 I DIFLAGS'["p" D
 . N DI0NODE S DI0NODE=$G(@DIFILE(DIFILE)@(DIEN,0))
 . Q:$$SCREEN^DICL2(.DIFILE,.DIEN,DIFLAGS,DIFIEN,.DISCREEN,.DINDEX,DI0NODE)
 . D ACCEPT^DICL2(.DIFILE,.DIEN,.DIFLAGS,DIFIEN,.DINDEX,.DIDENT,.DILIST,DI0NODE)
 . Q
 Q:$G(DIERR)!($G(DINDEX("DONE")))
 I DIDENT(-1)=DIDENT(-1,"MAX") D
 . I 'DIDENT(-1,"JUST LOOKING") S DIDONE=1,DINDEX("DONE")=1 Q
 . ; If called from online DIC help ^DICQ, display list.
 . Q:DIFLAGS'["h"
 . K DTOUT,DUOUT S DICQ(0,"MAP")=DIDENT(-3)
 . D DSP^DICQ1(.DINDEX,.DICQ,.DIC,.DIFILE)
 . I $G(DTOUT)!($G(DUOUT)) S (DINDEX("DONE"),DIDONE)=1 Q
 . S DILIST("ORDER")=$S(DINDEX("WAY")=1:0,1:DIDENT(-1,"MAX")+1)
 . S DIDENT(-1)=0,DIDENT(-1,"JUST LOOKING")=0 Q
 Q
 ;
 ;
