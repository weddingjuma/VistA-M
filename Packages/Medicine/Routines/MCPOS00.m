MCPOS00 ;HIRMFO/DAD-POST INSTALLATION DRIVER ;8/19/96  10:10
 ;;2.3;Medicine;;09/13/1996
 ;
 N MCPOS,VERSION
 S VERSION=+^XTMP("MC","VER")
 ;
 I VERSION'<2 D
 . I VERSION<2.3 S MCPOS=$$NEWCP^XPDUTL("POS01","^MCPOS01")
 . I VERSION=2 D
 .. S MCPOS=$$NEWCP^XPDUTL("POS02","^MCPOS02")
 .. S MCPOS=$$NEWCP^XPDUTL("POS03","^MCPOS03")
 .. Q
 . S MCPOS=$$NEWCP^XPDUTL("POS04","^MCPOS04")
 . S MCPOS=$$NEWCP^XPDUTL("POS05","^MCPOS05")
 . S MCPOS=$$NEWCP^XPDUTL("POS06","^MCPOS06")
 . S MCPOS=$$NEWCP^XPDUTL("POS07","^MCPOS07")
 . S MCPOS=$$NEWCP^XPDUTL("POS08","^MCPOS08")
 . I VERSION=2 D
 .. S MCPOS=$$NEWCP^XPDUTL("POS09","^MCPOS09")
 .. Q
 . S MCPOS=$$NEWCP^XPDUTL("POS0A","^MCPOS0A")
 . S MCPOS=$$NEWCP^XPDUTL("POS0B","^MCPOS0B")
 . S MCPOS=$$NEWCP^XPDUTL("POS0C","^MCPOS0C")
 . S MCPOS=$$NEWCP^XPDUTL("POS0D","^MCPOS0D")
 . S MCPOS=$$NEWCP^XPDUTL("POS0E","^MCPOS0E")
 . Q
 S MCPOS=$$NEWCP^XPDUTL("POS0Z","^MCPOS0Z")
 Q
