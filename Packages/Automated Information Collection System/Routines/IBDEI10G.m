IBDEI10G ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,16812,0)
 ;;=B19.9^^88^854^22
 ;;^UTILITY(U,$J,358.3,16812,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16812,1,3,0)
 ;;=3^Infection,Viral Hepatitis w/o Hepatic Coma
 ;;^UTILITY(U,$J,358.3,16812,1,4,0)
 ;;=4^B19.9
 ;;^UTILITY(U,$J,358.3,16812,2)
 ;;=^5000554
 ;;^UTILITY(U,$J,358.3,16813,0)
 ;;=A87.9^^88^854^23
 ;;^UTILITY(U,$J,358.3,16813,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16813,1,3,0)
 ;;=3^Infection,Viral Meningitis,Unspec
 ;;^UTILITY(U,$J,358.3,16813,1,4,0)
 ;;=4^A87.9
 ;;^UTILITY(U,$J,358.3,16813,2)
 ;;=^5000435
 ;;^UTILITY(U,$J,358.3,16814,0)
 ;;=B34.9^^88^854^24
 ;;^UTILITY(U,$J,358.3,16814,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16814,1,3,0)
 ;;=3^Infection,Viral,Unspec
 ;;^UTILITY(U,$J,358.3,16814,1,4,0)
 ;;=4^B34.9
 ;;^UTILITY(U,$J,358.3,16814,2)
 ;;=^5000603
 ;;^UTILITY(U,$J,358.3,16815,0)
 ;;=B02.9^^88^854^25
 ;;^UTILITY(U,$J,358.3,16815,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16815,1,3,0)
 ;;=3^Infection,Zoster w/o Complications
 ;;^UTILITY(U,$J,358.3,16815,1,4,0)
 ;;=4^B02.9
 ;;^UTILITY(U,$J,358.3,16815,2)
 ;;=^5000501
 ;;^UTILITY(U,$J,358.3,16816,0)
 ;;=Z87.01^^88^854^26
 ;;^UTILITY(U,$J,358.3,16816,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16816,1,3,0)
 ;;=3^Person Hx of Pneumonia
 ;;^UTILITY(U,$J,358.3,16816,1,4,0)
 ;;=4^Z87.01
 ;;^UTILITY(U,$J,358.3,16816,2)
 ;;=^5063480
 ;;^UTILITY(U,$J,358.3,16817,0)
 ;;=Z86.11^^88^854^29
 ;;^UTILITY(U,$J,358.3,16817,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16817,1,3,0)
 ;;=3^Personal Hx of Tuberculosis
 ;;^UTILITY(U,$J,358.3,16817,1,4,0)
 ;;=4^Z86.11
 ;;^UTILITY(U,$J,358.3,16817,2)
 ;;=^5063461
 ;;^UTILITY(U,$J,358.3,16818,0)
 ;;=Z86.13^^88^854^28
 ;;^UTILITY(U,$J,358.3,16818,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16818,1,3,0)
 ;;=3^Personal Hx of Malaria
 ;;^UTILITY(U,$J,358.3,16818,1,4,0)
 ;;=4^Z86.13
 ;;^UTILITY(U,$J,358.3,16818,2)
 ;;=^5063463
 ;;^UTILITY(U,$J,358.3,16819,0)
 ;;=Z86.14^^88^854^27
 ;;^UTILITY(U,$J,358.3,16819,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16819,1,3,0)
 ;;=3^Personal Hx of MRSA
 ;;^UTILITY(U,$J,358.3,16819,1,4,0)
 ;;=4^Z86.14
 ;;^UTILITY(U,$J,358.3,16819,2)
 ;;=^5063464
 ;;^UTILITY(U,$J,358.3,16820,0)
 ;;=B94.9^^88^854^30
 ;;^UTILITY(U,$J,358.3,16820,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16820,1,3,0)
 ;;=3^Sequelae of Infectious/Parasitic Disease,Unspec
 ;;^UTILITY(U,$J,358.3,16820,1,4,0)
 ;;=4^B94.9
 ;;^UTILITY(U,$J,358.3,16820,2)
 ;;=^5000834
 ;;^UTILITY(U,$J,358.3,16821,0)
 ;;=B91.^^88^854^31
 ;;^UTILITY(U,$J,358.3,16821,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16821,1,3,0)
 ;;=3^Sequelae of Poliomyelitis
 ;;^UTILITY(U,$J,358.3,16821,1,4,0)
 ;;=4^B91.
 ;;^UTILITY(U,$J,358.3,16821,2)
 ;;=^5000828
 ;;^UTILITY(U,$J,358.3,16822,0)
 ;;=B90.9^^88^854^32
 ;;^UTILITY(U,$J,358.3,16822,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16822,1,3,0)
 ;;=3^Sequelae of Tuberculosis,Respiratory & Unspec
 ;;^UTILITY(U,$J,358.3,16822,1,4,0)
 ;;=4^B90.9
 ;;^UTILITY(U,$J,358.3,16822,2)
 ;;=^5000827
 ;;^UTILITY(U,$J,358.3,16823,0)
 ;;=Z90.5^^88^855^1
 ;;^UTILITY(U,$J,358.3,16823,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16823,1,3,0)
 ;;=3^Acquired Absence of Kidney
 ;;^UTILITY(U,$J,358.3,16823,1,4,0)
 ;;=4^Z90.5
 ;;^UTILITY(U,$J,358.3,16823,2)
 ;;=^5063590
 ;;^UTILITY(U,$J,358.3,16824,0)
 ;;=N20.2^^88^855^2
 ;;^UTILITY(U,$J,358.3,16824,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16824,1,3,0)
 ;;=3^Calculus of Kidney w/ Calculus of Ureter
 ;;^UTILITY(U,$J,358.3,16824,1,4,0)
 ;;=4^N20.2
 ;;^UTILITY(U,$J,358.3,16824,2)
 ;;=^5015609
 ;;^UTILITY(U,$J,358.3,16825,0)
 ;;=N21.9^^88^855^3