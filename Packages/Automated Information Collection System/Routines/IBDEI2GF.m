IBDEI2GF ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,41183,1,3,0)
 ;;=3^Gout,Lead-Induced Rt Ankle/Foot
 ;;^UTILITY(U,$J,358.3,41183,1,4,0)
 ;;=4^M10.171
 ;;^UTILITY(U,$J,358.3,41183,2)
 ;;=^5010327
 ;;^UTILITY(U,$J,358.3,41184,0)
 ;;=L92.3^^189^2087^17
 ;;^UTILITY(U,$J,358.3,41184,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41184,1,3,0)
 ;;=3^Granuloma,FB of Skin/Subcutaneous Tissue
 ;;^UTILITY(U,$J,358.3,41184,1,4,0)
 ;;=4^L92.3
 ;;^UTILITY(U,$J,358.3,41184,2)
 ;;=^5009464
 ;;^UTILITY(U,$J,358.3,41185,0)
 ;;=M10.9^^189^2087^9
 ;;^UTILITY(U,$J,358.3,41185,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41185,1,3,0)
 ;;=3^Gout, unspecified
 ;;^UTILITY(U,$J,358.3,41185,1,4,0)
 ;;=4^M10.9
 ;;^UTILITY(U,$J,358.3,41185,2)
 ;;=^5010404
 ;;^UTILITY(U,$J,358.3,41186,0)
 ;;=M67.471^^189^2087^6
 ;;^UTILITY(U,$J,358.3,41186,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41186,1,3,0)
 ;;=3^Ganglion, right ankle and foot
 ;;^UTILITY(U,$J,358.3,41186,1,4,0)
 ;;=4^M67.471
 ;;^UTILITY(U,$J,358.3,41186,2)
 ;;=^5012975
 ;;^UTILITY(U,$J,358.3,41187,0)
 ;;=M67.472^^189^2087^4
 ;;^UTILITY(U,$J,358.3,41187,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41187,1,3,0)
 ;;=3^Ganglion, left ankle and foot
 ;;^UTILITY(U,$J,358.3,41187,1,4,0)
 ;;=4^M67.472
 ;;^UTILITY(U,$J,358.3,41187,2)
 ;;=^5012976
 ;;^UTILITY(U,$J,358.3,41188,0)
 ;;=M67.472^^189^2087^5
 ;;^UTILITY(U,$J,358.3,41188,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41188,1,3,0)
 ;;=3^Ganglion, left ankle and foot
 ;;^UTILITY(U,$J,358.3,41188,1,4,0)
 ;;=4^M67.472
 ;;^UTILITY(U,$J,358.3,41188,2)
 ;;=^5012976
 ;;^UTILITY(U,$J,358.3,41189,0)
 ;;=M67.471^^189^2087^7
 ;;^UTILITY(U,$J,358.3,41189,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41189,1,3,0)
 ;;=3^Ganglion, right ankle and foot
 ;;^UTILITY(U,$J,358.3,41189,1,4,0)
 ;;=4^M67.471
 ;;^UTILITY(U,$J,358.3,41189,2)
 ;;=^5012975
 ;;^UTILITY(U,$J,358.3,41190,0)
 ;;=R26.9^^189^2087^3
 ;;^UTILITY(U,$J,358.3,41190,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41190,1,3,0)
 ;;=3^Gait/Mobility Abnormalities,Unspec
 ;;^UTILITY(U,$J,358.3,41190,1,4,0)
 ;;=4^R26.9
 ;;^UTILITY(U,$J,358.3,41190,2)
 ;;=^5019309
 ;;^UTILITY(U,$J,358.3,41191,0)
 ;;=R26.1^^189^2087^2
 ;;^UTILITY(U,$J,358.3,41191,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41191,1,3,0)
 ;;=3^Gait,Paralytic
 ;;^UTILITY(U,$J,358.3,41191,1,4,0)
 ;;=4^R26.1
 ;;^UTILITY(U,$J,358.3,41191,2)
 ;;=^5019305
 ;;^UTILITY(U,$J,358.3,41192,0)
 ;;=R26.0^^189^2087^1
 ;;^UTILITY(U,$J,358.3,41192,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41192,1,3,0)
 ;;=3^Gait,Ataxic
 ;;^UTILITY(U,$J,358.3,41192,1,4,0)
 ;;=4^R26.0
 ;;^UTILITY(U,$J,358.3,41192,2)
 ;;=^5019304
 ;;^UTILITY(U,$J,358.3,41193,0)
 ;;=I96.^^189^2087^8
 ;;^UTILITY(U,$J,358.3,41193,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41193,1,3,0)
 ;;=3^Gangrene NEC
 ;;^UTILITY(U,$J,358.3,41193,1,4,0)
 ;;=4^I96.
 ;;^UTILITY(U,$J,358.3,41193,2)
 ;;=^5008081
 ;;^UTILITY(U,$J,358.3,41194,0)
 ;;=R20.1^^189^2088^10
 ;;^UTILITY(U,$J,358.3,41194,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41194,1,3,0)
 ;;=3^Hypoesthesia of skin
 ;;^UTILITY(U,$J,358.3,41194,1,4,0)
 ;;=4^R20.1
 ;;^UTILITY(U,$J,358.3,41194,2)
 ;;=^5019279
 ;;^UTILITY(U,$J,358.3,41195,0)
 ;;=R20.3^^189^2088^9
 ;;^UTILITY(U,$J,358.3,41195,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41195,1,3,0)
 ;;=3^Hyperesthesia
 ;;^UTILITY(U,$J,358.3,41195,1,4,0)
 ;;=4^R20.3
 ;;^UTILITY(U,$J,358.3,41195,2)
 ;;=^60011
 ;;^UTILITY(U,$J,358.3,41196,0)
 ;;=M20.12^^189^2088^3
 ;;^UTILITY(U,$J,358.3,41196,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,41196,1,3,0)
 ;;=3^Hallux valgus (acquired), left foot
 ;;^UTILITY(U,$J,358.3,41196,1,4,0)
 ;;=4^M20.12
