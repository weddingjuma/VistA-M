IBDEI2NN ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,44555,0)
 ;;=Z91.89^^200^2229^118
 ;;^UTILITY(U,$J,358.3,44555,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44555,1,3,0)
 ;;=3^Personal Risk Factors NEC
 ;;^UTILITY(U,$J,358.3,44555,1,4,0)
 ;;=4^Z91.89
 ;;^UTILITY(U,$J,358.3,44555,2)
 ;;=^5063628
 ;;^UTILITY(U,$J,358.3,44556,0)
 ;;=Z92.89^^200^2229^106
 ;;^UTILITY(U,$J,358.3,44556,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44556,1,3,0)
 ;;=3^Personal Hx of Other Medical Treatment
 ;;^UTILITY(U,$J,358.3,44556,1,4,0)
 ;;=4^Z92.89
 ;;^UTILITY(U,$J,358.3,44556,2)
 ;;=^5063641
 ;;^UTILITY(U,$J,358.3,44557,0)
 ;;=Z77.110^^200^2229^9
 ;;^UTILITY(U,$J,358.3,44557,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44557,1,3,0)
 ;;=3^Air Pollution Contact/Exposure
 ;;^UTILITY(U,$J,358.3,44557,1,4,0)
 ;;=4^Z77.110
 ;;^UTILITY(U,$J,358.3,44557,2)
 ;;=^5063314
 ;;^UTILITY(U,$J,358.3,44558,0)
 ;;=Z77.112^^200^2229^142
 ;;^UTILITY(U,$J,358.3,44558,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44558,1,3,0)
 ;;=3^Soil Pollution Contact/Exposure
 ;;^UTILITY(U,$J,358.3,44558,1,4,0)
 ;;=4^Z77.112
 ;;^UTILITY(U,$J,358.3,44558,2)
 ;;=^5063316
 ;;^UTILITY(U,$J,358.3,44559,0)
 ;;=Z77.111^^200^2229^148
 ;;^UTILITY(U,$J,358.3,44559,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44559,1,3,0)
 ;;=3^Water Pollution Contact/Exposure
 ;;^UTILITY(U,$J,358.3,44559,1,4,0)
 ;;=4^Z77.111
 ;;^UTILITY(U,$J,358.3,44559,2)
 ;;=^5063315
 ;;^UTILITY(U,$J,358.3,44560,0)
 ;;=Z77.128^^200^2229^119
 ;;^UTILITY(U,$J,358.3,44560,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44560,1,3,0)
 ;;=3^Physical Environment Hazards Contact/Exposure
 ;;^UTILITY(U,$J,358.3,44560,1,4,0)
 ;;=4^Z77.128
 ;;^UTILITY(U,$J,358.3,44560,2)
 ;;=^5063322
 ;;^UTILITY(U,$J,358.3,44561,0)
 ;;=Z77.123^^200^2229^140
 ;;^UTILITY(U,$J,358.3,44561,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44561,1,3,0)
 ;;=3^Radon/Radiation Contact/Exposure
 ;;^UTILITY(U,$J,358.3,44561,1,4,0)
 ;;=4^Z77.123
 ;;^UTILITY(U,$J,358.3,44561,2)
 ;;=^5063321
 ;;^UTILITY(U,$J,358.3,44562,0)
 ;;=Z77.122^^200^2229^68
 ;;^UTILITY(U,$J,358.3,44562,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44562,1,3,0)
 ;;=3^Noise Contact/Exposure
 ;;^UTILITY(U,$J,358.3,44562,1,4,0)
 ;;=4^Z77.122
 ;;^UTILITY(U,$J,358.3,44562,2)
 ;;=^5063320
 ;;^UTILITY(U,$J,358.3,44563,0)
 ;;=Z77.118^^200^2229^19
 ;;^UTILITY(U,$J,358.3,44563,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44563,1,3,0)
 ;;=3^Environmental Pollution Contact/Exposure
 ;;^UTILITY(U,$J,358.3,44563,1,4,0)
 ;;=4^Z77.118
 ;;^UTILITY(U,$J,358.3,44563,2)
 ;;=^5063317
 ;;^UTILITY(U,$J,358.3,44564,0)
 ;;=Z77.9^^200^2229^54
 ;;^UTILITY(U,$J,358.3,44564,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44564,1,3,0)
 ;;=3^Health Hazard Contact/Exposure
 ;;^UTILITY(U,$J,358.3,44564,1,4,0)
 ;;=4^Z77.9
 ;;^UTILITY(U,$J,358.3,44564,2)
 ;;=^5063326
 ;;^UTILITY(U,$J,358.3,44565,0)
 ;;=Z77.22^^200^2229^18
 ;;^UTILITY(U,$J,358.3,44565,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44565,1,3,0)
 ;;=3^Environmental Exposure Tobacco Smoke/Second-Hand Smoke
 ;;^UTILITY(U,$J,358.3,44565,1,4,0)
 ;;=4^Z77.22
 ;;^UTILITY(U,$J,358.3,44565,2)
 ;;=^5063324
 ;;^UTILITY(U,$J,358.3,44566,0)
 ;;=Z80.0^^200^2229^35
 ;;^UTILITY(U,$J,358.3,44566,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44566,1,3,0)
 ;;=3^Family Hx of Malig Neop of Digestive Organs
 ;;^UTILITY(U,$J,358.3,44566,1,4,0)
 ;;=4^Z80.0
 ;;^UTILITY(U,$J,358.3,44566,2)
 ;;=^5063344
 ;;^UTILITY(U,$J,358.3,44567,0)
 ;;=Z80.1^^200^2229^41
 ;;^UTILITY(U,$J,358.3,44567,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44567,1,3,0)
 ;;=3^Family Hx of Malig Neop of Trachea,Bronc & Lung
