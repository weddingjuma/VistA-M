IBDEI1VL ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,31412,0)
 ;;=99223^^137^1414^3
 ;;^UTILITY(U,$J,358.3,31412,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31412,1,1,0)
 ;;=1^COMPREH HX & EXAM;HIGH COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31412,1,2,0)
 ;;=2^99223
 ;;^UTILITY(U,$J,358.3,31413,0)
 ;;=99238^^137^1415^1
 ;;^UTILITY(U,$J,358.3,31413,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31413,1,1,0)
 ;;=1^DISCHARGE DAY MGMT 30 MIN OR <
 ;;^UTILITY(U,$J,358.3,31413,1,2,0)
 ;;=2^99238
 ;;^UTILITY(U,$J,358.3,31414,0)
 ;;=99239^^137^1415^2
 ;;^UTILITY(U,$J,358.3,31414,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31414,1,1,0)
 ;;=1^DISCHARGE DAY MGMT > 30MIN
 ;;^UTILITY(U,$J,358.3,31414,1,2,0)
 ;;=2^99239
 ;;^UTILITY(U,$J,358.3,31415,0)
 ;;=99218^^137^1416^1
 ;;^UTILITY(U,$J,358.3,31415,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31415,1,1,0)
 ;;=1^DETAILED OR COMPREH HX & EXAM;SF OR LOW COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31415,1,2,0)
 ;;=2^99218
 ;;^UTILITY(U,$J,358.3,31416,0)
 ;;=99219^^137^1416^2
 ;;^UTILITY(U,$J,358.3,31416,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31416,1,1,0)
 ;;=1^COMPREH HX & EXAM;MOD COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31416,1,2,0)
 ;;=2^99219
 ;;^UTILITY(U,$J,358.3,31417,0)
 ;;=99220^^137^1416^3
 ;;^UTILITY(U,$J,358.3,31417,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31417,1,1,0)
 ;;=1^COMPREH HX & EXAM;HIGH COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31417,1,2,0)
 ;;=2^99220
 ;;^UTILITY(U,$J,358.3,31418,0)
 ;;=99217^^137^1417^1
 ;;^UTILITY(U,$J,358.3,31418,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31418,1,1,0)
 ;;=1^Discharge Day Mgmt
 ;;^UTILITY(U,$J,358.3,31418,1,2,0)
 ;;=2^99217
 ;;^UTILITY(U,$J,358.3,31419,0)
 ;;=99234^^137^1418^1
 ;;^UTILITY(U,$J,358.3,31419,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31419,1,1,0)
 ;;=1^DETAIL OR COMPREH HX & EXAM;SF OR LOW COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31419,1,2,0)
 ;;=2^99234
 ;;^UTILITY(U,$J,358.3,31420,0)
 ;;=99235^^137^1418^2
 ;;^UTILITY(U,$J,358.3,31420,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31420,1,1,0)
 ;;=1^COMPREH HX & EXAM;MOD COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31420,1,2,0)
 ;;=2^99235
 ;;^UTILITY(U,$J,358.3,31421,0)
 ;;=99236^^137^1418^3
 ;;^UTILITY(U,$J,358.3,31421,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31421,1,1,0)
 ;;=1^COMPREH HX & EXAM;HIGH COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31421,1,2,0)
 ;;=2^99236
 ;;^UTILITY(U,$J,358.3,31422,0)
 ;;=99231^^137^1419^1
 ;;^UTILITY(U,$J,358.3,31422,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31422,1,1,0)
 ;;=1^PROB FOCUS HX OR EXAM;SF OR LOW COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31422,1,2,0)
 ;;=2^99231
 ;;^UTILITY(U,$J,358.3,31423,0)
 ;;=99232^^137^1419^2
 ;;^UTILITY(U,$J,358.3,31423,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31423,1,1,0)
 ;;=1^EXPAN PROB FOCUS HX OR EXAM;MOD COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31423,1,2,0)
 ;;=2^99232
 ;;^UTILITY(U,$J,358.3,31424,0)
 ;;=99233^^137^1419^3
 ;;^UTILITY(U,$J,358.3,31424,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31424,1,1,0)
 ;;=1^DETAILED HX OR EXAM;HIGH COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31424,1,2,0)
 ;;=2^99233
 ;;^UTILITY(U,$J,358.3,31425,0)
 ;;=99224^^137^1420^1
 ;;^UTILITY(U,$J,358.3,31425,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31425,1,1,0)
 ;;=1^PROB FOCUS HX OR EXAM;SF OR LOW COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31425,1,2,0)
 ;;=2^99224
 ;;^UTILITY(U,$J,358.3,31426,0)
 ;;=99225^^137^1420^2
 ;;^UTILITY(U,$J,358.3,31426,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31426,1,1,0)
 ;;=1^EXPAN PROB FOCUS HX OR EXAM;MOD COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31426,1,2,0)
 ;;=2^99225
 ;;^UTILITY(U,$J,358.3,31427,0)
 ;;=99226^^137^1420^3
