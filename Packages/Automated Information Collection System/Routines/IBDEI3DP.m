IBDEI3DP ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,56798,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56798,1,3,0)
 ;;=3^Laceration w/ FB Rt Thigh,Init Encntr
 ;;^UTILITY(U,$J,358.3,56798,1,4,0)
 ;;=4^S71.121A
 ;;^UTILITY(U,$J,358.3,56798,2)
 ;;=^5037023
 ;;^UTILITY(U,$J,358.3,56799,0)
 ;;=S71.122A^^261^2831^106
 ;;^UTILITY(U,$J,358.3,56799,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56799,1,3,0)
 ;;=3^Laceration w/ FB Lt Thigh,Init Encntr
 ;;^UTILITY(U,$J,358.3,56799,1,4,0)
 ;;=4^S71.122A
 ;;^UTILITY(U,$J,358.3,56799,2)
 ;;=^5136193
 ;;^UTILITY(U,$J,358.3,56800,0)
 ;;=S91.321A^^261^2831^107
 ;;^UTILITY(U,$J,358.3,56800,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56800,1,3,0)
 ;;=3^Laceration w/ FB Rt Foot,Init Encntr
 ;;^UTILITY(U,$J,358.3,56800,1,4,0)
 ;;=4^S91.321A
 ;;^UTILITY(U,$J,358.3,56800,2)
 ;;=^5044329
 ;;^UTILITY(U,$J,358.3,56801,0)
 ;;=S91.322A^^261^2831^103
 ;;^UTILITY(U,$J,358.3,56801,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56801,1,3,0)
 ;;=3^Laceration w/ FB Lt Foot,Init Encntr
 ;;^UTILITY(U,$J,358.3,56801,1,4,0)
 ;;=4^S91.322A
 ;;^UTILITY(U,$J,358.3,56801,2)
 ;;=^5137527
 ;;^UTILITY(U,$J,358.3,56802,0)
 ;;=S81.821A^^261^2831^109
 ;;^UTILITY(U,$J,358.3,56802,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56802,1,3,0)
 ;;=3^Laceration w/ FB Rt Lower Leg,Init Encntr
 ;;^UTILITY(U,$J,358.3,56802,1,4,0)
 ;;=4^S81.821A
 ;;^UTILITY(U,$J,358.3,56802,2)
 ;;=^5040080
 ;;^UTILITY(U,$J,358.3,56803,0)
 ;;=S81.822A^^261^2831^105
 ;;^UTILITY(U,$J,358.3,56803,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56803,1,3,0)
 ;;=3^Laceration w/ FB Lt Lower Leg,Init Encntr
 ;;^UTILITY(U,$J,358.3,56803,1,4,0)
 ;;=4^S81.822A
 ;;^UTILITY(U,$J,358.3,56803,2)
 ;;=^5136691
 ;;^UTILITY(U,$J,358.3,56804,0)
 ;;=R10.9^^261^2832^6
 ;;^UTILITY(U,$J,358.3,56804,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56804,1,3,0)
 ;;=3^Abdominal Pain,Unspec
 ;;^UTILITY(U,$J,358.3,56804,1,4,0)
 ;;=4^R10.9
 ;;^UTILITY(U,$J,358.3,56804,2)
 ;;=^5019230
 ;;^UTILITY(U,$J,358.3,56805,0)
 ;;=R10.11^^261^2832^5
 ;;^UTILITY(U,$J,358.3,56805,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56805,1,3,0)
 ;;=3^Abdominal Pain,RUQ
 ;;^UTILITY(U,$J,358.3,56805,1,4,0)
 ;;=4^R10.11
 ;;^UTILITY(U,$J,358.3,56805,2)
 ;;=^5019206
 ;;^UTILITY(U,$J,358.3,56806,0)
 ;;=R10.12^^261^2832^3
 ;;^UTILITY(U,$J,358.3,56806,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56806,1,3,0)
 ;;=3^Abdominal Pain,LUQ
 ;;^UTILITY(U,$J,358.3,56806,1,4,0)
 ;;=4^R10.12
 ;;^UTILITY(U,$J,358.3,56806,2)
 ;;=^5019207
 ;;^UTILITY(U,$J,358.3,56807,0)
 ;;=R10.31^^261^2832^4
 ;;^UTILITY(U,$J,358.3,56807,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56807,1,3,0)
 ;;=3^Abdominal Pain,RLQ
 ;;^UTILITY(U,$J,358.3,56807,1,4,0)
 ;;=4^R10.31
 ;;^UTILITY(U,$J,358.3,56807,2)
 ;;=^5019211
 ;;^UTILITY(U,$J,358.3,56808,0)
 ;;=R10.32^^261^2832^2
 ;;^UTILITY(U,$J,358.3,56808,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56808,1,3,0)
 ;;=3^Abdominal Pain,LLQ
 ;;^UTILITY(U,$J,358.3,56808,1,4,0)
 ;;=4^R10.32
 ;;^UTILITY(U,$J,358.3,56808,2)
 ;;=^5019212
 ;;^UTILITY(U,$J,358.3,56809,0)
 ;;=R10.33^^261^2832^8
 ;;^UTILITY(U,$J,358.3,56809,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56809,1,3,0)
 ;;=3^Periumbilical Pain
 ;;^UTILITY(U,$J,358.3,56809,1,4,0)
 ;;=4^R10.33
 ;;^UTILITY(U,$J,358.3,56809,2)
 ;;=^5019213
 ;;^UTILITY(U,$J,358.3,56810,0)
 ;;=R10.13^^261^2832^7
 ;;^UTILITY(U,$J,358.3,56810,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,56810,1,3,0)
 ;;=3^Epigastric Pain
 ;;^UTILITY(U,$J,358.3,56810,1,4,0)
 ;;=4^R10.13
 ;;^UTILITY(U,$J,358.3,56810,2)
 ;;=^5019208
 ;;^UTILITY(U,$J,358.3,56811,0)
 ;;=R10.84^^261^2832^1
 ;;^UTILITY(U,$J,358.3,56811,1,0)
 ;;=^358.31IA^4^2
