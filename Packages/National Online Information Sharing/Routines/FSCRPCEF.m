FSCRPCEF ;SLC/STAFF-NOIS RPC Edit Fields ;6/13/98  14:46
 ;;1.1;NOIS;;Sep 06, 1998
 ;
FIELDS(CALL,FIELDS,EDITED) ; from FSCRPCEB
 N CDATE,CSTATUS,DR,KEYWORDS,OK,ONETWO,REOPEN,STATUS,WOLDV,WNEWV,ZERO K WOLDV,WNEWV
 S ZERO=^FSCD("CALL",CALL,0),ONETWO=$G(^(120))
 S CSTATUS=+$P(ZERO,U,2)
 S REOPEN=+$G(FIELDS("REOPEN"))
 I 'REOPEN,(CSTATUS=2)!(CSTATUS=99) Q
 I REOPEN D
 .I CSTATUS=2 Q
 .I CSTATUS=99 Q
 .S REOPEN=0
 I $O(^TMP("FSC WP",$J,"DESC",0)) D
 .D REOPEN(CALL,.REOPEN,.EDITED)
 .D DESC^FSCRPCNC(CALL)
 .S WOLDV("DESC")=1,WNEWV("DESC")=2
 .D DESC^FSCAUDIT(CALL,.WOLDV,.WNEWV) ; forces audit update
 .S EDITED=1
 I $O(^TMP("FSC WP",$J,"NOTE",0)) D
 .D REOPEN(CALL,.REOPEN,.EDITED)
 .D NOTE^FSCRPCNC(CALL)
 .S EDITED=1
 S DR=""
 I $D(FIELDS("SUBJECT")) D
 .S SUBJECT=$G(^FSCD("CALL",CALL,1))
 .I FIELDS("SUBJECT")=SUBJECT Q
 .S EDITED=1
 .I $L(FIELDS("SUBJECT")) S DR=DR_";1///"_FIELDS("SUBJECT") Q
 .S DR=DR_";1///@"
 I $D(FIELDS("PHONE")) D
 .S PHONE=$P(ZERO,U,7)
 .I FIELDS("PHONE")=PHONE Q
 .S EDITED=1
 .I $L(FIELDS("PHONE")) S DR=DR_";2.2///"_FIELDS("PHONE") Q
 .S DR=DR_";2.2///@"
 I $D(FIELDS("PATCH")) D
 .S PATCH=$P(ONETWO,U,14)
 .I FIELDS("PATCH")=PATCH Q
 .S EDITED=1
 .I $L(FIELDS("PATCH")) S DR=DR_";7///"_FIELDS("PATCH") Q
 .S DR=DR_";7///@"
 I $D(FIELDS("KEYWORDS")) D
 .S KEYWORDS=$P($G(^FSCD("CALL",CALL,1.5)),U)
 .I FIELDS("KEYWORDS")=KEYWORDS Q
 .I $L(FIELDS("KEYWORDS")),KEYWORDS[FIELDS("KEYWORDS") Q
 .S EDITED=1
 .I '$L(FIELDS("KEYWORDS")) S DR=DR_";1.5///@" Q
 .I $L(KEYWORDS),$G(FIELDS("APPENDKEY")) S DR=DR_";1.5///"_$E(KEYWORDS_", "_FIELDS("KEYWORDS"),1,60) Q
 .S DR=DR_";1.5///"_FIELDS("KEYWORDS")
 I $L(DR)>100 D
 .D REOPEN(CALL,.REOPEN,.EDITED)
 .D SETUP^FSCRPCEC(CALL,"^FSCD(""CALL"",",.DR,.EDITED)
 I $D(FIELDS("MOD")) D
 .S MOD=$P(ZERO,U,8)
 .I MOD=FIELDS("MOD") Q
 .S EDITED=1
 .I '$D(FIELDS("DEVSUB")) D
 ..I $P(ONETWO,U,9)=$P($G(^FSC("MOD",+FIELDS("MOD"),0)),U,8) Q
 ..S DR=DR_";3.2///@"
 .I FIELDS("MOD") S DR=DR_";3///`"_+FIELDS("MOD") Q
 .S DR=DR_";3///@"
 I $D(FIELDS("IRM")) D
 .S IRM=$P(ZERO,U,6)
 .I IRM=FIELDS("IRM") Q
 .S EDITED=1
 .I FIELDS("IRM") S DR=DR_";2.1///`"_+FIELDS("IRM") Q
 .S DR=DR_";2.1///@"
 I $D(FIELDS("PRI")) D
 .S PRI=$P(ZERO,U,10)
 .I PRI=FIELDS("PRI") Q
 .S EDITED=1
 .I FIELDS("PRI") S DR=DR_";6///`"_+FIELDS("PRI") Q
 .S DR=DR_";6///@"
 I $D(FIELDS("SPEC")) D
 .S SPEC=$P(ZERO,U,9)
 .I SPEC=FIELDS("SPEC") Q
 .S EDITED=1
 .I FIELDS("SPEC") S DR=DR_";5///`"_+FIELDS("SPEC") Q
 .S DR=DR_";5///@"
 I $D(FIELDS("SPECD")) D
 .S SPECD=$P(ZERO,U,21)
 .I SPECD=FIELDS("SPECD") Q
 .S EDITED=1
 .I FIELDS("SPECD") S DR=DR_";5.1///`"_+FIELDS("SPECD") Q
 .S DR=DR_";5.1///@"
 I $D(FIELDS("DEVSUB")) D
 .S DEVSUB=$P(ONETWO,U,11)
 .I DEVSUB=FIELDS("DEVSUB") Q
 .S EDITED=1
 .I FIELDS("DEVSUB") S DR=DR_";3.2///`"_+FIELDS("DEVSUB") Q
 .S DR=DR_";3.2///@"
 I $L(DR) D
 .D REOPEN(CALL,.REOPEN,.EDITED)
 .D SETUP^FSCRPCEC(CALL,"^FSCD(""CALL"",",.DR,.EDITED)
 S STATUS=+$G(FIELDS("STATUS"))
 S ZERO=^FSCD("CALL",CALL,0)
 S CSTATUS=+$P(ZERO,U,17)
 I CSTATUS<2 S CSTATUS=+$P(ZERO,U,2)
 I STATUS=CSTATUS Q
 I STATUS,(CSTATUS=2)!(CSTATUS=99) D
 .D REOPEN(CALL,.REOPEN,.EDITED)
 .S ZERO=^FSCD("CALL",CALL,0)
 .S CSTATUS=+$P(ZERO,U,17)
 .I CSTATUS<2 S CSTATUS=+$P(ZERO,U,2)
 I STATUS=CSTATUS Q
 I $P($G(^FSC("STATUS",STATUS,0)),U,2)="D",CSTATUS'=3,$P($G(^FSC("STATUS",CSTATUS,0)),U,2)'="D" D
 .D STATUS^FSCRPCEC(CALL,3,.EDITED)
 I STATUS=2 D  I 'OK Q
 .S OK=1
 .S DR="81///`"_DUZ
 .I $G(FIELDS("FUNC")) S DR=DR_";8///`"_+FIELDS("FUNC")
 .I $G(FIELDS("TASK")) S DR=DR_";9///`"_+FIELDS("TASK")
 .S CDATE=$G(FIELDS("DATEC"))
 .I 'CDATE S CDATE=DT
 .I CDATE<$P($G(^FSCD("CALL",CALL,120)),U,4) S CDATE=$P($G(^(120)),U,4)\1
 .S DR=DR_";82///"_CDATE
 .I $L(DR) D  I 'OK Q
 ..N DA,DIE,X,Y
 ..I $E(DR)=";" S DR=$E(DR,2,245)
 ..S DA=CALL,DIE="^FSCD(""CALL"","
 ..L +^FSCD("CALL",DA):30 I '$T S OK=0 Q  ; *** needs ok
 ..D ^DIE
 ..L -^FSCD("CALL",DA)
 ..D PICKUP^FSCES(DA)
 ..S DR=""
 .D RES^FSCRPCNC(CALL)
 I STATUS D STATUS^FSCRPCEC(CALL,STATUS,.EDITED)
 Q
 ;
REOPEN(CALL,REOPEN,EDITED) ;
 I 'REOPEN Q
 S REOPEN=0,EDITED=1
 S OLDSTAT=+$P(^FSCD("CALL",CALL,0),U,2)
 I '(OLDSTAT=2!(OLDSTAT=99)) Q
 D STATUS^FSCES(CALL,OLDSTAT,1,1)
 D UPDATE^FSCTASK(CALL)
 Q
