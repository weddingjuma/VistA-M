LRARPLM ;DALISC/CKA - PURGE LAB MONTHLY WORKLOADS (67.9);2/1/95
 ;;5.2;LAB SERVICE;**59,162**;Sep 27, 1994
START ;
 ;FIND ACTIVE LAB ARCHIVAL ACTIVITY
 S LRART=67.9,LRAR=90,LRARC=0 S LRARC=$O(^LAB(95.11,"O",3,LRART,LRARC)) G:LRARC="" ERROR D FILE^LRARU G:'$D(LRARC) EXIT
 ;UPDATE ACTION IN PROGRESS FIELDS
 S LRAR=90 D MRK^LRARU1
MAKE ;Ask if backup tape made
 W !!!! S DIR(0)="Y",DIR("A")="Did you make a backup of the ARCHIVED LAB MONTHLY WORKLOADS file (67.99999)" D ^DIR K DIR
 I $D(DIRUT) D COMP^LRARU1 G EXIT
 I 'Y W !!!!,$C(7),"Make a backup of the ARCHIVED LAB MONTHLY WORKLOADS file before purging!" D COMP^LRARU1 G EXIT
CHECK ;Ask if checked backup tape
 W !!!! S DIR(0)="Y",DIR("A")="Did you check the backup of the ARCHIVED LAB MONTHLY WORKLOADS file" D ^DIR K DIR
 I $D(DIRUT) D COMP^LRARU1 G EXIT
 I 'Y W !!!!,$C(7),"Check the backup before purging!" D COMP^LRARU1 G EXIT
OKAY ;Ask if okay to delete
 W !!!! S DIR(0)="Y",DIR("A")="Okay to delete LAB MONTHLY WORKLOADS entries: " D ^DIR K DIR
 I $D(DIRUT)!('Y) W !!!!,"No purging done." D COMP^LRARU1 G EXIT
QUEUE ;queue purge
 S ZTRTN="DOIT^LRARPLM",ZTSAVE("LR*")="",ZTDESC="PURGE ARCHIVED WKLD DATA",ZTIO="" D ^%ZTLOAD W:$D(ZTSK) !,"TASK #",ZTSK G EXIT
 ;
DOIT ;Deleting dates in 67.9
 S LRAIEN=0
 F LRAI=0:0 S LRAIEN=$O(^LAB(95.11,LRARC,"RESULT",67.911,LRAIEN)) Q:+LRAIEN'>0  D
 . S DA(2)=$P(LRAIEN,",",3),DA(1)=$P(LRAIEN,",",2),DA=$P(LRAIEN,",")
 . S DIK="^LRO(67.9,"_DA(2)_",1,"_DA(1)_",1," D ^DIK
END W !!!!,"DONE."
 D COMP^LRARU1
 I '$D(DIRUT) S LRAR=90 D UPDATE^LRARU1
 W !!,"I will now CLEAR out the Archived Lab Monthly Workloads global."
 S LRARX="" F LRARI=0:0 S LRARX=$O(^LAR(67.99999,LRARX)) Q:LRARX=""  K ^LAR(67.99999,LRARX)
 S ^LAR(67.99999,0)="ARCHIVED LAB MONTHLY WORKLOADS^67.99999"
 W !!,">>> DONE <<<"
 K ^LAB(95.11,LRARC,"RESULT")
 S ZTREQ="@"
EXIT K DA,DIK,DIR,DIRUT,LRADATE,LRADIV,LRADIVN,LRAI,LRAIEN,LRAINST,LRAJ,LRAK,LRAR,LRARC,LRARF,LRARI,LRARP,LRARST,LRART,LRARU,LRARX,Y
 D CLN^LRARU1
 Q
ERROR W !!,$C(7),"I cannot find an active archival activity for file 67.9!"
 G EXIT
 Q
