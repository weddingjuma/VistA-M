IBDEI3AQ ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,55390,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55390,1,3,0)
 ;;=3^Convulsions,Unspec
 ;;^UTILITY(U,$J,358.3,55390,1,4,0)
 ;;=4^R56.9
 ;;^UTILITY(U,$J,358.3,55390,2)
 ;;=^5019524
 ;;^UTILITY(U,$J,358.3,55391,0)
 ;;=R25.0^^256^2780^1
 ;;^UTILITY(U,$J,358.3,55391,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55391,1,3,0)
 ;;=3^Abnormal Head Movements
 ;;^UTILITY(U,$J,358.3,55391,1,4,0)
 ;;=4^R25.0
 ;;^UTILITY(U,$J,358.3,55391,2)
 ;;=^5019299
 ;;^UTILITY(U,$J,358.3,55392,0)
 ;;=R25.1^^256^2780^7
 ;;^UTILITY(U,$J,358.3,55392,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55392,1,3,0)
 ;;=3^Tremor,Unspec
 ;;^UTILITY(U,$J,358.3,55392,1,4,0)
 ;;=4^R25.1
 ;;^UTILITY(U,$J,358.3,55392,2)
 ;;=^5019300
 ;;^UTILITY(U,$J,358.3,55393,0)
 ;;=R25.9^^256^2780^3
 ;;^UTILITY(U,$J,358.3,55393,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55393,1,3,0)
 ;;=3^Abnormal Involuntary Movements,Unspec
 ;;^UTILITY(U,$J,358.3,55393,1,4,0)
 ;;=4^R25.9
 ;;^UTILITY(U,$J,358.3,55393,2)
 ;;=^5019303
 ;;^UTILITY(U,$J,358.3,55394,0)
 ;;=R25.3^^256^2780^5
 ;;^UTILITY(U,$J,358.3,55394,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55394,1,3,0)
 ;;=3^Fasciculation/Twitching
 ;;^UTILITY(U,$J,358.3,55394,1,4,0)
 ;;=4^R25.3
 ;;^UTILITY(U,$J,358.3,55394,2)
 ;;=^44985
 ;;^UTILITY(U,$J,358.3,55395,0)
 ;;=R25.8^^256^2780^2
 ;;^UTILITY(U,$J,358.3,55395,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55395,1,3,0)
 ;;=3^Abnormal Involuntary Movements,Other
 ;;^UTILITY(U,$J,358.3,55395,1,4,0)
 ;;=4^R25.8
 ;;^UTILITY(U,$J,358.3,55395,2)
 ;;=^5019302
 ;;^UTILITY(U,$J,358.3,55396,0)
 ;;=M02.30^^256^2781^124
 ;;^UTILITY(U,$J,358.3,55396,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55396,1,3,0)
 ;;=3^Reiter's Disease,Unspec Site
 ;;^UTILITY(U,$J,358.3,55396,1,4,0)
 ;;=4^M02.30
 ;;^UTILITY(U,$J,358.3,55396,2)
 ;;=^5009790
 ;;^UTILITY(U,$J,358.3,55397,0)
 ;;=M10.9^^256^2781^40
 ;;^UTILITY(U,$J,358.3,55397,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55397,1,3,0)
 ;;=3^Gout,Unspec
 ;;^UTILITY(U,$J,358.3,55397,1,4,0)
 ;;=4^M10.9
 ;;^UTILITY(U,$J,358.3,55397,2)
 ;;=^5010404
 ;;^UTILITY(U,$J,358.3,55398,0)
 ;;=G90.59^^256^2781^34
 ;;^UTILITY(U,$J,358.3,55398,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55398,1,3,0)
 ;;=3^Complex Regional Pain Syndrome I,Unspec
 ;;^UTILITY(U,$J,358.3,55398,1,4,0)
 ;;=4^G90.59
 ;;^UTILITY(U,$J,358.3,55398,2)
 ;;=^5004171
 ;;^UTILITY(U,$J,358.3,55399,0)
 ;;=G56.01^^256^2781^12
 ;;^UTILITY(U,$J,358.3,55399,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55399,1,3,0)
 ;;=3^Carpal Tunnel Syndrome,Right Upper Limb
 ;;^UTILITY(U,$J,358.3,55399,1,4,0)
 ;;=4^G56.01
 ;;^UTILITY(U,$J,358.3,55399,2)
 ;;=^5004018
 ;;^UTILITY(U,$J,358.3,55400,0)
 ;;=G56.02^^256^2781^11
 ;;^UTILITY(U,$J,358.3,55400,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55400,1,3,0)
 ;;=3^Carpal Tunnel Syndrome,Left Upper Limb
 ;;^UTILITY(U,$J,358.3,55400,1,4,0)
 ;;=4^G56.02
 ;;^UTILITY(U,$J,358.3,55400,2)
 ;;=^5004019
 ;;^UTILITY(U,$J,358.3,55401,0)
 ;;=G56.21^^256^2781^56
 ;;^UTILITY(U,$J,358.3,55401,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55401,1,3,0)
 ;;=3^Lesion of Ulnar Nerve,Right Upper Limb
 ;;^UTILITY(U,$J,358.3,55401,1,4,0)
 ;;=4^G56.21
 ;;^UTILITY(U,$J,358.3,55401,2)
 ;;=^5004024
 ;;^UTILITY(U,$J,358.3,55402,0)
 ;;=G56.22^^256^2781^55
 ;;^UTILITY(U,$J,358.3,55402,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55402,1,3,0)
 ;;=3^Lesion of Ulnar Nerve,Left Upper Limb
 ;;^UTILITY(U,$J,358.3,55402,1,4,0)
 ;;=4^G56.22
 ;;^UTILITY(U,$J,358.3,55402,2)
 ;;=^5004025
 ;;^UTILITY(U,$J,358.3,55403,0)
 ;;=M26.60^^256^2781^163
 ;;^UTILITY(U,$J,358.3,55403,1,0)
 ;;=^358.31IA^4^2