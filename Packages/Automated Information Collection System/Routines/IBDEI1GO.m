IBDEI1GO ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,24418,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24418,1,3,0)
 ;;=3^Abscess, rectal
 ;;^UTILITY(U,$J,358.3,24418,1,4,0)
 ;;=4^K61.1
 ;;^UTILITY(U,$J,358.3,24418,2)
 ;;=^259588
 ;;^UTILITY(U,$J,358.3,24419,0)
 ;;=N15.1^^121^1221^9
 ;;^UTILITY(U,$J,358.3,24419,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24419,1,3,0)
 ;;=3^Abscess, perinephric and renal
 ;;^UTILITY(U,$J,358.3,24419,1,4,0)
 ;;=4^N15.1
 ;;^UTILITY(U,$J,358.3,24419,2)
 ;;=^270371
 ;;^UTILITY(U,$J,358.3,24420,0)
 ;;=G06.0^^121^1221^6
 ;;^UTILITY(U,$J,358.3,24420,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24420,1,3,0)
 ;;=3^Abscess, intracranial with granuloma
 ;;^UTILITY(U,$J,358.3,24420,1,4,0)
 ;;=4^G06.0
 ;;^UTILITY(U,$J,358.3,24420,2)
 ;;=^5003745
 ;;^UTILITY(U,$J,358.3,24421,0)
 ;;=L02.91^^121^1221^11
 ;;^UTILITY(U,$J,358.3,24421,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24421,1,3,0)
 ;;=3^Abscess, skin and soft tissue
 ;;^UTILITY(U,$J,358.3,24421,1,4,0)
 ;;=4^L02.91
 ;;^UTILITY(U,$J,358.3,24421,2)
 ;;=^5009016
 ;;^UTILITY(U,$J,358.3,24422,0)
 ;;=L02.818^^121^1221^5
 ;;^UTILITY(U,$J,358.3,24422,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24422,1,3,0)
 ;;=3^Abscess, cutaneous of other sites
 ;;^UTILITY(U,$J,358.3,24422,1,4,0)
 ;;=4^L02.818
 ;;^UTILITY(U,$J,358.3,24422,2)
 ;;=^5009011
 ;;^UTILITY(U,$J,358.3,24423,0)
 ;;=B20.^^121^1221^13
 ;;^UTILITY(U,$J,358.3,24423,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24423,1,3,0)
 ;;=3^Acquired Immunodeficiency Syndrome (AIDS)
 ;;^UTILITY(U,$J,358.3,24423,1,4,0)
 ;;=4^B20.
 ;;^UTILITY(U,$J,358.3,24423,2)
 ;;=^5000555
 ;;^UTILITY(U,$J,358.3,24424,0)
 ;;=B44.1^^121^1221^19
 ;;^UTILITY(U,$J,358.3,24424,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24424,1,3,0)
 ;;=3^Aspergillosis,Pulmonary
 ;;^UTILITY(U,$J,358.3,24424,1,4,0)
 ;;=4^B44.1
 ;;^UTILITY(U,$J,358.3,24424,2)
 ;;=^5000664
 ;;^UTILITY(U,$J,358.3,24425,0)
 ;;=B44.89^^121^1221^18
 ;;^UTILITY(U,$J,358.3,24425,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24425,1,3,0)
 ;;=3^Aspergillosis NEC
 ;;^UTILITY(U,$J,358.3,24425,1,4,0)
 ;;=4^B44.89
 ;;^UTILITY(U,$J,358.3,24425,2)
 ;;=^5000667
 ;;^UTILITY(U,$J,358.3,24426,0)
 ;;=R78.81^^121^1221^22
 ;;^UTILITY(U,$J,358.3,24426,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24426,1,3,0)
 ;;=3^Bacteremia
 ;;^UTILITY(U,$J,358.3,24426,1,4,0)
 ;;=4^R78.81
 ;;^UTILITY(U,$J,358.3,24426,2)
 ;;=^12280
 ;;^UTILITY(U,$J,358.3,24427,0)
 ;;=T80.219A^^121^1221^23
 ;;^UTILITY(U,$J,358.3,24427,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24427,1,3,0)
 ;;=3^Bacteremia, associated w/ central venous cath, init encntr
 ;;^UTILITY(U,$J,358.3,24427,1,4,0)
 ;;=4^T80.219A
 ;;^UTILITY(U,$J,358.3,24427,2)
 ;;=^5054359
 ;;^UTILITY(U,$J,358.3,24428,0)
 ;;=B40.2^^121^1221^25
 ;;^UTILITY(U,$J,358.3,24428,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24428,1,3,0)
 ;;=3^Blastomycosis,Pulmonary
 ;;^UTILITY(U,$J,358.3,24428,1,4,0)
 ;;=4^B40.2
 ;;^UTILITY(U,$J,358.3,24428,2)
 ;;=^5000641
 ;;^UTILITY(U,$J,358.3,24429,0)
 ;;=B40.3^^121^1221^26
 ;;^UTILITY(U,$J,358.3,24429,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24429,1,3,0)
 ;;=3^Blastomycosis,Skin and soft tissue
 ;;^UTILITY(U,$J,358.3,24429,1,4,0)
 ;;=4^B40.3
 ;;^UTILITY(U,$J,358.3,24429,2)
 ;;=^5000642
 ;;^UTILITY(U,$J,358.3,24430,0)
 ;;=B40.89^^121^1221^24
 ;;^UTILITY(U,$J,358.3,24430,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24430,1,3,0)
 ;;=3^Blastomycosis NEC
 ;;^UTILITY(U,$J,358.3,24430,1,4,0)
 ;;=4^B40.89
 ;;^UTILITY(U,$J,358.3,24430,2)
 ;;=^5000645
 ;;^UTILITY(U,$J,358.3,24431,0)
 ;;=J20.9^^121^1221^28
 ;;^UTILITY(U,$J,358.3,24431,1,0)
 ;;=^358.31IA^4^2
