IBDEI16B ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,19606,2)
 ;;=^5054154
 ;;^UTILITY(U,$J,358.3,19607,0)
 ;;=T76.21XD^^94^927^6
 ;;^UTILITY(U,$J,358.3,19607,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19607,1,3,0)
 ;;=3^Adult Sexual Abuse,Suspected,Sub Encntr
 ;;^UTILITY(U,$J,358.3,19607,1,4,0)
 ;;=4^T76.21XD
 ;;^UTILITY(U,$J,358.3,19607,2)
 ;;=^5054228
 ;;^UTILITY(U,$J,358.3,19608,0)
 ;;=T76.21XS^^94^927^5
 ;;^UTILITY(U,$J,358.3,19608,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19608,1,3,0)
 ;;=3^Adult Sexual Abuse,Suspected,Sequela
 ;;^UTILITY(U,$J,358.3,19608,1,4,0)
 ;;=4^T76.21XS
 ;;^UTILITY(U,$J,358.3,19608,2)
 ;;=^5054229
 ;;^UTILITY(U,$J,358.3,19609,0)
 ;;=Y07.53^^94^927^7
 ;;^UTILITY(U,$J,358.3,19609,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19609,1,3,0)
 ;;=3^Instructor,Perpetrator of MST
 ;;^UTILITY(U,$J,358.3,19609,1,4,0)
 ;;=4^Y07.53
 ;;^UTILITY(U,$J,358.3,19609,2)
 ;;=^5061207
 ;;^UTILITY(U,$J,358.3,19610,0)
 ;;=Y07.59^^94^927^8
 ;;^UTILITY(U,$J,358.3,19610,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19610,1,3,0)
 ;;=3^Non-Family Member,Perpetrator of MST/Abuse NEC
 ;;^UTILITY(U,$J,358.3,19610,1,4,0)
 ;;=4^Y07.59
 ;;^UTILITY(U,$J,358.3,19610,2)
 ;;=^5061208
 ;;^UTILITY(U,$J,358.3,19611,0)
 ;;=E66.01^^94^928^120
 ;;^UTILITY(U,$J,358.3,19611,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19611,1,3,0)
 ;;=3^Morbid Obesity
 ;;^UTILITY(U,$J,358.3,19611,1,4,0)
 ;;=4^E66.01
 ;;^UTILITY(U,$J,358.3,19611,2)
 ;;=^5002826
 ;;^UTILITY(U,$J,358.3,19612,0)
 ;;=F18.10^^94^928^95
 ;;^UTILITY(U,$J,358.3,19612,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19612,1,3,0)
 ;;=3^Inhalant Abuse,Uncomplicated
 ;;^UTILITY(U,$J,358.3,19612,1,4,0)
 ;;=4^F18.10
 ;;^UTILITY(U,$J,358.3,19612,2)
 ;;=^5003380
 ;;^UTILITY(U,$J,358.3,19613,0)
 ;;=F55.0^^94^928^38
 ;;^UTILITY(U,$J,358.3,19613,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19613,1,3,0)
 ;;=3^Antacid Abuse
 ;;^UTILITY(U,$J,358.3,19613,1,4,0)
 ;;=4^F55.0
 ;;^UTILITY(U,$J,358.3,19613,2)
 ;;=^5003628
 ;;^UTILITY(U,$J,358.3,19614,0)
 ;;=F18.90^^94^928^96
 ;;^UTILITY(U,$J,358.3,19614,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19614,1,3,0)
 ;;=3^Inhalant Use Uncomplicated,Unspec
 ;;^UTILITY(U,$J,358.3,19614,1,4,0)
 ;;=4^F18.90
 ;;^UTILITY(U,$J,358.3,19614,2)
 ;;=^5003405
 ;;^UTILITY(U,$J,358.3,19615,0)
 ;;=F55.2^^94^928^102
 ;;^UTILITY(U,$J,358.3,19615,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19615,1,3,0)
 ;;=3^Laxative Abuse
 ;;^UTILITY(U,$J,358.3,19615,1,4,0)
 ;;=4^F55.2
 ;;^UTILITY(U,$J,358.3,19615,2)
 ;;=^5003630
 ;;^UTILITY(U,$J,358.3,19616,0)
 ;;=F55.1^^94^928^81
 ;;^UTILITY(U,$J,358.3,19616,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19616,1,3,0)
 ;;=3^Herbal/Folk Remedy Abuse
 ;;^UTILITY(U,$J,358.3,19616,1,4,0)
 ;;=4^F55.1
 ;;^UTILITY(U,$J,358.3,19616,2)
 ;;=^5003629
 ;;^UTILITY(U,$J,358.3,19617,0)
 ;;=F55.8^^94^928^124
 ;;^UTILITY(U,$J,358.3,19617,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19617,1,3,0)
 ;;=3^Non-Psychoactive Substance Abuse
 ;;^UTILITY(U,$J,358.3,19617,1,4,0)
 ;;=4^F55.8
 ;;^UTILITY(U,$J,358.3,19617,2)
 ;;=^5003633
 ;;^UTILITY(U,$J,358.3,19618,0)
 ;;=F55.4^^94^928^161
 ;;^UTILITY(U,$J,358.3,19618,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19618,1,3,0)
 ;;=3^Vitamin Abuse
 ;;^UTILITY(U,$J,358.3,19618,1,4,0)
 ;;=4^F55.4
 ;;^UTILITY(U,$J,358.3,19618,2)
 ;;=^5003632
 ;;^UTILITY(U,$J,358.3,19619,0)
 ;;=F55.3^^94^928^151
 ;;^UTILITY(U,$J,358.3,19619,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19619,1,3,0)
 ;;=3^Steroid/Hormone Abuse
 ;;^UTILITY(U,$J,358.3,19619,1,4,0)
 ;;=4^F55.3
 ;;^UTILITY(U,$J,358.3,19619,2)
 ;;=^5003631
 ;;^UTILITY(U,$J,358.3,19620,0)
 ;;=F51.09^^94^928^97