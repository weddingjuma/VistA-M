IBDEI0ZO ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,16441,2)
 ;;=^5002966
 ;;^UTILITY(U,$J,358.3,16442,0)
 ;;=E78.1^^88^847^41
 ;;^UTILITY(U,$J,358.3,16442,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16442,1,3,0)
 ;;=3^Hyperglyceridemia,Pure
 ;;^UTILITY(U,$J,358.3,16442,1,4,0)
 ;;=4^E78.1
 ;;^UTILITY(U,$J,358.3,16442,2)
 ;;=^101303
 ;;^UTILITY(U,$J,358.3,16443,0)
 ;;=E78.2^^88^847^42
 ;;^UTILITY(U,$J,358.3,16443,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16443,1,3,0)
 ;;=3^Hyperlipidemia,Mixed
 ;;^UTILITY(U,$J,358.3,16443,1,4,0)
 ;;=4^E78.2
 ;;^UTILITY(U,$J,358.3,16443,2)
 ;;=^78424
 ;;^UTILITY(U,$J,358.3,16444,0)
 ;;=E78.5^^88^847^43
 ;;^UTILITY(U,$J,358.3,16444,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16444,1,3,0)
 ;;=3^Hyperlipidemia,Unspec
 ;;^UTILITY(U,$J,358.3,16444,1,4,0)
 ;;=4^E78.5
 ;;^UTILITY(U,$J,358.3,16444,2)
 ;;=^5002969
 ;;^UTILITY(U,$J,358.3,16445,0)
 ;;=I10.^^88^847^44
 ;;^UTILITY(U,$J,358.3,16445,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16445,1,3,0)
 ;;=3^Hypertension,Essential
 ;;^UTILITY(U,$J,358.3,16445,1,4,0)
 ;;=4^I10.
 ;;^UTILITY(U,$J,358.3,16445,2)
 ;;=^5007062
 ;;^UTILITY(U,$J,358.3,16446,0)
 ;;=I15.8^^88^847^46
 ;;^UTILITY(U,$J,358.3,16446,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16446,1,3,0)
 ;;=3^Hypertension,Secondary
 ;;^UTILITY(U,$J,358.3,16446,1,4,0)
 ;;=4^I15.8
 ;;^UTILITY(U,$J,358.3,16446,2)
 ;;=^5007074
 ;;^UTILITY(U,$J,358.3,16447,0)
 ;;=I15.0^^88^847^45
 ;;^UTILITY(U,$J,358.3,16447,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16447,1,3,0)
 ;;=3^Hypertension,Renovascular
 ;;^UTILITY(U,$J,358.3,16447,1,4,0)
 ;;=4^I15.0
 ;;^UTILITY(U,$J,358.3,16447,2)
 ;;=^5007071
 ;;^UTILITY(U,$J,358.3,16448,0)
 ;;=I95.1^^88^847^47
 ;;^UTILITY(U,$J,358.3,16448,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16448,1,3,0)
 ;;=3^Hypotension,Orthostatic
 ;;^UTILITY(U,$J,358.3,16448,1,4,0)
 ;;=4^I95.1
 ;;^UTILITY(U,$J,358.3,16448,2)
 ;;=^60741
 ;;^UTILITY(U,$J,358.3,16449,0)
 ;;=I95.89^^88^847^48
 ;;^UTILITY(U,$J,358.3,16449,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16449,1,3,0)
 ;;=3^Hypotension,Other
 ;;^UTILITY(U,$J,358.3,16449,1,4,0)
 ;;=4^I95.89
 ;;^UTILITY(U,$J,358.3,16449,2)
 ;;=^5008079
 ;;^UTILITY(U,$J,358.3,16450,0)
 ;;=I25.9^^88^847^49
 ;;^UTILITY(U,$J,358.3,16450,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16450,1,3,0)
 ;;=3^Ischemic Heart Disease,Chronic,Unspec
 ;;^UTILITY(U,$J,358.3,16450,1,4,0)
 ;;=4^I25.9
 ;;^UTILITY(U,$J,358.3,16450,2)
 ;;=^5007144
 ;;^UTILITY(U,$J,358.3,16451,0)
 ;;=I89.0^^88^847^50
 ;;^UTILITY(U,$J,358.3,16451,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16451,1,3,0)
 ;;=3^Lymphedema NEC
 ;;^UTILITY(U,$J,358.3,16451,1,4,0)
 ;;=4^I89.0
 ;;^UTILITY(U,$J,358.3,16451,2)
 ;;=^5008073
 ;;^UTILITY(U,$J,358.3,16452,0)
 ;;=R01.1^^88^847^51
 ;;^UTILITY(U,$J,358.3,16452,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16452,1,3,0)
 ;;=3^Murmur,Cardia,Unspec
 ;;^UTILITY(U,$J,358.3,16452,1,4,0)
 ;;=4^R01.1
 ;;^UTILITY(U,$J,358.3,16452,2)
 ;;=^5019169
 ;;^UTILITY(U,$J,358.3,16453,0)
 ;;=I21.3^^88^847^52
 ;;^UTILITY(U,$J,358.3,16453,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16453,1,3,0)
 ;;=3^Myocardial Infarction,Acute,Unspec Site
 ;;^UTILITY(U,$J,358.3,16453,1,4,0)
 ;;=4^I21.3
 ;;^UTILITY(U,$J,358.3,16453,2)
 ;;=^5007087
 ;;^UTILITY(U,$J,358.3,16454,0)
 ;;=I25.2^^88^847^53
 ;;^UTILITY(U,$J,358.3,16454,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,16454,1,3,0)
 ;;=3^Myocardial Infarction,Old
 ;;^UTILITY(U,$J,358.3,16454,1,4,0)
 ;;=4^I25.2
 ;;^UTILITY(U,$J,358.3,16454,2)
 ;;=^259884
 ;;^UTILITY(U,$J,358.3,16455,0)
 ;;=I78.1^^88^847^54
 ;;^UTILITY(U,$J,358.3,16455,1,0)
 ;;=^358.31IA^4^2