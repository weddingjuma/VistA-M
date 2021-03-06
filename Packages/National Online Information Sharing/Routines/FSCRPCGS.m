FSCRPCGS ;SLC/STAFF-NOIS RPC Site Profile ;1/13/98  15:47
 ;;1.1;NOIS;;Sep 06, 1998
 ;
SITE(SITE) ; from FSCRPCG
 N AZERO,CNT,ELEVEN,FOUR,LINE,NAME,NUM,ONE,ONETHREE,SITENUM,SZERO,TWOONE,TWOFOUR,VALUE,VVER,ZERO
 S SITENUM=+$$STSITE^FSCRPCOC(SITE)
 S CNT=0
 S ZERO=$G(^NTS(2050,SITENUM,0)),ONE=$G(^(1)),FOUR=$G(^(4)),ELEVEN=$G(^(11)),ONETHREE=$G(^(13)),TWOONE=$G(^(21)),TWOFOUR=$G(^(24))
 I '$L(ZERO) Q
 D SET("------------------------------------------------------------------------------",.CNT)
 S LINE="  SITE PROFILE REPORT  "_$P(ZERO,U)
 S VALUE=$$FMTE^XLFDT($$NOW^XLFDT)
 S LINE=$$SETSTR^VALM1(VALUE,LINE,55,$L(VALUE))
 D SET(LINE,.CNT)
 D SET("------------------------------------------------------------------------------",.CNT)
 D SET("FACILITY INFORMATION:",.CNT)
 D SET("=====================",.CNT)
 S LINE="NAME:      "_$P(ZERO,U)
 S LINE=$$SETSTR^VALM1("FACILITY NUMBER:    ",LINE,45,20)_SITENUM
 D SET(LINE,.CNT)
 S LINE="ADDRESS1:  "_$P(ONE,U)
 S LINE=$$SETSTR^VALM1("SUPPORTING ISC:     ",LINE,45,20)_$$VALUE^FSCGET($P(ZERO,U,3),2050,2)
 D SET(LINE,.CNT)
 S LINE="ADDRESS2:  "_$P(ONE,U,2)
 S LINE=$$SETSTR^VALM1("NEW REGION:         ",LINE,45,20)_$P(ZERO,U,8)
 D SET(LINE,.CNT)
 S LINE="CITY:      "_$P(ONE,U,3)
 D SET(LINE,.CNT)
 S LINE="STATE:     "_$$VALUE^FSCGET($P(ONE,U,4),2050,7)
 S LINE=$$SETSTR^VALM1("FTS TELEPHONE NO:   ",LINE,45,20)_$P(ONE,U,6)
 D SET(LINE,.CNT)
 S LINE="ZIP CODE:  "_$P(ONE,U,5)
 S LINE=$$SETSTR^VALM1("COMM. TELEPHONE NO: ",LINE,45,20)_$P(ONE,U,7)
 D SET(LINE,.CNT)
 D SET("",.CNT)
 S LINE="FAX LOCATIONS:               FAX FTS        FAX COMMERCIAL"
 D SET(LINE,.CNT)
 S LINE="                             -------        --------------"
 D SET(LINE,.CNT)
 S NUM=0 F  S NUM=$O(^NTS(2050,SITENUM,19,NUM)) Q:NUM<1  S VALUE=$G(^(NUM,0)) I $L(VALUE) D
 .S LINE="  "_$P(VALUE,U)
 .S LINE=$$SETSTR^VALM1($P(VALUE,U,2),LINE,30,15)_$P(VALUE,U,3)
 .D SET(LINE,.CNT)
 D SET("",.CNT)
 D SET("VAMC STAFF:",.CNT)
 D SET("===========",.CNT)
 S LINE="DIRECTOR:               "_$P(FOUR,U)
 S LINE=$$SETSTR^VALM1($P(FOUR,U,2),LINE,55,20)
 D SET(LINE,.CNT)
 S LINE="ASSOCIATE DIRECTOR:     "_$P(FOUR,U,3)
 S LINE=$$SETSTR^VALM1($P(FOUR,U,4),LINE,55,20)
 D SET(LINE,.CNT)
 S LINE="ASSISTANT DIRECTOR:     "_$P(FOUR,U,9)
 S LINE=$$SETSTR^VALM1($P(FOUR,U,10),LINE,55,20)
 D SET(LINE,.CNT)
 S LINE="CHIEF OF STAFF:          "_$P(FOUR,U,5)
 S LINE=$$SETSTR^VALM1($P(FOUR,U,6),LINE,55,20)
 D SET(LINE,.CNT)
 S LINE="IRM SERVICE CHIEF:       "_$P(TWOONE,U)
 S LINE=$$SETSTR^VALM1($P(TWOONE,U,2),LINE,55,20)
 D SET(LINE,.CNT)
 S LINE="ASST IRM CHIEF:          "_$P(TWOFOUR,U)
 S LINE=$$SETSTR^VALM1($P(TWOFOUR,U,2),LINE,55,20)
 D SET(LINE,.CNT)
 S LINE="SITE MANAGER:           "_$P(FOUR,U,7)
 S LINE=$$SETSTR^VALM1($P(FOUR,U,8),LINE,55,20)
 D SET(LINE,.CNT)
 S LINE="ADP SECURITY OFFICER:    "_$P(ONETHREE,U,5)
 S LINE=$$SETSTR^VALM1($P(ONETHREE,U,6),LINE,55,20)
 D SET(LINE,.CNT)
 D SET("",.CNT)
 S LINE="RANK(1994):"_$P(ZERO,U,7)_"  COMPLEX LEVEL(1994): "_$P(TWOONE,U,6)_"  DHCP SIZING(1994): "_$P(TWOFOUR,U,5)
 D SET(LINE,.CNT)
 D SET("",.CNT)
 S LINE="APPLICATIONS:                              Date Last Updated:  "_$$FMTE^XLFDT($P(ZERO,U,5))
 D SET(LINE,.CNT)
 D SET("=============",.CNT)
 D SET("                                              CUR     V'ED    PACK",.CNT)
 D SET(" APPLICATION    COORDINATOR      PHONE #      VER     VER #   INST.",.CNT)
 D SET("-------------   -----------      -------      -----   ----   -------",.CNT)
 D SET("",.CNT)
 S NAME="" F  S NAME=$O(^DIC(120102,"B",NAME)) Q:NAME=""  S NUM=+$O(^(NAME,0)) I NUM D
 .S VVER=$P($G(^DIC(120102,NUM,0)),U,2)
 .S LINE=$E(NAME,1,13)
 .S AZERO=$G(^NTS(2050,SITENUM,8,NUM,0))
 .S LINE=$$SETSTR^VALM1($P(AZERO,U,2),LINE,17,20)
 .S LINE=$$SETSTR^VALM1($P(AZERO,U,3),LINE,34,15)
 .S LINE=$$SETSTR^VALM1($P(AZERO,U,7),LINE,48,8)
 .S LINE=$$SETSTR^VALM1(VVER,LINE,55,8)
 .I $L($P(AZERO,U,8)) S LINE=$$SETSTR^VALM1($E($P(AZERO,U,8),4,5)_"/"_$E($P(AZERO,U,8),2,3),LINE,63,8)
 .D SET(LINE,.CNT)
 D SET("  *Includes testing and partial package implementation",.CNT)
 D SET("   based on availability of capacity.",.CNT)
 D SET("",.CNT)
 D SET("SYSTEMS SOFTWARE:               Version",.CNT)
 D SET("=================",.CNT)
 S NUM=0 F  S NUM=$O(^NTS(2050,SITENUM,20,NUM)) Q:NUM<1  S SZERO=$G(^(NUM,0)) I $L(SZERO) D
 .S LINE=$$VALUE^FSCGET($P(SZERO,U),2050.013,.01)
 .S LINE=$$SETSTR^VALM1($P(SZERO,U,2),LINE,35,10)
 .D SET(LINE,.CNT)
 D SET("",.CNT)
 D SET("DHCP APPLICATION STATISTICS:",.CNT)
 D SET("============================",.CNT)
 S LINE="TOTAL PATIENTS REGISTERED: "_$G(^NTS(2050,SITENUM,"WLDG"))
 S LINE=$$SETSTR^VALM1("TOTAL CLINICS: ",LINE,37,15)_$G(^NTS(2050,SITENUM,"WLCL"))
 D SET(LINE,.CNT)
 S LINE="TOTAL PRESCRIPTIONS: "_$G(^NTS(2050,SITENUM,"WLPS"))
 S LINE=$$SETSTR^VALM1("INTERFACED LAB INSTRUMENTS: ",LINE,37,28)_$P(ELEVEN,U)
 D SET(LINE,.CNT)
 Q
 ;
SET(LINE,CNT) ;
 S CNT=CNT+1
 S ^TMP("FSCRPC",$J,"OUTPUT",CNT)=LINE
 Q
 ;
TEST ;
 N NUM,SITE
 S SITE=100
 D SITE(SITE)
 S NUM=0 F  S NUM=$O(^TMP("FSCRPC",$J,"OUTPUT",NUM)) Q:NUM<1  W !,^(NUM)
 Q
