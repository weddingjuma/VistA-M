IBDEI15M ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,19280,0)
 ;;=F31.70^^94^920^4
 ;;^UTILITY(U,$J,358.3,19280,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19280,1,3,0)
 ;;=3^Bipolar Disorder,In Remis,Most Recent Episode Unspec
 ;;^UTILITY(U,$J,358.3,19280,1,4,0)
 ;;=4^F31.70
 ;;^UTILITY(U,$J,358.3,19280,2)
 ;;=^5003510
 ;;^UTILITY(U,$J,358.3,19281,0)
 ;;=F29.^^94^920^19
 ;;^UTILITY(U,$J,358.3,19281,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19281,1,3,0)
 ;;=3^Psychosis not d/t Substance/Known Physiol Cond,Unspec
 ;;^UTILITY(U,$J,358.3,19281,1,4,0)
 ;;=4^F29.
 ;;^UTILITY(U,$J,358.3,19281,2)
 ;;=^5003484
 ;;^UTILITY(U,$J,358.3,19282,0)
 ;;=F28.^^94^920^20
 ;;^UTILITY(U,$J,358.3,19282,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19282,1,3,0)
 ;;=3^Psychosis not d/t Substance/Known Physiol Cond NEC
 ;;^UTILITY(U,$J,358.3,19282,1,4,0)
 ;;=4^F28.
 ;;^UTILITY(U,$J,358.3,19282,2)
 ;;=^5003483
 ;;^UTILITY(U,$J,358.3,19283,0)
 ;;=F41.9^^94^920^3
 ;;^UTILITY(U,$J,358.3,19283,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19283,1,3,0)
 ;;=3^Anxiety Disorder,Unspec
 ;;^UTILITY(U,$J,358.3,19283,1,4,0)
 ;;=4^F41.9
 ;;^UTILITY(U,$J,358.3,19283,2)
 ;;=^5003567
 ;;^UTILITY(U,$J,358.3,19284,0)
 ;;=F42.^^94^920^13
 ;;^UTILITY(U,$J,358.3,19284,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19284,1,3,0)
 ;;=3^Obsessive-Compulsive Disorder
 ;;^UTILITY(U,$J,358.3,19284,1,4,0)
 ;;=4^F42.
 ;;^UTILITY(U,$J,358.3,19284,2)
 ;;=^5003568
 ;;^UTILITY(U,$J,358.3,19285,0)
 ;;=F45.0^^94^920^23
 ;;^UTILITY(U,$J,358.3,19285,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19285,1,3,0)
 ;;=3^Somatization Disorder
 ;;^UTILITY(U,$J,358.3,19285,1,4,0)
 ;;=4^F45.0
 ;;^UTILITY(U,$J,358.3,19285,2)
 ;;=^112280
 ;;^UTILITY(U,$J,358.3,19286,0)
 ;;=F69.^^94^920^2
 ;;^UTILITY(U,$J,358.3,19286,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19286,1,3,0)
 ;;=3^Adult Personality and Behavior Disorder,Unspec
 ;;^UTILITY(U,$J,358.3,19286,1,4,0)
 ;;=4^F69.
 ;;^UTILITY(U,$J,358.3,19286,2)
 ;;=^5003667
 ;;^UTILITY(U,$J,358.3,19287,0)
 ;;=F60.9^^94^920^17
 ;;^UTILITY(U,$J,358.3,19287,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19287,1,3,0)
 ;;=3^Personality Disorder,Unspec
 ;;^UTILITY(U,$J,358.3,19287,1,4,0)
 ;;=4^F60.9
 ;;^UTILITY(U,$J,358.3,19287,2)
 ;;=^5003639
 ;;^UTILITY(U,$J,358.3,19288,0)
 ;;=F32.9^^94^920^12
 ;;^UTILITY(U,$J,358.3,19288,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19288,1,3,0)
 ;;=3^MDD,Single Episode,Unspec
 ;;^UTILITY(U,$J,358.3,19288,1,4,0)
 ;;=4^F32.9
 ;;^UTILITY(U,$J,358.3,19288,2)
 ;;=^5003528
 ;;^UTILITY(U,$J,358.3,19289,0)
 ;;=F40.231^^94^920^9
 ;;^UTILITY(U,$J,358.3,19289,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19289,1,3,0)
 ;;=3^Fear of Injections/Transfusions
 ;;^UTILITY(U,$J,358.3,19289,1,4,0)
 ;;=4^F40.231
 ;;^UTILITY(U,$J,358.3,19289,2)
 ;;=^5003551
 ;;^UTILITY(U,$J,358.3,19290,0)
 ;;=F40.240^^94^920^8
 ;;^UTILITY(U,$J,358.3,19290,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19290,1,3,0)
 ;;=3^Claustrophobia
 ;;^UTILITY(U,$J,358.3,19290,1,4,0)
 ;;=4^F40.240
 ;;^UTILITY(U,$J,358.3,19290,2)
 ;;=^5003554
 ;;^UTILITY(U,$J,358.3,19291,0)
 ;;=F43.21^^94^920^10
 ;;^UTILITY(U,$J,358.3,19291,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19291,1,3,0)
 ;;=3^Grief Reaction
 ;;^UTILITY(U,$J,358.3,19291,1,4,0)
 ;;=4^F43.21
 ;;^UTILITY(U,$J,358.3,19291,2)
 ;;=^331948
 ;;^UTILITY(U,$J,358.3,19292,0)
 ;;=F43.10^^94^920^16
 ;;^UTILITY(U,$J,358.3,19292,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19292,1,3,0)
 ;;=3^PTSD,Unspec
 ;;^UTILITY(U,$J,358.3,19292,1,4,0)
 ;;=4^F43.10
 ;;^UTILITY(U,$J,358.3,19292,2)
 ;;=^5003570
 ;;^UTILITY(U,$J,358.3,19293,0)
 ;;=F43.11^^94^920^14