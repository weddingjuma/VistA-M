DGRRPSAT ; ALB/SGG rtnDGRR PatientServices Address Temporary ; 09/30/03  ; Compiled October 2, 2003 12:40:44
 ;;5.3;Registration;**557**;Aug 13, 1993
 ;
DOC ;<DataSet Name='TempAddress'
 ;.1211     TEMPORARY STREET [LINE 1] (FX), [.121;1]
 ;.1212     TEMPORARY STREET [LINE 2] (FX), [.121;2]
 ;.1213     TEMPORARY STREET [LINE 3] (FX), [.121;3]
 ;.1214     TEMPORARY CITY (FX), [.121;4]
 ;.1215     TEMPORARY STATE (P5'X), [.121;5]
 ;.1216     TEMPORARY ZIP CODE (FX), [.121;6]
 ;          .12112    TEMPORARY ZIP+4 (FOX), [.121;12]
 ;.12111    TEMPORARY ADDRESS COUNTY (NJ3,0XO), [.121;11]
 ;.1217     TEMPORARY ADDRESS START DATE (DX), [.121;7]
 ;.1218     TEMPORARY ADDRESS END DATE (DX), [.121;8]
 ;.1219     TEMPORARY PHONE NUMBER (FX), [.121;10]
 ;
 ;
 ;
GETPSARY(PSARRAY) ;
 NEW CNT
 SET CNT=$G(CNT)+1,PSARRAY(CNT)="<DataSet Name='TemporaryAddress'"
 SET CNT=$G(CNT)+1,PSARRAY(CNT)="^Street1^"_$$ATSTRE1()
 SET CNT=$G(CNT)+1,PSARRAY(CNT)="^Street2^"_$$ATSTRE2()
 SET CNT=$G(CNT)+1,PSARRAY(CNT)="^Street3^"_$$ATSTRE3()
 SET CNT=$G(CNT)+1,PSARRAY(CNT)="^City^"_$$ATCITY()
 SET CNT=$G(CNT)+1,PSARRAY(CNT)="^State^"_$$ATSTATE()
 SET CNT=$G(CNT)+1,PSARRAY(CNT)="^Zip^"_$$ATZIP()
 SET CNT=$G(CNT)+1,PSARRAY(CNT)="^County^"_$$ATCOUNTY()
 SET CNT=$G(CNT)+1,PSARRAY(CNT)="^StartDate^"_$$ATSTDATE()
 SET CNT=$G(CNT)+1,PSARRAY(CNT)="^EndDate^"_$$ATENDATE()
 SET CNT=$G(CNT)+1,PSARRAY(CNT)="^BadAddressIndicator^"
 SET CNT=$G(CNT)+1,PSARRAY(CNT)="^ConfidentialAddressActive^"
 SET CNT=$G(CNT)+1,PSARRAY(CNT)="^PhoneNumber^"_$$ATPHN()
 SET CNT=$G(CNT)+1,PSARRAY(CNT)="^HomePhoneNumber^"
 SET CNT=$G(CNT)+1,PSARRAY(CNT)="^WorkPhoneNumber^"
 SET CNT=$G(CNT)+1,PSARRAY(CNT)="></DataSet>"_"^^^1"
 Q
 ;
ATSTRE1() ;
 QUIT $P(GLOB(.121),"^",1)
 ;
ATSTRE2() ;
 QUIT $P(GLOB(.121),"^",2)
 ;
ATSTRE3() ;
 QUIT $P(GLOB(.121),"^",3)
 ;
ATCITY() ;
 QUIT $P(GLOB(.121),"^",4)
 ;
ATSTATE() ;
 NEW DATA
 SET DATA=$P(GLOB(.121),"^",5)
 SET DATA=$S(DATA="":"",1:$P($G(^DIC(5,DATA,0)),"^",2))
 QUIT DATA
 ;
ATZIP() ;
 NEW DATA
 SET DATA=$P(GLOB(.121),"^",12)
 IF DATA="" SET DATA=$P(GLOB(.121),"^",6)
 QUIT DATA
 ;
ATCOUNTY() ;
 NEW STATE,DATA
 SET STATE=$P(GLOB(.121),"^",5)
 SET DATA=$P(GLOB(.121),"^",11)
 IF DATA'="",STATE'="" SET DATA=$P($G(^DIC(5,STATE,1,DATA,0)),"^",1)
 QUIT DATA
 ;
ATSTDATE() ;
 QUIT $P(GLOB(.121),"^",7)
 ;
ATENDATE() ;
 QUIT $P(GLOB(.121),"^",8)
 ;
ATPHN() ;
 QUIT $P(GLOB(.121),"^",10)
