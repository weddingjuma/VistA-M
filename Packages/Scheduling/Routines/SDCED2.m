SDCED2 ;ALB/JCH - VSE ENCOUNTER XREF ; 19 Oct 14  04:11PM
 ;;5.3;Scheduling;**628**;Aug 13, 1993;Build 371
 ;;
 Q
 ;
APPT(SDNODE,SDRPTYP,SDDT,SDFAC,SDIV,SDGRP,SDCL,SDPRV,DTRANGE,TMPMON,TMPQRT,TMPYR,SDWEEKS) ; Aggregate  Appointment information by Year/Quarter/Month/Week/Date
 N SDAPPND,SDLEN,SDTOT,TMPND,DTNAM,SDGLR,SDGLF,SDTOT,SDLEN,SDSTAT,SDSTATOT,SUFFIX
 N APPLEN,DIC,DR
 S SDAPPND=$G(^XTMP(SDNODE,"Date",SDRPTYP,SDDT,SDFAC,SDIV,SDGRP,SDCL,SDPRV,"APP"))
 ;
 S TMPDT=SDDT
 Q:'$G(SDGRP)
 ;
 ; Appointment Lengths and Statuses - Get smallest (Date) increment at full (unique) path, add to all increments and subtotals (Group/Provider totals)
 N SDLG,SDLG2
 D SDGRP^SDECXUTL(+SDCL,.SDLG)
 S SDLEN="" F  S SDLEN=$O(^XTMP(SDNODE,"Date",SDRPTYP,SDDT,SDFAC,SDIV,SDGRP,SDCL,SDPRV,"APP","LEN",SDLEN)) Q:'SDLEN  D
 .S SDLG2="" F  S SDLG2=$O(^XTMP(SDNODE,"Date",SDRPTYP,SDDT,SDFAC,SDIV,SDGRP,SDCL,SDPRV,"APP","LEN",SDLEN,SDLG2)) Q:SDLG2=""  D
 ..S SDTOT=$G(^XTMP(SDNODE,"Date",SDRPTYP,SDDT,SDFAC,SDIV,SDGRP,SDCL,SDPRV,"APP","LEN",SDLEN,SDLG2))
 ..Q:SDTOT=""
 ..;
 ..; New Overbook^New^Estab
 ..; --------------------------------------------------------------------------------------------------
 ..; 1. Aggregate appointments' overbooks, new, and established values
 ..S SDAPPND=$G(^XTMP(SDNODE,"Date",SDRPTYP,SDDT,SDFAC,SDIV,SDGRP,SDCL,SDPRV,"APP","LEN",SDLEN,SDLG2))
 ..S SDGLR="^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC"
 ..;  Aggregate Annual, Quarterly, Monthly, Weekly Group, Division, Clinic, Provider
 ..F DTNAM="Year","Month","Week","Quarter","Date" D
 ...D AGGSET("^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC,""APP"",""DEM"")",DTNAM,SDAPPND)
 ...D AGGSET("^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC,""APP"",""LEN"",SDLEN,SDLG2)",DTNAM,SDAPPND)
 ...D AGGSET("^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC,SDIV,""APP"",""LEN"",SDLEN,SDLG2)",DTNAM,SDAPPND)
 ...D AGGSET("^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC,SDIV,SDGRP,""APP"",""LEN"",SDLEN,SDLG2)",DTNAM,SDAPPND)
 ...D AGGSET("^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC,SDIV,SDGRP,SDCL,""APP"",""LEN"",SDLEN,SDLG2)",DTNAM,SDAPPND)
 ...D AGGSET("^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC,""FAC"",SDGRP,SDCL,""APP"",""LEN"",SDLEN,SDLG2)",DTNAM,SDAPPND)
 ...I DTNAM'="Date" D AGGSET("^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC,SDIV,SDGRP,SDCL,SDPRV,""APP"",""LEN"",SDLEN,SDLG2)",DTNAM,SDAPPND)
 ..;
 ..; Don't add each group to facility and division totals - already done with group 0 (all)
 ..;
 ..; Provider Specific - Aggregate overbooks, new, and established for Provider Specific Annual, Quarterly, Monthly, Weekly, Daily totals
 ..S SDGLR="^XTMP(SDNODE,""PROVIDER"",DTNAM,SDRPTYP,TMPDT"
 ..F DTNAM="Year","Quarter","Month","Week","Date" D
 ...D AGGSET("^XTMP(SDNODE,""PROVIDER"",DTNAM,SDRPTYP,TMPDT,""FAC"",SDFAC,SDPRV,""APP"",""LEN"",SDLEN,SDLG2)",DTNAM,SDAPPND)
 ...D AGGSET("^XTMP(SDNODE,""PROVIDER"",DTNAM,SDRPTYP,TMPDT,""FAC"",SDFAC,""CLIN"",SDCL,""PROV"",SDPRV,""APP"",""LEN"",SDLEN,SDLG2)",DTNAM,SDAPPND)
 ...D AGGSET("^XTMP(SDNODE,""PROVIDER"",DTNAM,SDRPTYP,TMPDT,""DIV"",SDIV,SDPRV,""APP"",""LEN"",SDLEN,SDLG2)",DTNAM,SDAPPND)
 ...D AGGSET("^XTMP(SDNODE,""PROVIDER"",DTNAM,SDRPTYP,TMPDT,""DIV"",SDIV,""CLIN"",SDCL,SDPRV,""APP"",""LEN"",SDLEN,SDLG2)",DTNAM,SDAPPND)
 ...D AGGSET("^XTMP(SDNODE,""PROVIDER"",DTNAM,SDRPTYP,TMPDT,""GRP"",SDGRP,""PROV"",SDPRV,""APP"",""LEN"",SDLEN,SDLG2)",DTNAM,SDAPPND)
 ...D AGGSET("^XTMP(SDNODE,""PROVIDER"",DTNAM,SDRPTYP,TMPDT,""GRP"",SDGRP,""CLIN"",SDCL,SDPRV,""APP"",""LEN"",SDLEN,SDLG2)",DTNAM,SDAPPND)
 ...D AGGSET("^XTMP(SDNODE,""PROVIDER"",DTNAM,SDRPTYP,TMPDT,SDIV,""GRP"",SDGRP,SDPRV,""APP"",""LEN"",SDLEN,SDLG2)",DTNAM,SDAPPND)
 ..;
 ..;  Group Specific by Facility - Appointment Lengths - Aggregate Resource Group Specific, Facility totals Annually, Quarterly, Monthly, Weekly, Daily
 ..S SDGLR="^XTMP(SDNODE,""GROUP"",DTNAM,SDRPTYP,TMPDT,SDFAC" D
 ...F DTNAM="Year","Quarter","Month","Week","Date" D
 ....S SDGLF=SDGLR_",SDGRP,""APP"",""LEN"",SDLEN,SDLG2)" D AGGSET(SDGLF,DTNAM,SDTOT)
 ..;
 ..; Appointment Statuses, by appt length
 ..S SDSTAT="" F  S SDSTAT=$O(^XTMP(SDNODE,"Date",SDRPTYP,SDDT,SDFAC,SDIV,SDGRP,SDCL,SDPRV,"APP","LEN",SDLEN,"STAT",SDSTAT)) Q:SDSTAT=""  D
 ...S SDSTATOT=$P($G(^XTMP(SDNODE,"Date",SDRPTYP,SDDT,SDFAC,SDIV,SDGRP,SDCL,SDPRV,"APP","LEN",SDLEN,"STAT",SDSTAT)),"^")
 ...; 
 ...; 1. Full Path - Appointment Statuses by Appt Length- Aggregate Annual, Quarterly, Monthly, Weekly by Group, Division, Clinic, Provider
 ...S SDGLR="^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC"
 ...F DTNAM="Year","Month","Week","Quarter","Date" D
 ....I $G(DTRANGE) Q:'(DTNAM="Date")
 ....N SUFFIX S SUFFIX=",""APP"",""LEN"",SDLEN,""STAT"",SDSTAT)"
 ....D AGGSET("^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC,""APP"",""LEN"",SDLEN,""STAT"",SDSTAT)",DTNAM,SDSTATOT)
 ....D AGGSET("^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC,SDIV,""APP"",""LEN"",SDLEN,""STAT"",SDSTAT)",DTNAM,SDSTATOT)
 ....D AGGSET("^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC,SDIV,SDGRP,""APP"",""LEN"",SDLEN,""STAT"",SDSTAT)",DTNAM,SDSTATOT)
 ....D AGGSET("^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC,SDIV,SDGRP,SDCL,""APP"",""LEN"",SDLEN,""STAT"",SDSTAT)",DTNAM,SDSTATOT)
 ....D AGGSET("^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC,""FAC"",SDGRP,SDCL,""APP"",""LEN"",SDLEN,""STAT"",SDSTAT)",DTNAM,SDSTATOT)
 ....I DTNAM'="Date" D AGGSET("^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC,SDIV,SDGRP,SDCL,SDPRV,""APP"",""LEN"",SDLEN,""STAT"",SDSTAT)",DTNAM,SDSTATOT)
 ...;
 ...; 2. Group Specific by Facility - Appointment Statuses - Aggregate Resource Group Specific, Facility totals Annually, Quarterly, Monthly, Weekly, Daily
 ...S SDGLR="^XTMP(SDNODE,""GROUP"",DTNAM,SDRPTYP,TMPDT,SDFAC" D
 ....F DTNAM="Year","Quarter","Month","Week","Date" D
 .....S SDGLF="^XTMP(SDNODE,""GROUP"",DTNAM,SDRPTYP,TMPDT,SDFAC,SDGRP,""APP"",""LEN"",SDLEN,""STAT"",SDSTAT)" D AGGSET(SDGLF,DTNAM,SDSTATOT)
 ...;
 ...; 3. Provider Specific - Appointment Statuses - Provider Specific Annual, Quarterly, Monthly, Weekly, Daily totals
 ...F DTNAM="Year","Quarter","Month","Week","Date" D
 ....I $G(DTRANGE) Q:DTNAM'="Date"
 ....D AGGSET("^XTMP(SDNODE,""PROVIDER"",DTNAM,SDRPTYP,TMPDT,""FAC"",SDFAC,SDPRV,""APP"",""LEN"",SDLEN,""STAT"",SDSTAT)",DTNAM,SDSTATOT)
 ....D AGGSET("^XTMP(SDNODE,""PROVIDER"",DTNAM,SDRPTYP,TMPDT,""FAC"",SDFAC,""CLIN"",SDCL,""PROV"",SDPRV,""APP"",""LEN"",SDLEN,""STAT"",SDSTAT)",DTNAM,SDSTATOT)
 ....D AGGSET("^XTMP(SDNODE,""PROVIDER"",DTNAM,SDRPTYP,TMPDT,""DIV"",SDIV,SDPRV,""APP"",""LEN"",SDLEN,""STAT"",SDSTAT)",DTNAM,SDSTATOT)
 ....D AGGSET("^XTMP(SDNODE,""PROVIDER"",DTNAM,SDRPTYP,TMPDT,""DIV"",SDIV,""CLIN"",SDCL,SDPRV,""APP"",""LEN"",SDLEN,""STAT"",SDSTAT)",DTNAM,SDSTATOT)
 ....D AGGSET("^XTMP(SDNODE,""PROVIDER"",DTNAM,SDRPTYP,TMPDT,""GRP"",SDGRP,""PROV"",SDPRV,""APP"",""LEN"",SDLEN,""STAT"",SDSTAT)",DTNAM,SDSTATOT)
 ....D AGGSET("^XTMP(SDNODE,""PROVIDER"",DTNAM,SDRPTYP,TMPDT,""GRP"",SDGRP,""CLIN"",SDCL,SDPRV,""APP"",""LEN"",SDLEN,""STAT"",SDSTAT)",DTNAM,SDSTATOT)
 ....D AGGSET("^XTMP(SDNODE,""PROVIDER"",DTNAM,SDRPTYP,TMPDT,SDIV,""GRP"",SDGRP,SDPRV,""APP"",""LEN"",SDLEN,""STAT"",SDSTAT)",DTNAM,SDSTATOT)
 Q
 ;
SUP ; Appointment supply
 N SDSUP,CLNAM,SDAPPND,TMPDT,DTNAM
 ;
 Q:$P($G(SDPRV),"^",2)  ; Providers do not have supply/slots, only clinics
 N CLNAM S CLNAM=$S($G(SDCL):$P($G(^SC(+SDCL,0)),"^"),1:$P(SDCL,"^"))
 S SDAPPND=$G(^XTMP(SDNODE,"Date",SDRPTYP,SDDT,SDFAC,SDIV,SDGRP,SDCL,"APP","SUP"))
 Q:SDAPPND=""
 Q:'$G(SDGRP)
 S TMPDT=SDDT
 ;
 ; 1. Full Path - Aggregate supply
 F DTNAM="Year","Month","Week","Quarter","Date" D
 .I $G(DTRANGE) Q:DTNAM'="Date"
 .; Don't add each group to facility and division totals - already done with group 0 (all)
 .D AGGSET("^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC,""APP"",""SUP"")",DTNAM,SDAPPND)
 .D AGGSET("^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC,SDIV,""APP"",""SUP"")",DTNAM,SDAPPND)
 .D AGGSET("^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC,SDIV,SDGRP,""APP"",""SUP"")",DTNAM,SDAPPND)
 .D AGGSET("^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC,""GRP"",SDGRP,""APP"",""SUP"")",DTNAM,SDAPPND)
 .D AGGSET("^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC,""CLIN"",SDGRP,SDCL,""APP"",""SUP"")",DTNAM,SDAPPND)
 .I DTNAM'="Date" D AGGSET("^XTMP(SDNODE,DTNAM,SDRPTYP,TMPDT,SDFAC,SDIV,SDGRP,SDCL,""APP"",""SUP"")",DTNAM,SDAPPND)
 .;I SDRPTYP="M" W !,"SDGRP:",SDGRP,!?5,"-SDIV:",SDIV,!?5,"-SDCL:",SDCL,!?5,"-SDAPPND:",SDAPPND
 ;
 ; Supply
 F DTNAM="Year","Quarter","Month","Week","Date" D
 .S SDGLF="^XTMP(SDNODE,""GROUP"",DTNAM,SDRPTYP,TMPDT,SDFAC,SDGRP,""APP"",""SUP"")" D AGGSET(SDGLF,DTNAM,SDAPPND)
 ;
 Q
 ;
AGGLEN(SDGLOB,DTNAM,PRVND) ; Perform generic aggregation of Pn values into SDGLOB
 N I,TMPDT,TOT,AGGDATA
 S TMPDT=$S(DTNAM="Year":TMPYR,DTNAM="Quarter":TMPQRT,DTNAM="Month":TMPMON,DTNAM="Week":TMPWK,1:SDDT)
 S TOT=$P($G(@(SDGLOB)),"^")
 S AGGDATA=TOT+PRVND
 S $P(@(SDGLOB),"^")=AGGDATA
 Q
 ;
AGGSET(SDGLOB,DTNAM,PRVND) ; Perform generic aggregation of Pn values into SDGLOB
 N I,TMPDT,TOT,AGGDATA,TMPWK
 S TMPWK=$$GETWEEK^SDCED1(SDDT,.SDWEEKS)
 S TMPDT=$S(DTNAM="Year":TMPYR,DTNAM="Quarter":TMPQRT,DTNAM="Month":TMPMON,DTNAM="Week":TMPWK,1:SDDT)
 S TOT=$G(@(SDGLOB))
 F I=1:1:$L(PRVND,"^") S $P(AGGDATA,"^",I)=($P(TOT,"^",I)+$P(PRVND,"^",I))
 S @(SDGLOB)=AGGDATA
 Q
 ;
GETSUP2(CLIN,SUPDT) ; Get supply for date SUPDT
 N SLOTS,LEN,SDSUP,MAX
 S SDSUP=""
 K ^TMP("SD",$J),^TMP("SDS",$J),^TMP("SDTMP",$J),^TMP("SDTOT",$J)
 Q:'CLIN SDSUP
 ;S X1=SUPDT,X2=SUPDT D ^%DTC S MAX=X+1
 D INIT^SCRPW71 S SLOTS=+$$CLINIC^SCRPW71(CLIN,"S",SUPDT,SUPDT,1,1)
 Q:'SLOTS SDSUP
 S LEN=+$P($G(^SC(CLIN,"SL")),U)
 I LEN S SDSUP=(LEN*SLOTS)/60
 Q SDSUP
 ;
APPLEN(CLIN)  ; Get appt length
 N DIE,DIQ,DIR,DA,X,Y
 S DIQ(0)="I",DIC=44,DA=+$G(CLIN),DR="1912"
 D GETS^DIQ(DIC,DA,DR,"I","APPLEN")
 S APPLEN=$G(APPLEN(DIC,DA_",",1912,"I"))
 Q APPLEN
 ;
