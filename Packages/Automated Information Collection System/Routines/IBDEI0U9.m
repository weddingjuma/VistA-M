IBDEI0U9 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,13928,2)
 ;;=^5020579
 ;;^UTILITY(U,$J,358.3,13929,0)
 ;;=S05.02XA^^82^769^90
 ;;^UTILITY(U,$J,358.3,13929,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13929,1,3,0)
 ;;=3^Injury of Conjunctiva/Corneal Abrasion w/o FB,Left Eye,Init Encntr
 ;;^UTILITY(U,$J,358.3,13929,1,4,0)
 ;;=4^S05.02XA
 ;;^UTILITY(U,$J,358.3,13929,2)
 ;;=^5020582
 ;;^UTILITY(U,$J,358.3,13930,0)
 ;;=T15.02XA^^82^769^69
 ;;^UTILITY(U,$J,358.3,13930,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13930,1,3,0)
 ;;=3^FB in Cornea,Left Eye,Init Encntr
 ;;^UTILITY(U,$J,358.3,13930,1,4,0)
 ;;=4^T15.02XA
 ;;^UTILITY(U,$J,358.3,13930,2)
 ;;=^5046387
 ;;^UTILITY(U,$J,358.3,13931,0)
 ;;=T15.01XA^^82^769^70
 ;;^UTILITY(U,$J,358.3,13931,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13931,1,3,0)
 ;;=3^FB in Cornea,Right Eye,Init Encntr
 ;;^UTILITY(U,$J,358.3,13931,1,4,0)
 ;;=4^T15.01XA
 ;;^UTILITY(U,$J,358.3,13931,2)
 ;;=^5046384
 ;;^UTILITY(U,$J,358.3,13932,0)
 ;;=T15.91XA^^82^769^72
 ;;^UTILITY(U,$J,358.3,13932,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13932,1,3,0)
 ;;=3^FB on External Eye,Right Eye,Init Encntr
 ;;^UTILITY(U,$J,358.3,13932,1,4,0)
 ;;=4^T15.91XA
 ;;^UTILITY(U,$J,358.3,13932,2)
 ;;=^5046411
 ;;^UTILITY(U,$J,358.3,13933,0)
 ;;=T15.92XA^^82^769^71
 ;;^UTILITY(U,$J,358.3,13933,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13933,1,3,0)
 ;;=3^FB on External Eye,Left Eye,Init Encntr
 ;;^UTILITY(U,$J,358.3,13933,1,4,0)
 ;;=4^T15.92XA
 ;;^UTILITY(U,$J,358.3,13933,2)
 ;;=^5046414
 ;;^UTILITY(U,$J,358.3,13934,0)
 ;;=T85.398A^^82^769^118
 ;;^UTILITY(U,$J,358.3,13934,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13934,1,3,0)
 ;;=3^Mech Compl of Ocular Prosthetic Device/Implant/Graft,Init Encntr
 ;;^UTILITY(U,$J,358.3,13934,1,4,0)
 ;;=4^T85.398A
 ;;^UTILITY(U,$J,358.3,13934,2)
 ;;=^5055559
 ;;^UTILITY(U,$J,358.3,13935,0)
 ;;=T86.840^^82^769^58
 ;;^UTILITY(U,$J,358.3,13935,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13935,1,3,0)
 ;;=3^Corneal Transplant Rejection
 ;;^UTILITY(U,$J,358.3,13935,1,4,0)
 ;;=4^T86.840
 ;;^UTILITY(U,$J,358.3,13935,2)
 ;;=^5055744
 ;;^UTILITY(U,$J,358.3,13936,0)
 ;;=T86.841^^82^769^57
 ;;^UTILITY(U,$J,358.3,13936,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13936,1,3,0)
 ;;=3^Corneal Transplant Failure
 ;;^UTILITY(U,$J,358.3,13936,1,4,0)
 ;;=4^T86.841
 ;;^UTILITY(U,$J,358.3,13936,2)
 ;;=^5055745
 ;;^UTILITY(U,$J,358.3,13937,0)
 ;;=T85.318A^^82^769^22
 ;;^UTILITY(U,$J,358.3,13937,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13937,1,3,0)
 ;;=3^Breakdown of Ocular Prosthetic Device/Implant/Graft,Init Encntr
 ;;^UTILITY(U,$J,358.3,13937,1,4,0)
 ;;=4^T85.318A
 ;;^UTILITY(U,$J,358.3,13937,2)
 ;;=^5055541
 ;;^UTILITY(U,$J,358.3,13938,0)
 ;;=T85.328A^^82^769^59
 ;;^UTILITY(U,$J,358.3,13938,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13938,1,3,0)
 ;;=3^Displacement of Ocular Prosthetic Device/Implant/Graft,Init Encntr
 ;;^UTILITY(U,$J,358.3,13938,1,4,0)
 ;;=4^T85.328A
 ;;^UTILITY(U,$J,358.3,13938,2)
 ;;=^5055550
 ;;^UTILITY(U,$J,358.3,13939,0)
 ;;=H11.013^^82^769^2
 ;;^UTILITY(U,$J,358.3,13939,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13939,1,3,0)
 ;;=3^Amyloid Pterygium,Bilateral
 ;;^UTILITY(U,$J,358.3,13939,1,4,0)
 ;;=4^H11.013
 ;;^UTILITY(U,$J,358.3,13939,2)
 ;;=^5004722
 ;;^UTILITY(U,$J,358.3,13940,0)
 ;;=H21.513^^82^769^6
 ;;^UTILITY(U,$J,358.3,13940,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13940,1,3,0)
 ;;=3^Anterior Synechiae,Bilateral
 ;;^UTILITY(U,$J,358.3,13940,1,4,0)
 ;;=4^H21.513
 ;;^UTILITY(U,$J,358.3,13940,2)
 ;;=^5005241
 ;;^UTILITY(U,$J,358.3,13941,0)
 ;;=H18.423^^82^769^12
