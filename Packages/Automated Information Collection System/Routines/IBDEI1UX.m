IBDEI1UX ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,31088,1,4,0)
 ;;=4^R40.2324
 ;;^UTILITY(U,$J,358.3,31088,2)
 ;;=^5019409
 ;;^UTILITY(U,$J,358.3,31089,0)
 ;;=R40.2323^^135^1390^4
 ;;^UTILITY(U,$J,358.3,31089,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31089,1,3,0)
 ;;=3^Coma Scale,Best Motor Resp,Extension,at Hospital Admission
 ;;^UTILITY(U,$J,358.3,31089,1,4,0)
 ;;=4^R40.2323
 ;;^UTILITY(U,$J,358.3,31089,2)
 ;;=^5019408
 ;;^UTILITY(U,$J,358.3,31090,0)
 ;;=R40.2322^^135^1390^2
 ;;^UTILITY(U,$J,358.3,31090,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31090,1,3,0)
 ;;=3^Coma Scale,Best Motor Resp,Extension,Emger Dept
 ;;^UTILITY(U,$J,358.3,31090,1,4,0)
 ;;=4^R40.2322
 ;;^UTILITY(U,$J,358.3,31090,2)
 ;;=^5019407
 ;;^UTILITY(U,$J,358.3,31091,0)
 ;;=R40.2321^^135^1390^5
 ;;^UTILITY(U,$J,358.3,31091,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31091,1,3,0)
 ;;=3^Coma Scale,Best Motor Resp,Extension,in the Field
 ;;^UTILITY(U,$J,358.3,31091,1,4,0)
 ;;=4^R40.2321
 ;;^UTILITY(U,$J,358.3,31091,2)
 ;;=^5019406
 ;;^UTILITY(U,$J,358.3,31092,0)
 ;;=R40.2320^^135^1390^3
 ;;^UTILITY(U,$J,358.3,31092,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31092,1,3,0)
 ;;=3^Coma Scale,Best Motor Resp,Extension,Unspec Time
 ;;^UTILITY(U,$J,358.3,31092,1,4,0)
 ;;=4^R40.2320
 ;;^UTILITY(U,$J,358.3,31092,2)
 ;;=^5019405
 ;;^UTILITY(U,$J,358.3,31093,0)
 ;;=R40.2314^^135^1390^11
 ;;^UTILITY(U,$J,358.3,31093,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31093,1,3,0)
 ;;=3^Coma Scale,Best Motor Resp,None,24+ Hrs
 ;;^UTILITY(U,$J,358.3,31093,1,4,0)
 ;;=4^R40.2314
 ;;^UTILITY(U,$J,358.3,31093,2)
 ;;=^5019404
 ;;^UTILITY(U,$J,358.3,31094,0)
 ;;=R40.2313^^135^1390^14
 ;;^UTILITY(U,$J,358.3,31094,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31094,1,3,0)
 ;;=3^Coma Scale,Best Motor Resp,None,at Hospital Admission
 ;;^UTILITY(U,$J,358.3,31094,1,4,0)
 ;;=4^R40.2313
 ;;^UTILITY(U,$J,358.3,31094,2)
 ;;=^5019403
 ;;^UTILITY(U,$J,358.3,31095,0)
 ;;=R40.2312^^135^1390^12
 ;;^UTILITY(U,$J,358.3,31095,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31095,1,3,0)
 ;;=3^Coma Scale,Best Motor Resp,None,Emerg Dept
 ;;^UTILITY(U,$J,358.3,31095,1,4,0)
 ;;=4^R40.2312
 ;;^UTILITY(U,$J,358.3,31095,2)
 ;;=^5019402
 ;;^UTILITY(U,$J,358.3,31096,0)
 ;;=R40.2311^^135^1390^15
 ;;^UTILITY(U,$J,358.3,31096,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31096,1,3,0)
 ;;=3^Coma Scale,Best Motor Resp,None,in the Field
 ;;^UTILITY(U,$J,358.3,31096,1,4,0)
 ;;=4^R40.2311
 ;;^UTILITY(U,$J,358.3,31096,2)
 ;;=^5019401
 ;;^UTILITY(U,$J,358.3,31097,0)
 ;;=R40.2310^^135^1390^13
 ;;^UTILITY(U,$J,358.3,31097,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31097,1,3,0)
 ;;=3^Coma Scale,Best Motor Resp,None,Unspec Time
 ;;^UTILITY(U,$J,358.3,31097,1,4,0)
 ;;=4^R40.2310
 ;;^UTILITY(U,$J,358.3,31097,2)
 ;;=^5019400
 ;;^UTILITY(U,$J,358.3,31098,0)
 ;;=R40.4^^135^1390^38
 ;;^UTILITY(U,$J,358.3,31098,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31098,1,3,0)
 ;;=3^Transient Alteration of Awareness
 ;;^UTILITY(U,$J,358.3,31098,1,4,0)
 ;;=4^R40.4
 ;;^UTILITY(U,$J,358.3,31098,2)
 ;;=^5019435
 ;;^UTILITY(U,$J,358.3,31099,0)
 ;;=V00.811A^^135^1391^45
 ;;^UTILITY(U,$J,358.3,31099,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31099,1,3,0)
 ;;=3^Fall from Moving Wheelchair (pwered),Init Encntr
 ;;^UTILITY(U,$J,358.3,31099,1,4,0)
 ;;=4^V00.811A
 ;;^UTILITY(U,$J,358.3,31099,2)
 ;;=^5055937
 ;;^UTILITY(U,$J,358.3,31100,0)
 ;;=V00.811D^^135^1391^46
 ;;^UTILITY(U,$J,358.3,31100,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,31100,1,3,0)
 ;;=3^Fall from Moving Wheelchair (pwered),Subs Encntr
 ;;^UTILITY(U,$J,358.3,31100,1,4,0)
 ;;=4^V00.811D