FBUINS ;AISC/DMK-ADD INSURANCE INFORMATION ;07JULY92
 ;;3.5;FEE BASIS;;JAN 30, 1995
 ;;Per VHA Directive 10-93-142, this routine should not be modified.
 Q:$E(IOST,1,2)'="C-"
 Q:'$G(DFN)
 N FBOUT
INS S DIR("A")="Want to add NEW insurance data",DIR("B")="No",DIR("?")="Answer 'Yes' if you want to add a new insurance company for this patient."
 S DIR("?",1)="You are not allowed to edit current insurance information.",DIR("?",2)="However, you will be given the opportunity to send a bulletin to MCCR",DIR("?",3)="if insurance information is incorrect."
 S DIR(0)="Y" D ^DIR K DIR Q:$D(DIRUT)
 D:Y FEE^IBCNSP2
 S DIR("A")="Are there any discrepancies with insurance data on file",DIR("?")="A 'Yes' answer will send a bulletin to MCCR",DIR(0)="Y",DIR("B")="No" D ^DIR K DIR Q:$D(DIRUT)!('Y)  D
 .N VADM D DEM^VADPT S XMB(1)=VADM(1),XMB(2)=VA("PID")
 .S DIR("A")="Enter description of change",DIR(0)="F^3:70" D ^DIR K DIR Q:$D(DIRUT)  S XMB(3)=Y
 .S XMB="FB INSURANCE CHANGE",XMDUZ=$S($G(DUZ):DUZ,1:.5) D ^XMB
 K DIC,DIE,VA,XMB,XMDUZ,Y
 Q
