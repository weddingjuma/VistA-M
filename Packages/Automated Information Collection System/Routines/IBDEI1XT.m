IBDEI1XT ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,32433,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32433,1,3,0)
 ;;=3^Medication-Induced Acute Dystonia
 ;;^UTILITY(U,$J,358.3,32433,1,4,0)
 ;;=4^G24.02
 ;;^UTILITY(U,$J,358.3,32433,2)
 ;;=^5003785
 ;;^UTILITY(U,$J,358.3,32434,0)
 ;;=G24.01^^143^1528^7
 ;;^UTILITY(U,$J,358.3,32434,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32434,1,3,0)
 ;;=3^Tardive Dyskinesia
 ;;^UTILITY(U,$J,358.3,32434,1,4,0)
 ;;=4^G24.01
 ;;^UTILITY(U,$J,358.3,32434,2)
 ;;=^5003784
 ;;^UTILITY(U,$J,358.3,32435,0)
 ;;=G24.09^^143^1528^8
 ;;^UTILITY(U,$J,358.3,32435,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32435,1,3,0)
 ;;=3^Tardive Dystonia
 ;;^UTILITY(U,$J,358.3,32435,1,4,0)
 ;;=4^G24.09
 ;;^UTILITY(U,$J,358.3,32435,2)
 ;;=^5003786
 ;;^UTILITY(U,$J,358.3,32436,0)
 ;;=G25.1^^143^1528^4
 ;;^UTILITY(U,$J,358.3,32436,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32436,1,3,0)
 ;;=3^Medication-Induced Postural Tremor
 ;;^UTILITY(U,$J,358.3,32436,1,4,0)
 ;;=4^G25.1
 ;;^UTILITY(U,$J,358.3,32436,2)
 ;;=^5003792
 ;;^UTILITY(U,$J,358.3,32437,0)
 ;;=G25.71^^143^1528^6
 ;;^UTILITY(U,$J,358.3,32437,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32437,1,3,0)
 ;;=3^Tardive Akathisia/Medication-Induced Acute Akatisia
 ;;^UTILITY(U,$J,358.3,32437,1,4,0)
 ;;=4^G25.71
 ;;^UTILITY(U,$J,358.3,32437,2)
 ;;=^5003799
 ;;^UTILITY(U,$J,358.3,32438,0)
 ;;=G25.79^^143^1528^2
 ;;^UTILITY(U,$J,358.3,32438,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32438,1,3,0)
 ;;=3^Medication-Induced Movement Disorder NEC
 ;;^UTILITY(U,$J,358.3,32438,1,4,0)
 ;;=4^G25.79
 ;;^UTILITY(U,$J,358.3,32438,2)
 ;;=^5003800
 ;;^UTILITY(U,$J,358.3,32439,0)
 ;;=F42.^^143^1529^6
 ;;^UTILITY(U,$J,358.3,32439,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32439,1,3,0)
 ;;=3^Obsessive-Compulsive Disorder
 ;;^UTILITY(U,$J,358.3,32439,1,4,0)
 ;;=4^F42.
 ;;^UTILITY(U,$J,358.3,32439,2)
 ;;=^5003568
 ;;^UTILITY(U,$J,358.3,32440,0)
 ;;=F45.22^^143^1529^1
 ;;^UTILITY(U,$J,358.3,32440,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32440,1,3,0)
 ;;=3^Body Dysmorphic Disorder
 ;;^UTILITY(U,$J,358.3,32440,1,4,0)
 ;;=4^F45.22
 ;;^UTILITY(U,$J,358.3,32440,2)
 ;;=^5003588
 ;;^UTILITY(U,$J,358.3,32441,0)
 ;;=F63.3^^143^1529^7
 ;;^UTILITY(U,$J,358.3,32441,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32441,1,3,0)
 ;;=3^Trichotillomania
 ;;^UTILITY(U,$J,358.3,32441,1,4,0)
 ;;=4^F63.3
 ;;^UTILITY(U,$J,358.3,32441,2)
 ;;=^5003643
 ;;^UTILITY(U,$J,358.3,32442,0)
 ;;=L98.1^^143^1529^2
 ;;^UTILITY(U,$J,358.3,32442,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32442,1,3,0)
 ;;=3^Excoriation (Skin-Picking) Disorder
 ;;^UTILITY(U,$J,358.3,32442,1,4,0)
 ;;=4^L98.1
 ;;^UTILITY(U,$J,358.3,32442,2)
 ;;=^186781
 ;;^UTILITY(U,$J,358.3,32443,0)
 ;;=F63.0^^143^1529^4
 ;;^UTILITY(U,$J,358.3,32443,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32443,1,3,0)
 ;;=3^Gambling Disorder
 ;;^UTILITY(U,$J,358.3,32443,1,4,0)
 ;;=4^F63.0
 ;;^UTILITY(U,$J,358.3,32443,2)
 ;;=^5003640
 ;;^UTILITY(U,$J,358.3,32444,0)
 ;;=F68.10^^143^1529^3
 ;;^UTILITY(U,$J,358.3,32444,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32444,1,3,0)
 ;;=3^Factitious Disorder
 ;;^UTILITY(U,$J,358.3,32444,1,4,0)
 ;;=4^F68.10
 ;;^UTILITY(U,$J,358.3,32444,2)
 ;;=^5003663
 ;;^UTILITY(U,$J,358.3,32445,0)
 ;;=F63.9^^143^1529^5
 ;;^UTILITY(U,$J,358.3,32445,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32445,1,3,0)
 ;;=3^Impulse Disorder,Unspec
 ;;^UTILITY(U,$J,358.3,32445,1,4,0)
 ;;=4^F63.9
 ;;^UTILITY(U,$J,358.3,32445,2)
 ;;=^5003646
 ;;^UTILITY(U,$J,358.3,32446,0)
 ;;=F06.2^^143^1530^5
 ;;^UTILITY(U,$J,358.3,32446,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32446,1,3,0)
 ;;=3^Psychotic Disorder w/ Delusions d/t Another Medical Condition
