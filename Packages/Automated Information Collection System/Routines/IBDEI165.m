IBDEI165 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,19526,1,4,0)
 ;;=4^R10.2
 ;;^UTILITY(U,$J,358.3,19526,2)
 ;;=^5019209
 ;;^UTILITY(U,$J,358.3,19527,0)
 ;;=N94.89^^94^924^7
 ;;^UTILITY(U,$J,358.3,19527,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19527,1,3,0)
 ;;=3^Female Genital Organs/Menstrual Cycle,Oth Cond
 ;;^UTILITY(U,$J,358.3,19527,1,4,0)
 ;;=4^N94.89
 ;;^UTILITY(U,$J,358.3,19527,2)
 ;;=^5015925
 ;;^UTILITY(U,$J,358.3,19528,0)
 ;;=N23.^^94^924^18
 ;;^UTILITY(U,$J,358.3,19528,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19528,1,3,0)
 ;;=3^Renal Colic,Unspec
 ;;^UTILITY(U,$J,358.3,19528,1,4,0)
 ;;=4^N23.
 ;;^UTILITY(U,$J,358.3,19528,2)
 ;;=^5015615
 ;;^UTILITY(U,$J,358.3,19529,0)
 ;;=Z71.89^^94^925^1
 ;;^UTILITY(U,$J,358.3,19529,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19529,1,3,0)
 ;;=3^Activity/Exercise Counseling
 ;;^UTILITY(U,$J,358.3,19529,1,4,0)
 ;;=4^Z71.89
 ;;^UTILITY(U,$J,358.3,19529,2)
 ;;=^5063253
 ;;^UTILITY(U,$J,358.3,19530,0)
 ;;=Z13.89^^94^925^2
 ;;^UTILITY(U,$J,358.3,19530,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19530,1,3,0)
 ;;=3^Alcohol Use Screen
 ;;^UTILITY(U,$J,358.3,19530,1,4,0)
 ;;=4^Z13.89
 ;;^UTILITY(U,$J,358.3,19530,2)
 ;;=^5062720
 ;;^UTILITY(U,$J,358.3,19531,0)
 ;;=Z12.39^^94^925^3
 ;;^UTILITY(U,$J,358.3,19531,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19531,1,3,0)
 ;;=3^Breast Malignant Neoplasm Screen
 ;;^UTILITY(U,$J,358.3,19531,1,4,0)
 ;;=4^Z12.39
 ;;^UTILITY(U,$J,358.3,19531,2)
 ;;=^5062686
 ;;^UTILITY(U,$J,358.3,19532,0)
 ;;=Z12.4^^94^925^5
 ;;^UTILITY(U,$J,358.3,19532,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19532,1,3,0)
 ;;=3^Cervix Malignant Neoplasm Screen
 ;;^UTILITY(U,$J,358.3,19532,1,4,0)
 ;;=4^Z12.4
 ;;^UTILITY(U,$J,358.3,19532,2)
 ;;=^5062687
 ;;^UTILITY(U,$J,358.3,19533,0)
 ;;=Z13.5^^94^925^8
 ;;^UTILITY(U,$J,358.3,19533,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19533,1,3,0)
 ;;=3^Eye and Ear Disorder Screen
 ;;^UTILITY(U,$J,358.3,19533,1,4,0)
 ;;=4^Z13.5
 ;;^UTILITY(U,$J,358.3,19533,2)
 ;;=^5062706
 ;;^UTILITY(U,$J,358.3,19534,0)
 ;;=Z01.89^^94^925^6
 ;;^UTILITY(U,$J,358.3,19534,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19534,1,3,0)
 ;;=3^Diabetic Foot Exam
 ;;^UTILITY(U,$J,358.3,19534,1,4,0)
 ;;=4^Z01.89
 ;;^UTILITY(U,$J,358.3,19534,2)
 ;;=^5062632
 ;;^UTILITY(U,$J,358.3,19535,0)
 ;;=Z11.59^^94^925^16
 ;;^UTILITY(U,$J,358.3,19535,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19535,1,3,0)
 ;;=3^Viral Diseases Screen
 ;;^UTILITY(U,$J,358.3,19535,1,4,0)
 ;;=4^Z11.59
 ;;^UTILITY(U,$J,358.3,19535,2)
 ;;=^5062675
 ;;^UTILITY(U,$J,358.3,19536,0)
 ;;=Z13.6^^94^925^4
 ;;^UTILITY(U,$J,358.3,19536,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19536,1,3,0)
 ;;=3^Cardiovascular Disorder Screen
 ;;^UTILITY(U,$J,358.3,19536,1,4,0)
 ;;=4^Z13.6
 ;;^UTILITY(U,$J,358.3,19536,2)
 ;;=^5062707
 ;;^UTILITY(U,$J,358.3,19537,0)
 ;;=Z12.12^^94^925^14
 ;;^UTILITY(U,$J,358.3,19537,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19537,1,3,0)
 ;;=3^Rectum Malignant Neoplasm Screen
 ;;^UTILITY(U,$J,358.3,19537,1,4,0)
 ;;=4^Z12.12
 ;;^UTILITY(U,$J,358.3,19537,2)
 ;;=^5062682
 ;;^UTILITY(U,$J,358.3,19538,0)
 ;;=Z71.89^^94^925^12
 ;;^UTILITY(U,$J,358.3,19538,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19538,1,3,0)
 ;;=3^Other Specified Counseling
 ;;^UTILITY(U,$J,358.3,19538,1,4,0)
 ;;=4^Z71.89
 ;;^UTILITY(U,$J,358.3,19538,2)
 ;;=^5063253
 ;;^UTILITY(U,$J,358.3,19539,0)
 ;;=Z12.5^^94^925^13
 ;;^UTILITY(U,$J,358.3,19539,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19539,1,3,0)
 ;;=3^Prostate Malignant Neoplasm Screen
 ;;^UTILITY(U,$J,358.3,19539,1,4,0)
 ;;=4^Z12.5
 ;;^UTILITY(U,$J,358.3,19539,2)
 ;;=^5062688