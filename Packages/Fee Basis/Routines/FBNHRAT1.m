FBNHRAT1 ;AISC/CMR - ENTER RATES CONT. ;9/19/2014
 ;;3.5;FEE BASIS;**17,154**;JAN 30, 1995;Build 12
 ;;Per VA Directive 6402, this routine should not be modified.
VENDAT ;set up rate if contract exists
 N FBRATE,FBCFDT,FBCTDT,FBI,FBCNUM,FBNRFDT,FBNRTDT
 S FBCFDT=0
 I '$O(^FBAA(161.21,"AC",FBVIEN,0)) D:$G(FBDDT) CKSET(FBNFDT,FBNTDT) Q
VENDAT1 K FBRET
 S FBCFDT=$O(^FBAA(161.21,"AC",FBVIEN,FBCFDT))
 I FBCFDT']"" D:$G(FBDDT) CKSET(FBNFDT,FBNTDT) Q
 S FBI=$O(^FBAA(161.21,"AC",FBVIEN,FBCFDT,0)) I FBI]"" S FBCTDT=$P(^FBAA(161.21,FBI,0),"^",3),FBCNUM=$P(^FBAA(161.21,FBI,0),"^")
 I FBNFDT=FBCFDT!(FBNFDT>FBCFDT) D  G:$G(FBRET) VENDAT1 Q
 .I FBNFDT>FBCTDT S FBRET=1 Q
 .I FBNTDT=FBCTDT D SET(FBNFDT,FBNTDT,I) Q
 .I FBNTDT<FBCTDT D SET(FBNFDT,FBNTDT,I) Q
 .I FBNTDT>FBCTDT D SET(FBNFDT,FBCTDT,I) S FBNFDT=$$CDTC^FBUCUTL(FBCTDT,1),FBRET=1 Q
 I FBNFDT<FBCFDT D  G:$G(FBRET) VENDAT1 Q
 .I FBNTDT<FBCFDT D:$G(FBDDT) CKSET(FBNFDT,FBNTDT) Q
 .I FBNTDT'>FBCTDT D:$G(FBDDT) CKSET(FBNFDT,$$CDTC^FBUCUTL(FBCFDT,-1)) S FBNFDT=FBCFDT D SET(FBNFDT,FBNTDT,I) Q
 .I FBNTDT>FBCTDT D:$G(FBDDT) CKSET(FBNFDT,$$CDTC^FBUCUTL(FBCFDT,-1)) S FBNFDT=FBCFDT D SET(FBNFDT,FBCTDT,I) S FBNFDT=$$CDTC^FBUCUTL(FBCTDT,1),FBRET=1 Q
 Q
SET(FBFR,FBTO,FBDFN) ;set up rate array for pt
 ;FBFR and FBTO are from and to dates to establish rates for
 ;FBDFN=DFN for pt.
 ;FBNHARUP (optional)
 ;  if = "N" the call is during payment and a rate cannot be added
 ;  if = 1 rates are being monitored and a rate has not been added yet
 ;  if = 11 rates are being monitored and a rate has been added
 ;output FBFND=1 to indicate that a gap was found to create a rate for
 ;       FBNHARUP (optional) changed from 1 to 11 if rate added
 S FBFND=1
 W !!,*7,"Patient: ",$$NAME^FBCHREQ2(FBDFN),?40,"SSN: ",$$SSN^FBAAUTL(FBDFN)
 W !,?5,"Rate must be entered for the following period: ",$$DATX^FBAAUTL(FBFR)," - ",$$DATX^FBAAUTL(FBTO)
 I $G(FBNHARUP)'="N" S FBRATE=1 ; when not "N" allow rate to be added
 D DISPLAY^FBAAVD1 K FBX I '$G(FBRATE) D:$G(FBDDT) CKSET(FBFR,FBTO) Q
 K DD,DO S DIC="^FBAA(161.23,",DIC(0)="L",X=FBFR,DIC("DR")=".02////^S X=FBTO;.03////^S X=FB7078;.04////^S X=FBDFN;.05////^S X=FBRATE;.06////^S X=FBCNUM",DLAYGO=161.23 D FILE^DICN K DLAYGO,DIC,X
 I $G(FBNHARUP)=1 S FBNHARUP=11 ; let caller know a rate was added
 Q
CKSET(FRDT,TODT) ;sets FBUNR array for timeframe unable to establish rate for.
 ;FBUNR array is only set if variable FBDDT is passed to subroutine
 ;and the attempt to create a rate (call to VENDAT) was unsuccessful.
 ;FBUNR array, if defined, is returned to calling program.
 ;FRDT=from date TODT=to date  of unsuccessful rate setup
 S FBUNR(FRDT,TODT)=""
 Q
