IBDEI1CR ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,22521,1,3,0)
 ;;=3^Bone Marrow Biopsy, Needle/Trocar
 ;;^UTILITY(U,$J,358.3,22522,0)
 ;;=36589^^102^1044^5^^^^1
 ;;^UTILITY(U,$J,358.3,22522,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22522,1,1,0)
 ;;=1^36589
 ;;^UTILITY(U,$J,358.3,22522,1,3,0)
 ;;=3^Hickman Cath Removal
 ;;^UTILITY(U,$J,358.3,22523,0)
 ;;=49082^^102^1044^10^^^^1
 ;;^UTILITY(U,$J,358.3,22523,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22523,1,1,0)
 ;;=1^49082
 ;;^UTILITY(U,$J,358.3,22523,1,3,0)
 ;;=3^Paracentesis (Abdominal)
 ;;^UTILITY(U,$J,358.3,22524,0)
 ;;=32554^^102^1044^12^^^^1
 ;;^UTILITY(U,$J,358.3,22524,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22524,1,1,0)
 ;;=1^32554
 ;;^UTILITY(U,$J,358.3,22524,1,3,0)
 ;;=3^Thoracentesis
 ;;^UTILITY(U,$J,358.3,22525,0)
 ;;=31505^^102^1044^6^^^^1
 ;;^UTILITY(U,$J,358.3,22525,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22525,1,1,0)
 ;;=1^31505
 ;;^UTILITY(U,$J,358.3,22525,1,3,0)
 ;;=3^Indirect Laryngoscopy
 ;;^UTILITY(U,$J,358.3,22526,0)
 ;;=31510^^102^1044^7^^^^1
 ;;^UTILITY(U,$J,358.3,22526,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22526,1,1,0)
 ;;=1^31510
 ;;^UTILITY(U,$J,358.3,22526,1,3,0)
 ;;=3^Indirect Laryngoscopy w/Biopsy
 ;;^UTILITY(U,$J,358.3,22527,0)
 ;;=36430^^102^1044^1^^^^1
 ;;^UTILITY(U,$J,358.3,22527,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22527,1,1,0)
 ;;=1^36430
 ;;^UTILITY(U,$J,358.3,22527,1,3,0)
 ;;=3^Blood Transfusion
 ;;^UTILITY(U,$J,358.3,22528,0)
 ;;=90732^^102^1045^2^^^^1
 ;;^UTILITY(U,$J,358.3,22528,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22528,1,1,0)
 ;;=1^90732
 ;;^UTILITY(U,$J,358.3,22528,1,3,0)
 ;;=3^Pneumococcal Vaccine
 ;;^UTILITY(U,$J,358.3,22529,0)
 ;;=90658^^102^1045^1^^^^1
 ;;^UTILITY(U,$J,358.3,22529,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22529,1,1,0)
 ;;=1^90658
 ;;^UTILITY(U,$J,358.3,22529,1,3,0)
 ;;=3^Flu Vaccine IM (Flulaval)
 ;;^UTILITY(U,$J,358.3,22530,0)
 ;;=99195^^102^1046^21^^^^1
 ;;^UTILITY(U,$J,358.3,22530,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22530,1,1,0)
 ;;=1^99195
 ;;^UTILITY(U,$J,358.3,22530,1,3,0)
 ;;=3^Phlebotomy
 ;;^UTILITY(U,$J,358.3,22531,0)
 ;;=96450^^102^1046^17^^^^1
 ;;^UTILITY(U,$J,358.3,22531,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22531,1,1,0)
 ;;=1^96450
 ;;^UTILITY(U,$J,358.3,22531,1,3,0)
 ;;=3^Chemotherapy, Into CNS
 ;;^UTILITY(U,$J,358.3,22532,0)
 ;;=96420^^102^1046^9^^^^1
 ;;^UTILITY(U,$J,358.3,22532,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22532,1,1,0)
 ;;=1^96420
 ;;^UTILITY(U,$J,358.3,22532,1,3,0)
 ;;=3^Chemo, IA push
 ;;^UTILITY(U,$J,358.3,22533,0)
 ;;=96422^^102^1046^8^^^^1
 ;;^UTILITY(U,$J,358.3,22533,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22533,1,1,0)
 ;;=1^96422
 ;;^UTILITY(U,$J,358.3,22533,1,3,0)
 ;;=3^Chemo, IA infusion,Init hr
 ;;^UTILITY(U,$J,358.3,22534,0)
 ;;=96405^^102^1046^2^^^^1
 ;;^UTILITY(U,$J,358.3,22534,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22534,1,1,0)
 ;;=1^96405
 ;;^UTILITY(U,$J,358.3,22534,1,3,0)
 ;;=3^Chemo Admin Intralesional
 ;;^UTILITY(U,$J,358.3,22535,0)
 ;;=96440^^102^1046^3^^^^1
 ;;^UTILITY(U,$J,358.3,22535,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22535,1,1,0)
 ;;=1^96440
 ;;^UTILITY(U,$J,358.3,22535,1,3,0)
 ;;=3^Chemo Admin, Pleural Cavity
 ;;^UTILITY(U,$J,358.3,22536,0)
 ;;=96542^^102^1046^7^^^^1
 ;;^UTILITY(U,$J,358.3,22536,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22536,1,1,0)
 ;;=1^96542
 ;;^UTILITY(U,$J,358.3,22536,1,3,0)
 ;;=3^Chemo Inj Via Reservoir
 ;;^UTILITY(U,$J,358.3,22537,0)
 ;;=51720^^102^1046^1^^^^1
 ;;^UTILITY(U,$J,358.3,22537,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,22537,1,1,0)
 ;;=1^51720