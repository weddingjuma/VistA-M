IBDEI0VV ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,14667,1,4,0)
 ;;=4^Z83.518
 ;;^UTILITY(U,$J,358.3,14667,2)
 ;;=^5063383
 ;;^UTILITY(U,$J,358.3,14668,0)
 ;;=Z79.899^^82^781^10
 ;;^UTILITY(U,$J,358.3,14668,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14668,1,3,0)
 ;;=3^Long Term Current Drug Therapy NEC
 ;;^UTILITY(U,$J,358.3,14668,1,4,0)
 ;;=4^Z79.899
 ;;^UTILITY(U,$J,358.3,14668,2)
 ;;=^5063343
 ;;^UTILITY(U,$J,358.3,14669,0)
 ;;=Z01.00^^82^781^4
 ;;^UTILITY(U,$J,358.3,14669,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14669,1,3,0)
 ;;=3^Eye/Vision Exam w/o Abnormal Findings
 ;;^UTILITY(U,$J,358.3,14669,1,4,0)
 ;;=4^Z01.00
 ;;^UTILITY(U,$J,358.3,14669,2)
 ;;=^5062612
 ;;^UTILITY(U,$J,358.3,14670,0)
 ;;=Z01.01^^82^781^3
 ;;^UTILITY(U,$J,358.3,14670,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14670,1,3,0)
 ;;=3^Eye/Vision Exam w/ Abnormal Findings
 ;;^UTILITY(U,$J,358.3,14670,1,4,0)
 ;;=4^Z01.01
 ;;^UTILITY(U,$J,358.3,14670,2)
 ;;=^5062613
 ;;^UTILITY(U,$J,358.3,14671,0)
 ;;=E05.90^^82^781^21
 ;;^UTILITY(U,$J,358.3,14671,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14671,1,3,0)
 ;;=3^Thyrotoxicosis,Unspec
 ;;^UTILITY(U,$J,358.3,14671,1,4,0)
 ;;=4^E05.90
 ;;^UTILITY(U,$J,358.3,14671,2)
 ;;=^5002492
 ;;^UTILITY(U,$J,358.3,14672,0)
 ;;=99201^^83^782^1
 ;;^UTILITY(U,$J,358.3,14672,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,14672,1,1,0)
 ;;=1^Problem Focus
 ;;^UTILITY(U,$J,358.3,14672,1,2,0)
 ;;=2^99201
 ;;^UTILITY(U,$J,358.3,14673,0)
 ;;=99202^^83^782^2
 ;;^UTILITY(U,$J,358.3,14673,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,14673,1,1,0)
 ;;=1^Expanded Problem Focus
 ;;^UTILITY(U,$J,358.3,14673,1,2,0)
 ;;=2^99202
 ;;^UTILITY(U,$J,358.3,14674,0)
 ;;=99203^^83^782^3
 ;;^UTILITY(U,$J,358.3,14674,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,14674,1,1,0)
 ;;=1^Detailed
 ;;^UTILITY(U,$J,358.3,14674,1,2,0)
 ;;=2^99203
 ;;^UTILITY(U,$J,358.3,14675,0)
 ;;=99204^^83^782^4
 ;;^UTILITY(U,$J,358.3,14675,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,14675,1,1,0)
 ;;=1^Comprehensive, Moderate
 ;;^UTILITY(U,$J,358.3,14675,1,2,0)
 ;;=2^99204
 ;;^UTILITY(U,$J,358.3,14676,0)
 ;;=99205^^83^782^5
 ;;^UTILITY(U,$J,358.3,14676,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,14676,1,1,0)
 ;;=1^Comprehensive, High
 ;;^UTILITY(U,$J,358.3,14676,1,2,0)
 ;;=2^99205
 ;;^UTILITY(U,$J,358.3,14677,0)
 ;;=99211^^83^783^1
 ;;^UTILITY(U,$J,358.3,14677,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,14677,1,1,0)
 ;;=1^Brief (no MD seen)
 ;;^UTILITY(U,$J,358.3,14677,1,2,0)
 ;;=2^99211
 ;;^UTILITY(U,$J,358.3,14678,0)
 ;;=99212^^83^783^2
 ;;^UTILITY(U,$J,358.3,14678,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,14678,1,1,0)
 ;;=1^Problem Focused
 ;;^UTILITY(U,$J,358.3,14678,1,2,0)
 ;;=2^99212
 ;;^UTILITY(U,$J,358.3,14679,0)
 ;;=99213^^83^783^3
 ;;^UTILITY(U,$J,358.3,14679,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,14679,1,1,0)
 ;;=1^Expanded Problem Focus
 ;;^UTILITY(U,$J,358.3,14679,1,2,0)
 ;;=2^99213
 ;;^UTILITY(U,$J,358.3,14680,0)
 ;;=99214^^83^783^4
 ;;^UTILITY(U,$J,358.3,14680,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,14680,1,1,0)
 ;;=1^Detailed
 ;;^UTILITY(U,$J,358.3,14680,1,2,0)
 ;;=2^99214
 ;;^UTILITY(U,$J,358.3,14681,0)
 ;;=99215^^83^783^5
 ;;^UTILITY(U,$J,358.3,14681,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,14681,1,1,0)
 ;;=1^Comprehensive
 ;;^UTILITY(U,$J,358.3,14681,1,2,0)
 ;;=2^99215
 ;;^UTILITY(U,$J,358.3,14682,0)
 ;;=99024^^83^783^6
 ;;^UTILITY(U,$J,358.3,14682,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,14682,1,1,0)
 ;;=1^Post Op visit in Global
 ;;^UTILITY(U,$J,358.3,14682,1,2,0)
 ;;=2^99024
 ;;^UTILITY(U,$J,358.3,14683,0)
 ;;=99241^^83^784^1