FSCRPCUA ;SLC/STAFF-NOIS RPC User Affiliations ;1/31/98  21:14
 ;;1.1;NOIS;;Sep 06, 1998
 ;
SETUP(IN,OUT) ; from FSCRPX (RPCAffiliations)
 N CNT,DA,DIE,DIK,DR,NUM,OK,PACK
 ; ignore first line
 S DA=DUZ
 I '$O(^TMP("FSCRPC",$J,"INPUT",1)) D  Q
 .I '$L($G(^FSC("SPEC",DA,0))) Q
 .D DEL(DA)
 I $L($G(^FSC("SPEC",DA,0))) D DEL(DA)
 I '$L($G(^FSC("SPEC",DA,0))) S OK=1 D  I 'OK Q
 .L +^FSC("SPEC",0):30 I '$T S OK=0 Q
 .S $P(^FSC("SPEC",0),U,3)=DA,$P(^(0),U,4)=$P(^(0),U,4)+1
 .S ^FSC("SPEC",DA,0)=DA,^FSC("SPEC","B",DA,DA)=""
 .L -^FSC("SPEC",0)
 S OK=1 D  I 'OK Q
 .S DIE=7105.2,DR="1///1;10.1///ALERT;10.2///EDITED;10.3///ALL"
 .L +^FSC("SPEC",DA):30 I '$T S OK=0 Q
 .D ^DIE
 .L -^FSC("SPEC",DA)
 S CNT=0,NUM=1 F  S NUM=$O(^TMP("FSCRPC",$J,"INPUT",NUM)) Q:NUM<1  S PACK=+^(NUM) I $L($G(^FSC("PACK",PACK,0))) D
 .S CNT=CNT+1
 .S ^FSC("SPEC",DA,30,CNT,0)=PACK
 S ^FSC("SPEC",DA,30,0)="^7105.23P^"_CNT_U_CNT
 S DIK="^FSC(""SPEC"","
 D IX1^DIK
 Q
 ;
DEL(USER) ;
 N NUM
 I '$L($G(^FSC("SPEC",USER,0))) Q
 S NUM=0 F  S NUM=$O(^FSC("SPEC",USER,30,"B",NUM)) Q:NUM<1  D
 .K ^FSC("SPEC","AP",NUM,USER)
 K ^FSC("SPEC",USER,30)
 Q
