IBDEI1S8 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,29838,1,3,0)
 ;;=3^Personal Hx of Urinary Calculi
 ;;^UTILITY(U,$J,358.3,29838,1,4,0)
 ;;=4^Z87.442
 ;;^UTILITY(U,$J,358.3,29838,2)
 ;;=^5063497
 ;;^UTILITY(U,$J,358.3,29839,0)
 ;;=N18.1^^135^1368^13
 ;;^UTILITY(U,$J,358.3,29839,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29839,1,3,0)
 ;;=3^Chronic Kidney Disease,Stage 1
 ;;^UTILITY(U,$J,358.3,29839,1,4,0)
 ;;=4^N18.1
 ;;^UTILITY(U,$J,358.3,29839,2)
 ;;=^5015602
 ;;^UTILITY(U,$J,358.3,29840,0)
 ;;=N18.2^^135^1368^14
 ;;^UTILITY(U,$J,358.3,29840,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29840,1,3,0)
 ;;=3^Chronic Kidney Disease,Stage 2
 ;;^UTILITY(U,$J,358.3,29840,1,4,0)
 ;;=4^N18.2
 ;;^UTILITY(U,$J,358.3,29840,2)
 ;;=^5015603
 ;;^UTILITY(U,$J,358.3,29841,0)
 ;;=N18.3^^135^1368^15
 ;;^UTILITY(U,$J,358.3,29841,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29841,1,3,0)
 ;;=3^Chronic Kidney Disease,Stage 3
 ;;^UTILITY(U,$J,358.3,29841,1,4,0)
 ;;=4^N18.3
 ;;^UTILITY(U,$J,358.3,29841,2)
 ;;=^5015604
 ;;^UTILITY(U,$J,358.3,29842,0)
 ;;=N18.4^^135^1368^16
 ;;^UTILITY(U,$J,358.3,29842,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29842,1,3,0)
 ;;=3^Chronic Kidney Disease,Stage 4
 ;;^UTILITY(U,$J,358.3,29842,1,4,0)
 ;;=4^N18.4
 ;;^UTILITY(U,$J,358.3,29842,2)
 ;;=^5015605
 ;;^UTILITY(U,$J,358.3,29843,0)
 ;;=N18.5^^135^1368^17
 ;;^UTILITY(U,$J,358.3,29843,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29843,1,3,0)
 ;;=3^Chronic Kidney Disease,Stage 5
 ;;^UTILITY(U,$J,358.3,29843,1,4,0)
 ;;=4^N18.5
 ;;^UTILITY(U,$J,358.3,29843,2)
 ;;=^5015606
 ;;^UTILITY(U,$J,358.3,29844,0)
 ;;=Q61.3^^135^1368^80
 ;;^UTILITY(U,$J,358.3,29844,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29844,1,3,0)
 ;;=3^Polycystic Kidney,Unspec
 ;;^UTILITY(U,$J,358.3,29844,1,4,0)
 ;;=4^Q61.3
 ;;^UTILITY(U,$J,358.3,29844,2)
 ;;=^5018797
 ;;^UTILITY(U,$J,358.3,29845,0)
 ;;=N20.1^^135^1368^9
 ;;^UTILITY(U,$J,358.3,29845,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29845,1,3,0)
 ;;=3^Calculus Ureter
 ;;^UTILITY(U,$J,358.3,29845,1,4,0)
 ;;=4^N20.1
 ;;^UTILITY(U,$J,358.3,29845,2)
 ;;=^5015608
 ;;^UTILITY(U,$J,358.3,29846,0)
 ;;=N18.9^^135^1368^18
 ;;^UTILITY(U,$J,358.3,29846,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29846,1,3,0)
 ;;=3^Chronic Kidney Failure,Unspec
 ;;^UTILITY(U,$J,358.3,29846,1,4,0)
 ;;=4^N18.9
 ;;^UTILITY(U,$J,358.3,29846,2)
 ;;=^332812
 ;;^UTILITY(U,$J,358.3,29847,0)
 ;;=N18.6^^135^1368^28
 ;;^UTILITY(U,$J,358.3,29847,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29847,1,3,0)
 ;;=3^End Stage Renal Disease (ESRD)
 ;;^UTILITY(U,$J,358.3,29847,1,4,0)
 ;;=4^N18.6
 ;;^UTILITY(U,$J,358.3,29847,2)
 ;;=^303986
 ;;^UTILITY(U,$J,358.3,29848,0)
 ;;=N52.9^^135^1368^44
 ;;^UTILITY(U,$J,358.3,29848,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29848,1,3,0)
 ;;=3^Erectile Dysfunction,Unspec
 ;;^UTILITY(U,$J,358.3,29848,1,4,0)
 ;;=4^N52.9
 ;;^UTILITY(U,$J,358.3,29848,2)
 ;;=^5015763
 ;;^UTILITY(U,$J,358.3,29849,0)
 ;;=N32.81^^135^1368^75
 ;;^UTILITY(U,$J,358.3,29849,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29849,1,3,0)
 ;;=3^Overactive Bladder
 ;;^UTILITY(U,$J,358.3,29849,1,4,0)
 ;;=4^N32.81
 ;;^UTILITY(U,$J,358.3,29849,2)
 ;;=^5015652
 ;;^UTILITY(U,$J,358.3,29850,0)
 ;;=Q61.2^^135^1368^79
 ;;^UTILITY(U,$J,358.3,29850,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29850,1,3,0)
 ;;=3^Polycystic Kidney,Adult Type
 ;;^UTILITY(U,$J,358.3,29850,1,4,0)
 ;;=4^Q61.2
 ;;^UTILITY(U,$J,358.3,29850,2)
 ;;=^5018796
 ;;^UTILITY(U,$J,358.3,29851,0)
 ;;=N41.1^^135^1368^83
 ;;^UTILITY(U,$J,358.3,29851,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29851,1,3,0)
 ;;=3^Prostatitis,Chronic