IBDEI39E ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,54769,1,3,0)
 ;;=3^Pyelonephritis,Chronic Nonobstructive Reflux-Associated
 ;;^UTILITY(U,$J,358.3,54769,1,4,0)
 ;;=4^N11.0
 ;;^UTILITY(U,$J,358.3,54769,2)
 ;;=^5015571
 ;;^UTILITY(U,$J,358.3,54770,0)
 ;;=N10.^^256^2771^67
 ;;^UTILITY(U,$J,358.3,54770,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54770,1,3,0)
 ;;=3^Nephritis Acute Tubulo-Interstitial
 ;;^UTILITY(U,$J,358.3,54770,1,4,0)
 ;;=4^N10.
 ;;^UTILITY(U,$J,358.3,54770,2)
 ;;=^5015570
 ;;^UTILITY(U,$J,358.3,54771,0)
 ;;=N20.2^^256^2771^8
 ;;^UTILITY(U,$J,358.3,54771,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54771,1,3,0)
 ;;=3^Calculus Kidney w/ Calculus Ureter
 ;;^UTILITY(U,$J,358.3,54771,1,4,0)
 ;;=4^N20.2
 ;;^UTILITY(U,$J,358.3,54771,2)
 ;;=^5015609
 ;;^UTILITY(U,$J,358.3,54772,0)
 ;;=N20.0^^256^2771^7
 ;;^UTILITY(U,$J,358.3,54772,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54772,1,3,0)
 ;;=3^Calculus Kidney
 ;;^UTILITY(U,$J,358.3,54772,1,4,0)
 ;;=4^N20.0
 ;;^UTILITY(U,$J,358.3,54772,2)
 ;;=^67056
 ;;^UTILITY(U,$J,358.3,54773,0)
 ;;=N29.^^256^2771^60
 ;;^UTILITY(U,$J,358.3,54773,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54773,1,3,0)
 ;;=3^Kidney & Ureter Disorders in Diseases Classified Elsewhere
 ;;^UTILITY(U,$J,358.3,54773,1,4,0)
 ;;=4^N29.
 ;;^UTILITY(U,$J,358.3,54773,2)
 ;;=^5015631
 ;;^UTILITY(U,$J,358.3,54774,0)
 ;;=N28.9^^256^2771^59
 ;;^UTILITY(U,$J,358.3,54774,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54774,1,3,0)
 ;;=3^Kidney & Ureter Disorder,Unspec
 ;;^UTILITY(U,$J,358.3,54774,1,4,0)
 ;;=4^N28.9
 ;;^UTILITY(U,$J,358.3,54774,2)
 ;;=^5015630
 ;;^UTILITY(U,$J,358.3,54775,0)
 ;;=N30.01^^256^2771^20
 ;;^UTILITY(U,$J,358.3,54775,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54775,1,3,0)
 ;;=3^Cystitis w/ Hematuria,Acute
 ;;^UTILITY(U,$J,358.3,54775,1,4,0)
 ;;=4^N30.01
 ;;^UTILITY(U,$J,358.3,54775,2)
 ;;=^5015633
 ;;^UTILITY(U,$J,358.3,54776,0)
 ;;=N30.00^^256^2771^22
 ;;^UTILITY(U,$J,358.3,54776,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54776,1,3,0)
 ;;=3^Cystitis w/o Hematuria,Acute
 ;;^UTILITY(U,$J,358.3,54776,1,4,0)
 ;;=4^N30.00
 ;;^UTILITY(U,$J,358.3,54776,2)
 ;;=^5015632
 ;;^UTILITY(U,$J,358.3,54777,0)
 ;;=N30.41^^256^2771^21
 ;;^UTILITY(U,$J,358.3,54777,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54777,1,3,0)
 ;;=3^Cystitis w/ Hematuria,Irradiation
 ;;^UTILITY(U,$J,358.3,54777,1,4,0)
 ;;=4^N30.41
 ;;^UTILITY(U,$J,358.3,54777,2)
 ;;=^5015640
 ;;^UTILITY(U,$J,358.3,54778,0)
 ;;=N30.40^^256^2771^23
 ;;^UTILITY(U,$J,358.3,54778,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54778,1,3,0)
 ;;=3^Cystitis w/o Hematuria,Irradiation
 ;;^UTILITY(U,$J,358.3,54778,1,4,0)
 ;;=4^N30.40
 ;;^UTILITY(U,$J,358.3,54778,2)
 ;;=^5015639
 ;;^UTILITY(U,$J,358.3,54779,0)
 ;;=N32.0^^256^2771^6
 ;;^UTILITY(U,$J,358.3,54779,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54779,1,3,0)
 ;;=3^Bladder-Neck Obstruction
 ;;^UTILITY(U,$J,358.3,54779,1,4,0)
 ;;=4^N32.0
 ;;^UTILITY(U,$J,358.3,54779,2)
 ;;=^5015649
 ;;^UTILITY(U,$J,358.3,54780,0)
 ;;=N31.9^^256^2771^70
 ;;^UTILITY(U,$J,358.3,54780,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54780,1,3,0)
 ;;=3^Neurogenic Bladder Dysfunction,Unspec
 ;;^UTILITY(U,$J,358.3,54780,1,4,0)
 ;;=4^N31.9
 ;;^UTILITY(U,$J,358.3,54780,2)
 ;;=^5015648
 ;;^UTILITY(U,$J,358.3,54781,0)
 ;;=N31.1^^256^2771^71
 ;;^UTILITY(U,$J,358.3,54781,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,54781,1,3,0)
 ;;=3^Neuropathic Bladder,Reflex NEC
 ;;^UTILITY(U,$J,358.3,54781,1,4,0)
 ;;=4^N31.1
 ;;^UTILITY(U,$J,358.3,54781,2)
 ;;=^5015645
 ;;^UTILITY(U,$J,358.3,54782,0)
 ;;=N32.89^^256^2771^5
 ;;^UTILITY(U,$J,358.3,54782,1,0)
 ;;=^358.31IA^4^2
