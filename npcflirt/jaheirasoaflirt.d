

APPEND JAHEIRAJ

// Let's clear up that flirting-after-Dermin "bug" with a new dialogue.

IF WEIGHT #-1
~Global("DerminSpawn","GLOBAL",4)
Global("FWDidExtraDerminChat","LOCALS",0)~
THEN BEGIN extradermin
SAY @1500 = @1501
IF ~~ THEN DO ~SetGlobal("FWDidExtraDerminChat","LOCALS",1)~ EXIT
END

// Active=1 initiated flirts


IF
~Global("FWJaheiraStartFlirtSOA","GLOBAL",1)
GlobalLT("Lovetalk","LOCALS",59)~
THEN BEGIN jaheirainitflirtbase1
SAY @0

IF ~~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiradiscovered
 IF ~RandomNum(10,1)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiradiscovered
 IF ~RandomNum(10,2)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirabedroll
 IF ~RandomNum(10,3)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirarubneck
 IF ~RandomNum(10,4)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiraremained
 IF ~RandomNum(10,5)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiradistract
 IF ~RandomNum(10,6) ReputationLT(Player1,9)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirafailedyou
 IF ~RandomNum(10,6) ReputationGT(Player1,8) ReputationLT(Player1,14)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiramuch2learn
 IF ~RandomNum(10,6) ReputationGT(Player1,13) ReputationLT(Player1,19)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiraappreciate
 IF ~RandomNum(10,6) ReputationGT(Player1,18)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirahighrep
 IF ~RandomNum(10,7)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirawandered
 IF ~RandomNum(10,8) GGT("JaheiraBanditPlot",1)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirapostbandit
 IF ~RandomNum(10,9) HasItem("MISC5W","Jaheira")~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiralocket1
 IF ~RandomNum(10,10) AreaType(FOREST)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiraelements
 IF ~RandomNum(10,10) AreaType(DUNGEON)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiradungeon

END

IF ~~ THEN BEGIN jaheirapostbandit
SAY @1
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiralocket1
SAY @2
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiraelements
SAY @3
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiradungeon 
SAY @4
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheirawandered
SAY @5 = @6
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheirahighrep
SAY @7
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiraappreciate
SAY @8
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheirafailedyou
SAY @9
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiramuch2learn
SAY @10 = @11
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiradiscovered
SAY @12
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheirabedroll
SAY @13 = @14
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheirarubneck
SAY @15
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiraremained
SAY @16
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiradistract
SAY @17
IF ~~ THEN EXIT
END





// Active =2, initiated flirts

IF
~Global("FWJaheiraStartFlirtSOA","GLOBAL",1)
GlobalGT("Lovetalk","LOCALS",61)~
THEN BEGIN jaheirainitflirtbase2

SAY @18 
= @19

IF ~~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiraforoldfriends
 IF ~RandomNum(20,1)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiradamnyou
 IF ~RandomNum(20,2)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirasmackass
 IF ~RandomNum(20,3)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirarubneck
 IF ~RandomNum(20,4)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirahotdruidaction
 IF ~RandomNum(20,5)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirablowear
 IF ~RandomNum(20,6)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiraburr
 IF ~RandomNum(20,7) ReputationGT(Player1,13)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiragoodrep2
 IF ~RandomNum(20,7) ReputationLT(Player1,14)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirabadrep2
 IF ~RandomNum(20,8)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiraholdmenow
 IF ~RandomNum(20,9) HasItem("MISC5W","Jaheira")~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiralocket2
 IF ~RandomNum(20,10)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirashoulder
 IF ~RandomNum(20,11)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiralinksfingers
 IF ~RandomNum(20,12)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiramistletoe
 IF ~RandomNum(20,13)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirachanges
 IF ~RandomNum(20,14)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiraarmorfix
 IF ~RandomNum(20,15) AreaType(OUTDOOR) TimeOfDay(DAY)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiralight
 IF ~RandomNum(20,16) !G("JaheiraNookie",1)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirawantsit
 IF ~RandomNum(20,16) G("JaheiraNookie",1)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiraviagra
 IF ~RandomNum(20,17)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirasearchpack
 IF ~RandomNum(20,18) GlobalGT("Lovetalk","LOCALS",69)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiranevereasy
 IF ~RandomNum(20,19)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiradiet
 IF ~RandomNum(20,20) AreaType(DUNGEON)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiradungeon
 IF ~RandomNum(20,20) AreaType(FOREST)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiraforest2
 IF ~RandomNum(20,20) !AreaType(FOREST) !AreaType(DUNGEON)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiraotherarea

IF ~GlobalGT("Lovetalk","LOCALS",69) G("FWDidJaheiraExtraLT",0)~ THEN DO ~SG("FWDidJaheiraExtraLT",1)~ GOTO extralt1


END

IF ~~ THEN BEGIN jaheiradiet
SAY @20
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiraotherarea
SAY @21
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiraforest2
SAY @22
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheirasearchpack
SAY @23 = @1024
= @24
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiranevereasy
SAY @25
= @26
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheirashoulder
SAY @27
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiramistletoe
SAY @28
= @29
= @30
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheirachanges
SAY @31
= @32
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN jaheiraholdmenow
SAY @33
= @34
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiralinksfingers
SAY @35
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN jaheiragoodrep2
SAY @36
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheirabadrep2
SAY @37
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN jaheiraburr
SAY @38
= @39
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN jaheirablowear
SAY @40 = @41
= @42
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheirasmackass
SAY @43
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheirahotdruidaction
SAY @44
= @45
= @46
= @47
= @48
= @49
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN jaheiradamnyou
SAY @50
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiraforoldfriends
SAY @51
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiralocket2
SAY @52
= @53
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN jaheiraarmorfix
SAY @54
= @55
= @56
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiralight
SAY @57
= @58
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheirawantsit
SAY @59
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiraviagra
SAY @60
= @61
IF ~~ THEN EXIT
END

/* make Jaheira say that she is not ready to flirt (fill the gap so player don't thinks it's a bug): 
GlobalGT("Lovetalk","LOCALS",58)
GlobalLT("Lovetalk","LOCALS",63)
*/

IF
~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
GlobalGT("Lovetalk","LOCALS",58)
GlobalLT("Lovetalk","LOCALS",63)
OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~
THEN BEGIN JaheiraNoflirt
SAY @2000 
END


// PC-initiated flirts: Active=1

IF
~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
GlobalGT("Lovetalk","LOCALS",11)
GlobalLT("Lovetalk","LOCALS",59)
OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~
THEN BEGIN Jaheiraflirtbase1
SAY @62
= @63

 IF ~RandomNum(4,1)~ THEN REPLY @64 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kisscheek1
 IF ~RandomNum(4,2)~ THEN REPLY @64 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kisscheek2
 IF ~RandomNum(4,3)~ THEN REPLY @64 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kisscheek3
 IF ~RandomNum(4,4)~ THEN REPLY @64 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kisscheek3

 IF ~RandomNum(4,1)~ THEN REPLY @65 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO accost
 IF ~RandomNum(4,2)~ THEN REPLY @65 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kissmouth1
 IF ~RandomNum(4,3)~ THEN REPLY @65 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kissmouth1
 IF ~RandomNum(4,4)~ THEN REPLY @65 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kissmouth1

 IF ~RandomNum(4,1)~ THEN REPLY @66 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO ogle1
 IF ~RandomNum(4,2)~ THEN REPLY @66 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO ogle2
 IF ~RandomNum(4,3)~ THEN REPLY @66 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO ogle2
 IF ~RandomNum(4,4)~ THEN REPLY @66 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO ogle3

 IF ~RandomNum(4,1)~ THEN REPLY @67 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO accost
 IF ~RandomNum(4,2)~ THEN REPLY @67 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO accost
 IF ~RandomNum(4,3)~ THEN REPLY @67 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO punchmouth1
 IF ~RandomNum(4,4)~ THEN REPLY @67 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO punchmouth1

 IF ~RandomNum(4,1)~ THEN REPLY @68 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO touchcheek1
 IF ~RandomNum(4,2)~ THEN REPLY @68 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO touchcheek2
 IF ~RandomNum(4,3)~ THEN REPLY @68 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO touchcheek2
 IF ~RandomNum(4,4)~ THEN REPLY @68 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO touchcheek3

 IF ~RandomNum(4,1)~ THEN REPLY @69 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO playbraid1
 IF ~RandomNum(4,2)~ THEN REPLY @69 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO playbraid1
 IF ~RandomNum(4,3)~ THEN REPLY @69 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO playbraid2
 IF ~RandomNum(4,4)~ THEN REPLY @69 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO playbraid2

 IF ~RandomNum(4,1)~ THEN REPLY @70 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO hug1
 IF ~RandomNum(4,2)~ THEN REPLY @70 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO hug1
 IF ~RandomNum(4,3)~ THEN REPLY @70 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO hug2
 IF ~RandomNum(4,4)~ THEN REPLY @70 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO hug3

 IF ~RandomNum(4,1)~ THEN REPLY @71 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO thrust1
 IF ~RandomNum(4,2)~ THEN REPLY @71 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO thrust1
 IF ~RandomNum(4,3)~ THEN REPLY @71 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO thrust2
 IF ~RandomNum(4,4)~ THEN REPLY @71 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO thrust2

IF ~G("FWJaheiraBackside",0)~ THEN REPLY @72 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1) IncrementGlobal("FWJaheiraBackside","GLOBAL",1)~ GOTO accost
IF ~G("FWJaheiraBackside",1)~ THEN REPLY @72 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1) IncrementGlobal("FWJaheiraBackside","GLOBAL",1)~ GOTO scalded
IF ~GGT("FWJaheiraBackside",1)~ THEN REPLY @72 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO mashed

 IF ~RandomNum(4,1)~ THEN REPLY @73 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO memories1
 IF ~RandomNum(4,2)~ THEN REPLY @73 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO memories1
 IF ~RandomNum(4,3)~ THEN REPLY @73 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO dragstoe
 IF ~RandomNum(4,4)~ THEN REPLY @73 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO obligations

 IF ~RandomNum(4,1)~ THEN REPLY @74 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO close1
 IF ~RandomNum(4,2)~ THEN REPLY @74 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO close2
 IF ~RandomNum(4,3)~ THEN REPLY @74 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO close1
 IF ~RandomNum(4,4)~ THEN REPLY @74 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO close3

+ ~GlobalGT("Lovetalk","LOCALS",12) Global("FWDisableFlirtsNPC","GLOBAL",0)~ + @2001 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",1)~ + flirting

+ ~Global("FWDisableFlirtsNPC","GLOBAL",1)~ + @2002 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",0)~ + flirting

IF ~G("JaheiraRomanceActive",1)~ THEN REPLY @205 + breakup

IF ~~ THEN REPLY @75 EXIT
END

IF ~~ THEN flirting
SAY @2003
IF ~~ THEN EXIT
END

IF ~~ breakup
SAY @206
IF ~~ DO ~SG("JaheiraRomanceActive",3)~ EXIT
END

IF ~~ THEN BEGIN accost
SAY @76
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kissmouth1
SAY @77
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kisscheek1
SAY @78
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kisscheek2
SAY @79
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kisscheek3
SAY @80
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ogle1
SAY @81
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ogle2
SAY @82
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ogle3
SAY @83
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN punchmouth1
SAY @84
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN scalded
SAY @85
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN mashed
SAY @86
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN memories1
SAY @87
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN dragstoe
SAY @88
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN obligations
SAY @89
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN close1
SAY @90
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN close2
SAY @91
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN close3
SAY @92
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchcheek1
SAY @93
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchcheek2
SAY @94
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchcheek3
SAY @95
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN playbraid1
SAY @96
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN playbraid2
SAY @97
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug1
SAY @98
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug2
SAY @99
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug3
SAY @100
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN thrust1
SAY @101
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN thrust2
SAY @102
IF ~~ THEN EXIT
END






// PC-Initiated: Active=2

IF
~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
GlobalGT("Lovetalk","LOCALS",62)
OR(2)
Global("JaheiraRomanceActive","GLOBAL",2)
Global("JaheiraRomanceActive","GLOBAL",1)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~
THEN BEGIN Jaheiraflirtbase2
SAY @103
= @104
= @105

 IF ~RandomNum(4,1)~ THEN REPLY @64 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kisscheek4
 IF ~RandomNum(4,2)~ THEN REPLY @64 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kisscheek5
 IF ~RandomNum(4,3)~ THEN REPLY @64 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kisscheek5
 IF ~RandomNum(4,4)~ THEN REPLY @64 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kisscheek6

 IF ~RandomNum(4,1)~ THEN REPLY @65 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kissmouth2
 IF ~RandomNum(4,2)~ THEN REPLY @65 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kissmouth3
 IF ~RandomNum(4,3)~ THEN REPLY @65 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kissmouth3
 IF ~RandomNum(4,4)~ THEN REPLY @65 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kissmouth4

 IF ~RandomNum(4,1) !G("JaheiraNookie",1)~ THEN REPLY @66 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO ogle1
 IF ~RandomNum(4,2) !G("JaheiraNookie",1)~ THEN REPLY @66 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO ogle2
 IF ~RandomNum(4,3) !G("JaheiraNookie",1)~ THEN REPLY @66 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO ogle2
 IF ~RandomNum(4,4) !G("JaheiraNookie",1)~ THEN REPLY @66 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO ogle4
 IF ~G("JaheiraNookie",1)~ THEN REPLY @66 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO ogle5

 IF ~RandomNum(4,1)~ THEN REPLY @67 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO rump1
 IF ~RandomNum(4,2)~ THEN REPLY @67 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO rump2
 IF ~RandomNum(4,3)~ THEN REPLY @67 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO rump3
 IF ~RandomNum(4,4)~ THEN REPLY @67 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO rump3

 IF ~RandomNum(4,1)~ THEN REPLY @72 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO backside1
 IF ~RandomNum(4,2)~ THEN REPLY @72 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO backside1
 IF ~RandomNum(4,3)~ THEN REPLY @72 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO backside2
 IF ~RandomNum(4,4)~ THEN REPLY @72 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO backside3

 IF ~RandomNum(4,1) G("JaheiraNookie",1) !HPLT(Player1,25)~ THEN REPLY @106 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO wantu1
 IF ~RandomNum(4,2) G("JaheiraNookie",1) !HPLT(Player1,25)~ THEN REPLY @106 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO wantu2
 IF ~RandomNum(4,3) G("JaheiraNookie",1) !HPLT(Player1,25)~ THEN REPLY @106 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO wantu2
 IF ~RandomNum(4,4) G("JaheiraNookie",1) !HPLT(Player1,25)~ THEN REPLY @106 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO wantu3
IF ~G("JaheiraNookie",1) HPLT(Player1,25)~ THEN REPLY @106 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO wantunosense

IF ~GlobalGT("Lovetalk","LOCALS",69) !G("JaheiraNookie",1)~ THEN REPLY @107 DO ~SG("JaheiraNookie",1) IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO loveu2night

 IF ~RandomNum(4,1)~ THEN REPLY @73 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO memories2
 IF ~RandomNum(4,2)~ THEN REPLY @73 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO memories3
 IF ~RandomNum(4,3)~ THEN REPLY @73 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO memories4
 IF ~RandomNum(4,4)~ THEN REPLY @73 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO memories4

 IF ~RandomNum(4,1)~ THEN REPLY @108 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO loveyou1
 IF ~RandomNum(4,2)~ THEN REPLY @108 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO loveyou2
 IF ~RandomNum(4,3)~ THEN REPLY @108 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO loveyou2
 IF ~RandomNum(4,4)~ THEN REPLY @108 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO loveyou3

 IF ~RandomNum(4,1)~ THEN REPLY @109 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO touchcheek4
 IF ~RandomNum(4,2)~ THEN REPLY @109 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO touchcheek5
 IF ~RandomNum(4,3)~ THEN REPLY @109 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO touchcheek6
 IF ~RandomNum(4,4)~ THEN REPLY @109 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO touchcheek7

 IF ~RandomNum(4,1)~ THEN REPLY @69 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO playbraid3
 IF ~RandomNum(4,2)~ THEN REPLY @69 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO playbraid4
 IF ~RandomNum(4,3)~ THEN REPLY @69 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO playbraid2
 IF ~RandomNum(4,4)~ THEN REPLY @69 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO playbraid4

 IF ~RandomNum(4,1)~ THEN REPLY @70 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO hug4
 IF ~RandomNum(4,2)~ THEN REPLY @70 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO hug4
 IF ~RandomNum(4,3)~ THEN REPLY @70 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO hug5
 IF ~RandomNum(4,4)~ THEN REPLY @70 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO hug6

 IF ~RandomNum(4,1)~ THEN REPLY @71 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO thrust1
 IF ~RandomNum(4,2)~ THEN REPLY @71 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO thrust1
 IF ~RandomNum(4,3)~ THEN REPLY @71 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO thrust2
 IF ~RandomNum(4,4)~ THEN REPLY @71 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO thrust2

 IF ~RandomNum(4,1) AreaType(OUTDOOR)~ THEN REPLY @110 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO pullground1
 IF ~RandomNum(4,2) AreaType(OUTDOOR)~ THEN REPLY @110 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO pullground2
 IF ~RandomNum(4,3) AreaType(OUTDOOR)~ THEN REPLY @110 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO pullground3
 IF ~RandomNum(4,4) AreaType(OUTDOOR)~ THEN REPLY @110 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO pullground3

 IF ~RandomNum(4,1)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ THEN REPLY @111 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO innbath1
 IF ~RandomNum(4,2)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ THEN REPLY @111 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO innbath1
 IF ~RandomNum(4,3)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ THEN REPLY @111 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO innbath2
 IF ~RandomNum(4,4)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ THEN REPLY @111 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO innbath3

 IF ~RandomNum(4,1)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @111 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO streambath1
 IF ~RandomNum(4,2)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @111 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO streambath1
 IF ~RandomNum(4,3)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @111 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO streambath2
 IF ~RandomNum(4,4)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @111 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO streambath3

 IF ~RandomNum(4,1)~ THEN REPLY @112 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO crotch1
 IF ~RandomNum(4,2)~ THEN REPLY @112 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO crotch1
 IF ~RandomNum(4,3)~ THEN REPLY @112 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO crotch2
 IF ~RandomNum(4,4)~ THEN REPLY @112 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO crotch3

+ ~Global("FWDisableFlirtsNPC","GLOBAL",0)~ + @2001 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",1)~ + flirting

+ ~Global("FWDisableFlirtsNPC","GLOBAL",1)~ + @2002 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",0)~ + flirting

IF ~~ THEN REPLY @75 EXIT

END


IF ~~ THEN BEGIN crotch1
SAY @113
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN crotch2
SAY @114
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN crotch3
SAY @115
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN extralt1
SAY @116
IF ~~ THEN REPLY @117 GOTO extralt2
IF ~~ THEN REPLY @118 GOTO extralt3
IF ~~ THEN REPLY @119 GOTO extralt4
IF ~~ THEN REPLY @120 GOTO extralt5
END

IF ~~ THEN BEGIN extralt2
SAY @121
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN extralt3
SAY @122
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN extralt4
SAY @123
= @124
IF ~~ THEN REPLY @125 GOTO extralt6
IF ~~ THEN REPLY @126 GOTO extralt7
IF ~~ THEN REPLY @127 GOTO extralt8
END

IF ~~ THEN BEGIN extralt5
SAY @128
= @129
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN extralt6
SAY @130
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN extralt7
SAY @131
= @132
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN extralt8
SAY @133
= @134
IF ~~ THEN DO ~SG("JaheiraRomanceActive",3)~ EXIT
END

IF ~~ THEN BEGIN wantu1
SAY @135 = @136
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN wantu2
SAY @137
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN wantu3
SAY @138
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN wantunosense
SAY @139
= @140
IF ~~ THEN DO ~ReallyForceSpell(PLAYER1,CLERIC_CURE_MEDIUM_WOUNDS)~ EXIT
END

IF ~~ THEN BEGIN loveu2night
SAY @141
= @142
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN memories2
SAY @143
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN memories3
SAY @144
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN memories4
SAY @145
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN loveyou1
SAY @146
= @147
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN loveyou2
SAY @148
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN loveyou3
SAY @149
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchcheek4
SAY @150
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchcheek5
SAY @151
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchcheek6
SAY @152
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchcheek7
SAY @153
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN playbraid3
SAY @154
= @155
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN playbraid4
SAY @156
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN hug4
SAY @157
= @158
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug5
SAY @159
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug6
SAY @160 
= @161
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN pullground1
SAY @162
= @163
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN pullground2
SAY @164
= @165
= @166
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN pullground3
SAY @167
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN innbath1
SAY @168
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN innbath2
SAY @169
= @170
= @171
= @172
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN innbath3

SAY @173
= @174
= @175
= @176
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN streambath1
SAY @177
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN streambath2
SAY @178
= @179
= @180
= @181
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN streambath3
SAY @182
= @183
= @184
= @185
IF ~~ THEN EXIT
END




IF ~~ THEN BEGIN backside1
SAY @186
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN backside2
SAY @187
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN backside3
SAY @188
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kisscheek4
SAY @189
= @190
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kisscheek5
SAY @191
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kisscheek6
SAY @192
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kissmouth2
SAY @193
= @194
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kissmouth3
SAY @195
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kissmouth4
SAY @196
= @197
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ogle4
SAY @198
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ogle5 
SAY @199
IF ~RandomNum(4,1)~ THEN GOTO ogle1
IF ~RandomNum(4,2)~ THEN GOTO ogle2
IF ~RandomNum(4,3)~ THEN GOTO ogle4
IF ~RandomNum(4,4)~ THEN GOTO ogle6
END

IF ~~ THEN BEGIN ogle6
SAY @200
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rump1
SAY @201
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rump2
SAY @202
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rump3
SAY @203
IF ~~ THEN EXIT
END

// No flirting in Underdark

IF ~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
OR(17)
AreaCheck("AR2100")
AreaCheck("AR2101")
AreaCheck("AR2102")
AreaCheck("AR2200")
AreaCheck("AR2201")
AreaCheck("AR2202")
AreaCheck("AR2203")
AreaCheck("AR2204")
AreaCheck("AR2205")
AreaCheck("AR2206")
AreaCheck("AR2207")
AreaCheck("AR2208")
AreaCheck("AR2209")
AreaCheck("AR2210")
AreaCheck("AR2400")
AreaCheck("AR2401")
AreaCheck("AR2402")~ THEN BEGIN noflirtinunderdark
SAY @1502
IF ~~ THEN EXIT
END



END

