IBDEI19I ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,21107,0)
 ;;=G0153^^100^1023^10^^^^1
 ;;^UTILITY(U,$J,358.3,21107,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21107,1,2,0)
 ;;=2^SLP in Home/Hospice,Ea 15min
 ;;^UTILITY(U,$J,358.3,21107,1,3,0)
 ;;=3^G0153
 ;;^UTILITY(U,$J,358.3,21108,0)
 ;;=G0155^^100^1023^11^^^^1
 ;;^UTILITY(U,$J,358.3,21108,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21108,1,2,0)
 ;;=2^SW in Home/Hospice,Ea 15min
 ;;^UTILITY(U,$J,358.3,21108,1,3,0)
 ;;=3^G0155
 ;;^UTILITY(U,$J,358.3,21109,0)
 ;;=99600^^100^1023^2^^^^1
 ;;^UTILITY(U,$J,358.3,21109,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21109,1,2,0)
 ;;=2^KT in Home/Hospice,Ea 15min
 ;;^UTILITY(U,$J,358.3,21109,1,3,0)
 ;;=3^99600
 ;;^UTILITY(U,$J,358.3,21110,0)
 ;;=99600^^100^1023^1^^^^1
 ;;^UTILITY(U,$J,358.3,21110,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21110,1,2,0)
 ;;=2^BRS in Home/Hospice,Ea 15min
 ;;^UTILITY(U,$J,358.3,21110,1,3,0)
 ;;=3^99600
 ;;^UTILITY(U,$J,358.3,21111,0)
 ;;=97535^^100^1024^2^^^^1
 ;;^UTILITY(U,$J,358.3,21111,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21111,1,2,0)
 ;;=2^Self Care Mgmt Training
 ;;^UTILITY(U,$J,358.3,21111,1,3,0)
 ;;=3^97535
 ;;^UTILITY(U,$J,358.3,21112,0)
 ;;=T2024^^100^1024^3^^^^1
 ;;^UTILITY(U,$J,358.3,21112,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21112,1,2,0)
 ;;=2^Serv Asmnt/Care Plan Waiver
 ;;^UTILITY(U,$J,358.3,21112,1,3,0)
 ;;=3^T2024
 ;;^UTILITY(U,$J,358.3,21113,0)
 ;;=97110^^100^1024^5^^^^1
 ;;^UTILITY(U,$J,358.3,21113,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21113,1,2,0)
 ;;=2^Therapeutic Exercises
 ;;^UTILITY(U,$J,358.3,21113,1,3,0)
 ;;=3^97110
 ;;^UTILITY(U,$J,358.3,21114,0)
 ;;=97116^^100^1024^1^^^^1
 ;;^UTILITY(U,$J,358.3,21114,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21114,1,2,0)
 ;;=2^Gait Training Therapy
 ;;^UTILITY(U,$J,358.3,21114,1,3,0)
 ;;=3^97116
 ;;^UTILITY(U,$J,358.3,21115,0)
 ;;=97530^^100^1024^4^^^^1
 ;;^UTILITY(U,$J,358.3,21115,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21115,1,2,0)
 ;;=2^Therapeutic Activities
 ;;^UTILITY(U,$J,358.3,21115,1,3,0)
 ;;=3^97530
 ;;^UTILITY(U,$J,358.3,21116,0)
 ;;=97542^^100^1024^6^^^^1
 ;;^UTILITY(U,$J,358.3,21116,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21116,1,2,0)
 ;;=2^Wheelchair Mgmt Training
 ;;^UTILITY(U,$J,358.3,21116,1,3,0)
 ;;=3^97542
 ;;^UTILITY(U,$J,358.3,21117,0)
 ;;=G0153^^100^1025^1^^^^1
 ;;^UTILITY(U,$J,358.3,21117,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,21117,1,2,0)
 ;;=2^Speech-Language Therapy,Ea 15min
 ;;^UTILITY(U,$J,358.3,21117,1,3,0)
 ;;=3^G0153
 ;;^UTILITY(U,$J,358.3,21118,0)
 ;;=Z89.012^^101^1026^10
 ;;^UTILITY(U,$J,358.3,21118,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21118,1,3,0)
 ;;=3^Acquired absence of left thumb
 ;;^UTILITY(U,$J,358.3,21118,1,4,0)
 ;;=4^Z89.012
 ;;^UTILITY(U,$J,358.3,21118,2)
 ;;=^5063532
 ;;^UTILITY(U,$J,358.3,21119,0)
 ;;=Z89.011^^101^1026^25
 ;;^UTILITY(U,$J,358.3,21119,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21119,1,3,0)
 ;;=3^Acquired absence of right thumb
 ;;^UTILITY(U,$J,358.3,21119,1,4,0)
 ;;=4^Z89.011
 ;;^UTILITY(U,$J,358.3,21119,2)
 ;;=^5063531
 ;;^UTILITY(U,$J,358.3,21120,0)
 ;;=Z89.021^^101^1026^16
 ;;^UTILITY(U,$J,358.3,21120,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21120,1,3,0)
 ;;=3^Acquired absence of right finger(s)
 ;;^UTILITY(U,$J,358.3,21120,1,4,0)
 ;;=4^Z89.021
 ;;^UTILITY(U,$J,358.3,21120,2)
 ;;=^5063534
 ;;^UTILITY(U,$J,358.3,21121,0)
 ;;=Z89.022^^101^1026^2
 ;;^UTILITY(U,$J,358.3,21121,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21121,1,3,0)
 ;;=3^Acquired absence of left finger(s)
 ;;^UTILITY(U,$J,358.3,21121,1,4,0)
 ;;=4^Z89.022
