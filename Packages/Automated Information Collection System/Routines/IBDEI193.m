IBDEI193 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,20913,1,3,0)
 ;;=3^Target of (Perceived) Adverse Discrimination or Persecution
 ;;^UTILITY(U,$J,358.3,20913,1,4,0)
 ;;=4^Z60.5
 ;;^UTILITY(U,$J,358.3,20913,2)
 ;;=^5063143
 ;;^UTILITY(U,$J,358.3,20914,0)
 ;;=Z60.9^^99^998^4
 ;;^UTILITY(U,$J,358.3,20914,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20914,1,3,0)
 ;;=3^Problem Related to Social Environment,Unspec
 ;;^UTILITY(U,$J,358.3,20914,1,4,0)
 ;;=4^Z60.9
 ;;^UTILITY(U,$J,358.3,20914,2)
 ;;=^5063145
 ;;^UTILITY(U,$J,358.3,20915,0)
 ;;=F65.4^^99^999^6
 ;;^UTILITY(U,$J,358.3,20915,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20915,1,3,0)
 ;;=3^Pedophilia Disorder
 ;;^UTILITY(U,$J,358.3,20915,1,4,0)
 ;;=4^F65.4
 ;;^UTILITY(U,$J,358.3,20915,2)
 ;;=^5003655
 ;;^UTILITY(U,$J,358.3,20916,0)
 ;;=F65.2^^99^999^1
 ;;^UTILITY(U,$J,358.3,20916,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20916,1,3,0)
 ;;=3^Exhibitionistic Disorder
 ;;^UTILITY(U,$J,358.3,20916,1,4,0)
 ;;=4^F65.2
 ;;^UTILITY(U,$J,358.3,20916,2)
 ;;=^5003653
 ;;^UTILITY(U,$J,358.3,20917,0)
 ;;=F65.3^^99^999^10
 ;;^UTILITY(U,$J,358.3,20917,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20917,1,3,0)
 ;;=3^Voyeuristic Disorder
 ;;^UTILITY(U,$J,358.3,20917,1,4,0)
 ;;=4^F65.3
 ;;^UTILITY(U,$J,358.3,20917,2)
 ;;=^5003654
 ;;^UTILITY(U,$J,358.3,20918,0)
 ;;=F65.81^^99^999^3
 ;;^UTILITY(U,$J,358.3,20918,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20918,1,3,0)
 ;;=3^Frotteuristic Disorder
 ;;^UTILITY(U,$J,358.3,20918,1,4,0)
 ;;=4^F65.81
 ;;^UTILITY(U,$J,358.3,20918,2)
 ;;=^5003659
 ;;^UTILITY(U,$J,358.3,20919,0)
 ;;=F65.51^^99^999^7
 ;;^UTILITY(U,$J,358.3,20919,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20919,1,3,0)
 ;;=3^Sexual Masochism Disorder
 ;;^UTILITY(U,$J,358.3,20919,1,4,0)
 ;;=4^F65.51
 ;;^UTILITY(U,$J,358.3,20919,2)
 ;;=^5003657
 ;;^UTILITY(U,$J,358.3,20920,0)
 ;;=F65.52^^99^999^8
 ;;^UTILITY(U,$J,358.3,20920,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20920,1,3,0)
 ;;=3^Sexual Sadism Disorder
 ;;^UTILITY(U,$J,358.3,20920,1,4,0)
 ;;=4^F65.52
 ;;^UTILITY(U,$J,358.3,20920,2)
 ;;=^5003658
 ;;^UTILITY(U,$J,358.3,20921,0)
 ;;=F65.0^^99^999^2
 ;;^UTILITY(U,$J,358.3,20921,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20921,1,3,0)
 ;;=3^Fetishistic Disorder
 ;;^UTILITY(U,$J,358.3,20921,1,4,0)
 ;;=4^F65.0
 ;;^UTILITY(U,$J,358.3,20921,2)
 ;;=^5003651
 ;;^UTILITY(U,$J,358.3,20922,0)
 ;;=F65.1^^99^999^9
 ;;^UTILITY(U,$J,358.3,20922,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20922,1,3,0)
 ;;=3^Transvestic Disorder
 ;;^UTILITY(U,$J,358.3,20922,1,4,0)
 ;;=4^F65.1
 ;;^UTILITY(U,$J,358.3,20922,2)
 ;;=^5003652
 ;;^UTILITY(U,$J,358.3,20923,0)
 ;;=F65.89^^99^999^4
 ;;^UTILITY(U,$J,358.3,20923,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20923,1,3,0)
 ;;=3^Paraphilic Disorder NEC
 ;;^UTILITY(U,$J,358.3,20923,1,4,0)
 ;;=4^F65.89
 ;;^UTILITY(U,$J,358.3,20923,2)
 ;;=^5003660
 ;;^UTILITY(U,$J,358.3,20924,0)
 ;;=F65.9^^99^999^5
 ;;^UTILITY(U,$J,358.3,20924,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20924,1,3,0)
 ;;=3^Paraphilic Disorder,Unspec
 ;;^UTILITY(U,$J,358.3,20924,1,4,0)
 ;;=4^F65.9
 ;;^UTILITY(U,$J,358.3,20924,2)
 ;;=^5003661
 ;;^UTILITY(U,$J,358.3,20925,0)
 ;;=F60.0^^99^1000^8
 ;;^UTILITY(U,$J,358.3,20925,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20925,1,3,0)
 ;;=3^Paranoid Personality Disorder
 ;;^UTILITY(U,$J,358.3,20925,1,4,0)
 ;;=4^F60.0
 ;;^UTILITY(U,$J,358.3,20925,2)
 ;;=^5003635
 ;;^UTILITY(U,$J,358.3,20926,0)
 ;;=F60.1^^99^1000^11
 ;;^UTILITY(U,$J,358.3,20926,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20926,1,3,0)
 ;;=3^Schizoid Personality Disorder
 ;;^UTILITY(U,$J,358.3,20926,1,4,0)
 ;;=4^F60.1