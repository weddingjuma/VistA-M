IBDEI3DQ ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,56811,1,3,0)
 ;;=3^Abdominal Pain,Generalized
 ;;^UTILITY(U,$J,358.3,56811,1,4,0)
 ;;=4^R10.84
 ;;^UTILITY(U,$J,358.3,56811,2)
 ;;=^5019229
 ;;^UTILITY(U,$J,358.3,56812,0)
 ;;=Z48.01^^261^2833^4
 ;;^UTILITY(U,$J,358.3,56812,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56812,1,3,0)
 ;;=3^Wound Dressing Change/Removal
 ;;^UTILITY(U,$J,358.3,56812,1,4,0)
 ;;=4^Z48.01
 ;;^UTILITY(U,$J,358.3,56812,2)
 ;;=^5063034
 ;;^UTILITY(U,$J,358.3,56813,0)
 ;;=Z48.02^^261^2833^3
 ;;^UTILITY(U,$J,358.3,56813,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56813,1,3,0)
 ;;=3^Suture Removal
 ;;^UTILITY(U,$J,358.3,56813,1,4,0)
 ;;=4^Z48.02
 ;;^UTILITY(U,$J,358.3,56813,2)
 ;;=^5063035
 ;;^UTILITY(U,$J,358.3,56814,0)
 ;;=Z48.812^^261^2833^1
 ;;^UTILITY(U,$J,358.3,56814,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56814,1,3,0)
 ;;=3^Circulatory System Surgery Aftercare
 ;;^UTILITY(U,$J,358.3,56814,1,4,0)
 ;;=4^Z48.812
 ;;^UTILITY(U,$J,358.3,56814,2)
 ;;=^5063049
 ;;^UTILITY(U,$J,358.3,56815,0)
 ;;=Z09.^^261^2833^2
 ;;^UTILITY(U,$J,358.3,56815,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56815,1,3,0)
 ;;=3^F/U Exam Aftr Tx for Cond Oth Than Malig Neop
 ;;^UTILITY(U,$J,358.3,56815,1,4,0)
 ;;=4^Z09.
 ;;^UTILITY(U,$J,358.3,56815,2)
 ;;=^5062668
 ;;^UTILITY(U,$J,358.3,56816,0)
 ;;=I25.10^^261^2834^2
 ;;^UTILITY(U,$J,358.3,56816,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56816,1,3,0)
 ;;=3^Athscl Hrt Dis,Ntv Cor Art w/o Ang Pctrs
 ;;^UTILITY(U,$J,358.3,56816,1,4,0)
 ;;=4^I25.10
 ;;^UTILITY(U,$J,358.3,56816,2)
 ;;=^5007107
 ;;^UTILITY(U,$J,358.3,56817,0)
 ;;=I25.110^^261^2834^3
 ;;^UTILITY(U,$J,358.3,56817,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56817,1,3,0)
 ;;=3^Athscl Hrt Dis,Ntv Cor Art w/ Unstable Ang Pctrs
 ;;^UTILITY(U,$J,358.3,56817,1,4,0)
 ;;=4^I25.110
 ;;^UTILITY(U,$J,358.3,56817,2)
 ;;=^5007108
 ;;^UTILITY(U,$J,358.3,56818,0)
 ;;=I25.111^^261^2834^4
 ;;^UTILITY(U,$J,358.3,56818,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56818,1,3,0)
 ;;=3^Athscl Hrt Dis,Ntv Cor Art w/ Ang Pctrs w/ Spasm
 ;;^UTILITY(U,$J,358.3,56818,1,4,0)
 ;;=4^I25.111
 ;;^UTILITY(U,$J,358.3,56818,2)
 ;;=^5007109
 ;;^UTILITY(U,$J,358.3,56819,0)
 ;;=I25.118^^261^2834^5
 ;;^UTILITY(U,$J,358.3,56819,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56819,1,3,0)
 ;;=3^Athscl Hrt Dis,Ntv Cor Art w/ Oth Ang Pctrs
 ;;^UTILITY(U,$J,358.3,56819,1,4,0)
 ;;=4^I25.118
 ;;^UTILITY(U,$J,358.3,56819,2)
 ;;=^5007110
 ;;^UTILITY(U,$J,358.3,56820,0)
 ;;=I25.119^^261^2834^6
 ;;^UTILITY(U,$J,358.3,56820,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56820,1,3,0)
 ;;=3^Athscl Hrt Dis,Ntv Cor Art w/ Unspec Ang Pctrs
 ;;^UTILITY(U,$J,358.3,56820,1,4,0)
 ;;=4^I25.119
 ;;^UTILITY(U,$J,358.3,56820,2)
 ;;=^5007111
 ;;^UTILITY(U,$J,358.3,56821,0)
 ;;=I50.9^^261^2834^12
 ;;^UTILITY(U,$J,358.3,56821,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56821,1,3,0)
 ;;=3^Heart Failure,Comp/Uncomp
 ;;^UTILITY(U,$J,358.3,56821,1,4,0)
 ;;=4^I50.9
 ;;^UTILITY(U,$J,358.3,56821,2)
 ;;=^5007251
 ;;^UTILITY(U,$J,358.3,56822,0)
 ;;=I65.21^^261^2834^16
 ;;^UTILITY(U,$J,358.3,56822,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56822,1,3,0)
 ;;=3^Occl & Sten,Rt Carotid Artery
 ;;^UTILITY(U,$J,358.3,56822,1,4,0)
 ;;=4^I65.21
 ;;^UTILITY(U,$J,358.3,56822,2)
 ;;=^5007360
 ;;^UTILITY(U,$J,358.3,56823,0)
 ;;=I65.22^^261^2834^14
 ;;^UTILITY(U,$J,358.3,56823,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56823,1,3,0)
 ;;=3^Occl & Sten,Lt Carotid Artery
 ;;^UTILITY(U,$J,358.3,56823,1,4,0)
 ;;=4^I65.22
 ;;^UTILITY(U,$J,358.3,56823,2)
 ;;=^5007361
 ;;^UTILITY(U,$J,358.3,56824,0)
 ;;=I65.23^^261^2834^13