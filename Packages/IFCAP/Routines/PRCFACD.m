PRCFACD ;WISC@ALTOONA/CTB-AUTO PURGE OF CODE SHEETS ;25 May 90/12:17 PM
V ;;5.1;IFCAP;;Oct 20, 2000
 ;Per VHA Directive 10-93-142, this routine should not be modified.
 S IOP="HOME" D ^%ZIS K IOP W @IOF I '$D(DUZ(0)) S DUZ(0)=""
 S PRCFSN=0 F I=1:1 S PRCFSN=$O(^PRC(411,PRCFSN)) Q:PRCFSN=""!(PRCFSN'?.N)  K Y D A
OUT K PRCFSN,PRCFDATE,I,J,X,Y,%DT,D0,DA Q
EN1 ;ENTRY POINT TO DELETE ALL CODE SHEETS (BEYOND RETENTION PERIOD) FOR A SINGLE STATION
 S PRCF("X")="ASF" D ^PRCFSITE Q:'%
 K PRC("FY"),PRC("PARAM"),PRC("QTR")
 W !!,"THIS PROGRAM WILL DELETE ALL CODE SHEETS FOR A SINGLE STATION NUMBER WHICH HAVE",!,"A TRANSMISSION DATE EARLIER (OLDER) THAN THE DATE SPECIFIED BY THE USER",!! S %DT="EXA" D ^%DT Q:Y<0  S PRCFSN=PRC("SITE")
 S X=Y D DD^%DT W ! S %A="ARE YOU SURE YOU WANT TO KILL ALL CODE SHEETS WITH TRANSMISSION ",%A(1)="DATES BEFORE "_Y_" FOR STATION NUMBER "_PRC("SITE"),%B=""
 S %=1 D ^PRCFYN I %'=1 W $C(7),"  <NOTHING DELETED>" R X:3 Q
 S Y=X D A G OUT
 Q
EN2 ;DELETE A SINGLE CODE SHEET
 S DIC(0)="AMEQN",DIC("A")="Select Code Sheet to be Deleted: ",DIC=423 D ^DIC K DIC I Y<0 W $C(7)," <NOTHING DELETED>" R X:3 Q
 S %A="OK TO DELETE",%B="" S %=2 D ^PRCFYN I %'=1 W $C(7)," <NOTHING DELETED>" R X:3 Q
 S DA=+Y D K W "  CODE SHEET DELETED",$C(7) R X:2 Q
 Q
A ;SELECT CODE SHEETS TO BE DELETED FOR STATION NUMBER PRCFSN 
 I '$D(Y) S X=$P(^PRC(411,PRCFSN,0),"^",14) S:X="" X=90 S X="T-"_X,%DT="" D ^%DT
 S PRCFDATE=Y,D0=0,L=0 F J=1:1 S D0=$O(^PRCF(423,D0)) Q:D0=""!(D0'?.N)  I $P(^PRCF(423,D0,0),U,2)=PRCFSN,$D(^PRCF(423,D0,"TRANS")),$P(^("TRANS"),"^",3)<PRCFDATE S DA=D0,L=L+1 D K
 W !!,L," CODE SHEETS DELETED FOR STATION ",PRC("SITE") Q
K ;KILL THE CODE SHEET AND CROSS REFERENCES
 S DIK="^PRCF(423," D WAIT^PRCFYN,^DIK K DA S PRCFDEL="" Q
 K K,X,DA Q
