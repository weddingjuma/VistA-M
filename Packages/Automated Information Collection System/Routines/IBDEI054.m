IBDEI054 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,1714,1,4,0)
 ;;=4^S04.011S
 ;;^UTILITY(U,$J,358.3,1714,2)
 ;;=^5020464
 ;;^UTILITY(U,$J,358.3,1715,0)
 ;;=S04.012S^^16^167^24
 ;;^UTILITY(U,$J,358.3,1715,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1715,1,3,0)
 ;;=3^Optic Nerve Injury,Left Eye,Sequela
 ;;^UTILITY(U,$J,358.3,1715,1,4,0)
 ;;=4^S04.012S
 ;;^UTILITY(U,$J,358.3,1715,2)
 ;;=^5020467
 ;;^UTILITY(U,$J,358.3,1716,0)
 ;;=S02.92XS^^16^168^2
 ;;^UTILITY(U,$J,358.3,1716,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1716,1,3,0)
 ;;=3^TBI Late Effect w/ Skull Fracture
 ;;^UTILITY(U,$J,358.3,1716,1,4,0)
 ;;=4^S02.92XS
 ;;^UTILITY(U,$J,358.3,1716,2)
 ;;=^5020443
 ;;^UTILITY(U,$J,358.3,1717,0)
 ;;=S06.9X9S^^16^168^3
 ;;^UTILITY(U,$J,358.3,1717,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1717,1,3,0)
 ;;=3^TBI Late Effect w/o Skull Fracture
 ;;^UTILITY(U,$J,358.3,1717,1,4,0)
 ;;=4^S06.9X9S
 ;;^UTILITY(U,$J,358.3,1717,2)
 ;;=^5021235
 ;;^UTILITY(U,$J,358.3,1718,0)
 ;;=Z87.820^^16^168^1
 ;;^UTILITY(U,$J,358.3,1718,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1718,1,3,0)
 ;;=3^Personal Hx of TBI
 ;;^UTILITY(U,$J,358.3,1718,1,4,0)
 ;;=4^Z87.820
 ;;^UTILITY(U,$J,358.3,1718,2)
 ;;=^5063514
 ;;^UTILITY(U,$J,358.3,1719,0)
 ;;=S05.91XA^^16^168^7
 ;;^UTILITY(U,$J,358.3,1719,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1719,1,3,0)
 ;;=3^Traumatic Blindness,Right Eye,Init Encntr
 ;;^UTILITY(U,$J,358.3,1719,1,4,0)
 ;;=4^S05.91XA
 ;;^UTILITY(U,$J,358.3,1719,2)
 ;;=^5020660
 ;;^UTILITY(U,$J,358.3,1720,0)
 ;;=S05.92XA^^16^168^4
 ;;^UTILITY(U,$J,358.3,1720,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1720,1,3,0)
 ;;=3^Traumatic Blindness,Left Eye,Init Encntr
 ;;^UTILITY(U,$J,358.3,1720,1,4,0)
 ;;=4^S05.92XA
 ;;^UTILITY(U,$J,358.3,1720,2)
 ;;=^5020663
 ;;^UTILITY(U,$J,358.3,1721,0)
 ;;=S05.91XS^^16^168^8
 ;;^UTILITY(U,$J,358.3,1721,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1721,1,3,0)
 ;;=3^Traumatic Blindness,Right Eye,Sequela
 ;;^UTILITY(U,$J,358.3,1721,1,4,0)
 ;;=4^S05.91XS
 ;;^UTILITY(U,$J,358.3,1721,2)
 ;;=^5020662
 ;;^UTILITY(U,$J,358.3,1722,0)
 ;;=S05.92XS^^16^168^5
 ;;^UTILITY(U,$J,358.3,1722,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1722,1,3,0)
 ;;=3^Traumatic Blindness,Left Eye,Sequela
 ;;^UTILITY(U,$J,358.3,1722,1,4,0)
 ;;=4^S05.92XS
 ;;^UTILITY(U,$J,358.3,1722,2)
 ;;=^5020665
 ;;^UTILITY(U,$J,358.3,1723,0)
 ;;=S05.91XD^^16^168^9
 ;;^UTILITY(U,$J,358.3,1723,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1723,1,3,0)
 ;;=3^Traumatic Blindness,Right Eye,Subs Encntr
 ;;^UTILITY(U,$J,358.3,1723,1,4,0)
 ;;=4^S05.91XD
 ;;^UTILITY(U,$J,358.3,1723,2)
 ;;=^5020661
 ;;^UTILITY(U,$J,358.3,1724,0)
 ;;=S05.92XD^^16^168^6
 ;;^UTILITY(U,$J,358.3,1724,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,1724,1,3,0)
 ;;=3^Traumatic Blindness,Left Eye,Subs Encntr
 ;;^UTILITY(U,$J,358.3,1724,1,4,0)
 ;;=4^S05.92XD
 ;;^UTILITY(U,$J,358.3,1724,2)
 ;;=^5020664
 ;;^UTILITY(U,$J,358.3,1725,0)
 ;;=33206^^17^169^36^^^^1
 ;;^UTILITY(U,$J,358.3,1725,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,1725,1,2,0)
 ;;=2^33206
 ;;^UTILITY(U,$J,358.3,1725,1,3,0)
 ;;=3^Pace Implant, Atrial
 ;;^UTILITY(U,$J,358.3,1726,0)
 ;;=33207^^17^169^38^^^^1
 ;;^UTILITY(U,$J,358.3,1726,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,1726,1,2,0)
 ;;=2^33207
 ;;^UTILITY(U,$J,358.3,1726,1,3,0)
 ;;=3^Pace Implant, Vvi
 ;;^UTILITY(U,$J,358.3,1727,0)
 ;;=33208^^17^169^37^^^^1
 ;;^UTILITY(U,$J,358.3,1727,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,1727,1,2,0)
 ;;=2^33208
 ;;^UTILITY(U,$J,358.3,1727,1,3,0)
 ;;=3^Pace Implant, Ddd
 ;;^UTILITY(U,$J,358.3,1728,0)
 ;;=33210^^17^169^63^^^^1
 ;;^UTILITY(U,$J,358.3,1728,1,0)
 ;;=^358.31IA^3^2
