IBDEI120 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,17545,1,4,0)
 ;;=4^R26.9
 ;;^UTILITY(U,$J,358.3,17545,2)
 ;;=^5019309
 ;;^UTILITY(U,$J,358.3,17546,0)
 ;;=R26.0^^88^864^4
 ;;^UTILITY(U,$J,358.3,17546,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17546,1,3,0)
 ;;=3^Gait,Ataxic
 ;;^UTILITY(U,$J,358.3,17546,1,4,0)
 ;;=4^R26.0
 ;;^UTILITY(U,$J,358.3,17546,2)
 ;;=^5019304
 ;;^UTILITY(U,$J,358.3,17547,0)
 ;;=R26.1^^88^864^5
 ;;^UTILITY(U,$J,358.3,17547,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17547,1,3,0)
 ;;=3^Gait,Paralytic
 ;;^UTILITY(U,$J,358.3,17547,1,4,0)
 ;;=4^R26.1
 ;;^UTILITY(U,$J,358.3,17547,2)
 ;;=^5019305
 ;;^UTILITY(U,$J,358.3,17548,0)
 ;;=R29.890^^88^864^7
 ;;^UTILITY(U,$J,358.3,17548,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17548,1,3,0)
 ;;=3^Height Loss
 ;;^UTILITY(U,$J,358.3,17548,1,4,0)
 ;;=4^R29.890
 ;;^UTILITY(U,$J,358.3,17548,2)
 ;;=^322157
 ;;^UTILITY(U,$J,358.3,17549,0)
 ;;=R29.5^^88^864^8
 ;;^UTILITY(U,$J,358.3,17549,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17549,1,3,0)
 ;;=3^Paralysis,Transient
 ;;^UTILITY(U,$J,358.3,17549,1,4,0)
 ;;=4^R29.5
 ;;^UTILITY(U,$J,358.3,17549,2)
 ;;=^5019316
 ;;^UTILITY(U,$J,358.3,17550,0)
 ;;=R54.^^88^864^9
 ;;^UTILITY(U,$J,358.3,17550,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17550,1,3,0)
 ;;=3^Physical Debility,Age-Related
 ;;^UTILITY(U,$J,358.3,17550,1,4,0)
 ;;=4^R54.
 ;;^UTILITY(U,$J,358.3,17550,2)
 ;;=^5019521
 ;;^UTILITY(U,$J,358.3,17551,0)
 ;;=Z72.3^^88^864^10
 ;;^UTILITY(U,$J,358.3,17551,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17551,1,3,0)
 ;;=3^Physical Exercise,Lack of
 ;;^UTILITY(U,$J,358.3,17551,1,4,0)
 ;;=4^Z72.3
 ;;^UTILITY(U,$J,358.3,17551,2)
 ;;=^5063256
 ;;^UTILITY(U,$J,358.3,17552,0)
 ;;=R26.81^^88^864^11
 ;;^UTILITY(U,$J,358.3,17552,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17552,1,3,0)
 ;;=3^Unsteadiness on Feet
 ;;^UTILITY(U,$J,358.3,17552,1,4,0)
 ;;=4^R26.81
 ;;^UTILITY(U,$J,358.3,17552,2)
 ;;=^5019307
 ;;^UTILITY(U,$J,358.3,17553,0)
 ;;=R26.2^^88^864^12
 ;;^UTILITY(U,$J,358.3,17553,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17553,1,3,0)
 ;;=3^Walking Difficulty NEC
 ;;^UTILITY(U,$J,358.3,17553,1,4,0)
 ;;=4^R26.2
 ;;^UTILITY(U,$J,358.3,17553,2)
 ;;=^5019306
 ;;^UTILITY(U,$J,358.3,17554,0)
 ;;=R53.1^^88^864^13
 ;;^UTILITY(U,$J,358.3,17554,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17554,1,3,0)
 ;;=3^Weakness
 ;;^UTILITY(U,$J,358.3,17554,1,4,0)
 ;;=4^R53.1
 ;;^UTILITY(U,$J,358.3,17554,2)
 ;;=^5019516
 ;;^UTILITY(U,$J,358.3,17555,0)
 ;;=Z99.3^^88^864^14
 ;;^UTILITY(U,$J,358.3,17555,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17555,1,3,0)
 ;;=3^Wheelchair Dependence
 ;;^UTILITY(U,$J,358.3,17555,1,4,0)
 ;;=4^Z99.3
 ;;^UTILITY(U,$J,358.3,17555,2)
 ;;=^5063759
 ;;^UTILITY(U,$J,358.3,17556,0)
 ;;=99201^^89^865^1
 ;;^UTILITY(U,$J,358.3,17556,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,17556,1,1,0)
 ;;=1^Problem Focus
 ;;^UTILITY(U,$J,358.3,17556,1,2,0)
 ;;=2^99201
 ;;^UTILITY(U,$J,358.3,17557,0)
 ;;=99202^^89^865^2
 ;;^UTILITY(U,$J,358.3,17557,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,17557,1,1,0)
 ;;=1^Expanded Problem Focus
 ;;^UTILITY(U,$J,358.3,17557,1,2,0)
 ;;=2^99202
 ;;^UTILITY(U,$J,358.3,17558,0)
 ;;=99203^^89^865^3
 ;;^UTILITY(U,$J,358.3,17558,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,17558,1,1,0)
 ;;=1^Detailed
 ;;^UTILITY(U,$J,358.3,17558,1,2,0)
 ;;=2^99203
 ;;^UTILITY(U,$J,358.3,17559,0)
 ;;=99204^^89^865^4
 ;;^UTILITY(U,$J,358.3,17559,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,17559,1,1,0)
 ;;=1^Comprehensive, Moderate
 ;;^UTILITY(U,$J,358.3,17559,1,2,0)
 ;;=2^99204
 ;;^UTILITY(U,$J,358.3,17560,0)
 ;;=99205^^89^865^5
