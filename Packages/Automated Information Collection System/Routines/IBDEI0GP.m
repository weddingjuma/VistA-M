IBDEI0GP ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,7451,2)
 ;;=^331438
 ;;^UTILITY(U,$J,358.3,7452,0)
 ;;=E78.5^^52^501^16
 ;;^UTILITY(U,$J,358.3,7452,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,7452,1,3,0)
 ;;=3^Hyperlipidemia,Unspec
 ;;^UTILITY(U,$J,358.3,7452,1,4,0)
 ;;=4^E78.5
 ;;^UTILITY(U,$J,358.3,7452,2)
 ;;=^5002969
 ;;^UTILITY(U,$J,358.3,7453,0)
 ;;=M10.30^^52^501^11
 ;;^UTILITY(U,$J,358.3,7453,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,7453,1,3,0)
 ;;=3^Gout d/t Renal Impairment,Unspec Site
 ;;^UTILITY(U,$J,358.3,7453,1,4,0)
 ;;=4^M10.30
 ;;^UTILITY(U,$J,358.3,7453,2)
 ;;=^5010356
 ;;^UTILITY(U,$J,358.3,7454,0)
 ;;=E66.9^^52^501^33
 ;;^UTILITY(U,$J,358.3,7454,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,7454,1,3,0)
 ;;=3^Obesity,Unspec
 ;;^UTILITY(U,$J,358.3,7454,1,4,0)
 ;;=4^E66.9
 ;;^UTILITY(U,$J,358.3,7454,2)
 ;;=^5002832
 ;;^UTILITY(U,$J,358.3,7455,0)
 ;;=E66.01^^52^501^32
 ;;^UTILITY(U,$J,358.3,7455,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,7455,1,3,0)
 ;;=3^Obesity,Morbid,d/t Excess Calories
 ;;^UTILITY(U,$J,358.3,7455,1,4,0)
 ;;=4^E66.01
 ;;^UTILITY(U,$J,358.3,7455,2)
 ;;=^5002826
 ;;^UTILITY(U,$J,358.3,7456,0)
 ;;=D50.9^^52^501^2
 ;;^UTILITY(U,$J,358.3,7456,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,7456,1,3,0)
 ;;=3^Anemia,Iron Deficiency,Unspec
 ;;^UTILITY(U,$J,358.3,7456,1,4,0)
 ;;=4^D50.9
 ;;^UTILITY(U,$J,358.3,7456,2)
 ;;=^5002283
 ;;^UTILITY(U,$J,358.3,7457,0)
 ;;=D63.1^^52^501^1
 ;;^UTILITY(U,$J,358.3,7457,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,7457,1,3,0)
 ;;=3^Anemia in Chronic Kidney Disease
 ;;^UTILITY(U,$J,358.3,7457,1,4,0)
 ;;=4^D63.1
 ;;^UTILITY(U,$J,358.3,7457,2)
 ;;=^332908
 ;;^UTILITY(U,$J,358.3,7458,0)
 ;;=G60.9^^52^501^31
 ;;^UTILITY(U,$J,358.3,7458,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,7458,1,3,0)
 ;;=3^Neuropathy,Hereditary/Idiopathic,Unspec
 ;;^UTILITY(U,$J,358.3,7458,1,4,0)
 ;;=4^G60.9
 ;;^UTILITY(U,$J,358.3,7458,2)
 ;;=^5004071
 ;;^UTILITY(U,$J,358.3,7459,0)
 ;;=I73.9^^52^501^34
 ;;^UTILITY(U,$J,358.3,7459,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,7459,1,3,0)
 ;;=3^PVD,Unspec
 ;;^UTILITY(U,$J,358.3,7459,1,4,0)
 ;;=4^I73.9
 ;;^UTILITY(U,$J,358.3,7459,2)
 ;;=^184182
 ;;^UTILITY(U,$J,358.3,7460,0)
 ;;=N04.9^^52^501^30
 ;;^UTILITY(U,$J,358.3,7460,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,7460,1,3,0)
 ;;=3^Nephrotic Syndrome w/ Unspec Morphologic Changes
 ;;^UTILITY(U,$J,358.3,7460,1,4,0)
 ;;=4^N04.9
 ;;^UTILITY(U,$J,358.3,7460,2)
 ;;=^5015540
 ;;^UTILITY(U,$J,358.3,7461,0)
 ;;=N25.0^^52^501^35
 ;;^UTILITY(U,$J,358.3,7461,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,7461,1,3,0)
 ;;=3^Renal Osteodystrophy
 ;;^UTILITY(U,$J,358.3,7461,1,4,0)
 ;;=4^N25.0
 ;;^UTILITY(U,$J,358.3,7461,2)
 ;;=^104747
 ;;^UTILITY(U,$J,358.3,7462,0)
 ;;=T80.211A^^52^501^3
 ;;^UTILITY(U,$J,358.3,7462,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,7462,1,3,0)
 ;;=3^Bloodstream Infection d/t Central Venous Catheter,Init Encntr
 ;;^UTILITY(U,$J,358.3,7462,1,4,0)
 ;;=4^T80.211A
 ;;^UTILITY(U,$J,358.3,7462,2)
 ;;=^5054350
 ;;^UTILITY(U,$J,358.3,7463,0)
 ;;=T80.211D^^52^501^4
 ;;^UTILITY(U,$J,358.3,7463,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,7463,1,3,0)
 ;;=3^Bloodstream Infection d/t Central Venous Catheter,Subs Encntr
 ;;^UTILITY(U,$J,358.3,7463,1,4,0)
 ;;=4^T80.211D
 ;;^UTILITY(U,$J,358.3,7463,2)
 ;;=^5054351
 ;;^UTILITY(U,$J,358.3,7464,0)
 ;;=E83.59^^52^501^5
 ;;^UTILITY(U,$J,358.3,7464,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,7464,1,3,0)
 ;;=3^Calciphylaxis
 ;;^UTILITY(U,$J,358.3,7464,1,4,0)
 ;;=4^E83.59
 ;;^UTILITY(U,$J,358.3,7464,2)
 ;;=^5003006
 ;;^UTILITY(U,$J,358.3,7465,0)
 ;;=T85.621A^^52^501^8
