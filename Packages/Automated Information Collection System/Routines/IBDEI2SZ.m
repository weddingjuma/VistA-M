IBDEI2SZ ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,47058,1,2,0)
 ;;=2^99245
 ;;^UTILITY(U,$J,358.3,47058,1,4,0)
 ;;=4^Extended Comprehensive
 ;;^UTILITY(U,$J,358.3,47059,0)
 ;;=99211^^207^2320^1
 ;;^UTILITY(U,$J,358.3,47059,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47059,1,2,0)
 ;;=2^99211
 ;;^UTILITY(U,$J,358.3,47059,1,4,0)
 ;;=4^RN/LPN Visit
 ;;^UTILITY(U,$J,358.3,47060,0)
 ;;=99201^^207^2321^1
 ;;^UTILITY(U,$J,358.3,47060,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47060,1,2,0)
 ;;=2^99201
 ;;^UTILITY(U,$J,358.3,47060,1,4,0)
 ;;=4^Problem Focused
 ;;^UTILITY(U,$J,358.3,47061,0)
 ;;=99202^^207^2321^2
 ;;^UTILITY(U,$J,358.3,47061,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47061,1,2,0)
 ;;=2^99202
 ;;^UTILITY(U,$J,358.3,47061,1,4,0)
 ;;=4^Exp Problem Focused
 ;;^UTILITY(U,$J,358.3,47062,0)
 ;;=99203^^207^2321^3
 ;;^UTILITY(U,$J,358.3,47062,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47062,1,2,0)
 ;;=2^99203
 ;;^UTILITY(U,$J,358.3,47062,1,4,0)
 ;;=4^Detailed
 ;;^UTILITY(U,$J,358.3,47063,0)
 ;;=99204^^207^2321^4
 ;;^UTILITY(U,$J,358.3,47063,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47063,1,2,0)
 ;;=2^99204
 ;;^UTILITY(U,$J,358.3,47063,1,4,0)
 ;;=4^Comprehensive
 ;;^UTILITY(U,$J,358.3,47064,0)
 ;;=99205^^207^2321^5
 ;;^UTILITY(U,$J,358.3,47064,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47064,1,2,0)
 ;;=2^99205
 ;;^UTILITY(U,$J,358.3,47064,1,4,0)
 ;;=4^Ext Comprehensive
 ;;^UTILITY(U,$J,358.3,47065,0)
 ;;=77261^^208^2322^24^^^^1
 ;;^UTILITY(U,$J,358.3,47065,1,0)
 ;;=^358.31IA^4^3
 ;;^UTILITY(U,$J,358.3,47065,1,1,0)
 ;;=1^77261
 ;;^UTILITY(U,$J,358.3,47065,1,3,0)
 ;;=3^Treatment Planning - Simple
 ;;^UTILITY(U,$J,358.3,47065,1,4,0)
 ;;=4
 ;;^UTILITY(U,$J,358.3,47066,0)
 ;;=77262^^208^2322^26^^^^1
 ;;^UTILITY(U,$J,358.3,47066,1,0)
 ;;=^358.31IA^4^3
 ;;^UTILITY(U,$J,358.3,47066,1,1,0)
 ;;=1^77262
 ;;^UTILITY(U,$J,358.3,47066,1,3,0)
 ;;=3^Treatment Planning - Intermediate
 ;;^UTILITY(U,$J,358.3,47066,1,4,0)
 ;;=4
 ;;^UTILITY(U,$J,358.3,47067,0)
 ;;=77263^^208^2322^28^^^^1
 ;;^UTILITY(U,$J,358.3,47067,1,0)
 ;;=^358.31IA^4^3
 ;;^UTILITY(U,$J,358.3,47067,1,1,0)
 ;;=1^77263
 ;;^UTILITY(U,$J,358.3,47067,1,3,0)
 ;;=3^Treatment Planning - Complex
 ;;^UTILITY(U,$J,358.3,47067,1,4,0)
 ;;=4
 ;;^UTILITY(U,$J,358.3,47068,0)
 ;;=77280^^208^2323^1^^^^1
 ;;^UTILITY(U,$J,358.3,47068,1,0)
 ;;=^358.31IA^4^3
 ;;^UTILITY(U,$J,358.3,47068,1,1,0)
 ;;=1^77280
 ;;^UTILITY(U,$J,358.3,47068,1,3,0)
 ;;=3^Simulation - Simple
 ;;^UTILITY(U,$J,358.3,47068,1,4,0)
 ;;=4
 ;;^UTILITY(U,$J,358.3,47069,0)
 ;;=77285^^208^2323^2^^^^1
 ;;^UTILITY(U,$J,358.3,47069,1,0)
 ;;=^358.31IA^4^3
 ;;^UTILITY(U,$J,358.3,47069,1,1,0)
 ;;=1^77285
 ;;^UTILITY(U,$J,358.3,47069,1,3,0)
 ;;=3^Simulation - Intermediate
 ;;^UTILITY(U,$J,358.3,47069,1,4,0)
 ;;=4
 ;;^UTILITY(U,$J,358.3,47070,0)
 ;;=77290^^208^2323^3^^^^1
 ;;^UTILITY(U,$J,358.3,47070,1,0)
 ;;=^358.31IA^4^3
 ;;^UTILITY(U,$J,358.3,47070,1,1,0)
 ;;=1^77290
 ;;^UTILITY(U,$J,358.3,47070,1,3,0)
 ;;=3^Simulation - Complex
 ;;^UTILITY(U,$J,358.3,47070,1,4,0)
 ;;=4
 ;;^UTILITY(U,$J,358.3,47071,0)
 ;;=77293^^208^2323^4^^^^1
 ;;^UTILITY(U,$J,358.3,47071,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,47071,1,1,0)
 ;;=1^77293
 ;;^UTILITY(U,$J,358.3,47071,1,3,0)
 ;;=3^Respiratory Motion Mgmt Sim,Add-On
 ;;^UTILITY(U,$J,358.3,47072,0)
 ;;=77332^^208^2324^2^^^^1
 ;;^UTILITY(U,$J,358.3,47072,1,0)
 ;;=^358.31IA^4^3
 ;;^UTILITY(U,$J,358.3,47072,1,1,0)
 ;;=1^77332
 ;;^UTILITY(U,$J,358.3,47072,1,3,0)
 ;;=3^Treatment Device - Simple
 ;;^UTILITY(U,$J,358.3,47072,1,4,0)
 ;;=4
 ;;^UTILITY(U,$J,358.3,47073,0)
 ;;=77333^^208^2324^4^^^^1
 ;;^UTILITY(U,$J,358.3,47073,1,0)
 ;;=^358.31IA^4^3
