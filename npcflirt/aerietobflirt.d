
// Aerie summoning-in-romance dialogue

EXTEND_TOP FATESP 6
  IF ~%New_ToB_Game%
!Dead("Aerie")
!InMyArea("Aerie")
Global("AerieSummoned","GLOBAL",0)
Gender(Player1,MALE)
!Race(Player1,HALFORC)
!Race(Player1,DWARF)
!Global("JaheiraRomanceActive","GLOBAL",2)
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN
   REPLY @6000
    DO ~SetGlobal("AerieRomanceActive","GLOBAL",2)
SetGlobal("AerieSummoned","GLOBAL",1)
SG("FWAerieSummonedInRomance",1)~ GOTO 8
END

A_S_T AERIE25A 0 ~G("FWAerieSummonedInRomance",0)~

A_S_T AERIE25A 8 ~!G("AerieRomanceActive",2)~


APPEND AERIE25A
IF WEIGHT #-1 ~G("AerieSummoned",1)
G("FWAerieSummonedInRomance",1)~
THEN BEGIN summ1
SAY @6001 = @6002
IF ~~ THEN REPLY @6003 DO ~SG("AerieSummoned",2)~ GOTO summ2
IF ~~ THEN REPLY @6004 DO ~SG("AerieSummoned",2)~ GOTO summ3
IF ~~ THEN REPLY @6005 DO ~SG("AerieSummoned",2)~ GOTO summ4
END

IF ~~ THEN BEGIN summ2
SAY @6006
IF ~~ THEN REPLY @6007 GOTO summ3
IF ~~ THEN REPLY @6008 GOTO summ5
END

IF ~~ THEN BEGIN summ3
SAY @6009
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN summ4
SAY @6010
IF ~~ THEN REPLY @6007 GOTO summ3
IF ~~ THEN REPLY @6008 GOTO summ5
END

IF ~~ THEN BEGIN summ5
SAY @6011
IF ~~ THEN DO ~MoveToPointNoInterrupt([1700.1175])
Face(14)~ EXIT
END

// Aerie not-joined after romance summon here

IF ~Global("AerieSummoned","GLOBAL",2)
G("FWAerieSummonedInRomance",1)~ THEN BEGIN summwait
SAY @6012
IF ~~ THEN REPLY @6013 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @6014 EXIT
END

END


// Aerie-initiated TOB flirts : TURN BACK ON AFTER ExpLoveTalk=4

APPEND AERIE25J



IF
~Global("FWAerieStartFlirtTOB","GLOBAL",1)~
THEN BEGIN aerieinitflirtbase1
SAY @0

 IF ~~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerielooparm

 IF ~RandomNum(23,1)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerieshuffle2
 IF ~RandomNum(23,2)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriestandclose
 IF ~RandomNum(23,3)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriemakesee
 IF ~RandomNum(23,4)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerieeyeing3
 IF ~RandomNum(23,5)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerieshoulder2
 IF ~RandomNum(23,6)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriehugs
 IF ~RandomNum(23,7)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriesidles
 IF ~RandomNum(23,8)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriesohappy
 IF ~RandomNum(23,9)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriecoolhand

 IF ~GlobalGT("ExpLovetalk","LOCALS",12) !GGT("AerieHadBaby",0)
RandomNum(23,10)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerieswelling
 IF ~OR(2)
GlobalLT("ExpLovetalk","LOCALS",13)
GGT("AerieHadBaby",0)
RandomNum(23,10)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriethrumming

 IF ~RandomNum(23,11)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerieticklesu
 IF ~RandomNum(23,12)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerierestshead
 IF ~RandomNum(23,13)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriemymarkings

 IF ~RandomNum(23,14)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerieherewithyou2
 IF ~RandomNum(23,15)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriegladyou
 IF ~RandomNum(23,16)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerienipsear
 IF ~RandomNum(23,17)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriehealyou
 IF ~RandomNum(23,18)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerietinymouth
 IF ~RandomNum(23,19)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerieslygrin
 IF ~RandomNum(23,20)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerienestlesclose
 IF ~RandomNum(23,21)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerielookingforward

 IF ~RandomNum(23,22) AreaType(OUTDOOR)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriepointstars
 IF ~RandomNum(23,22) AreaType(CITY)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriecity
 IF ~RandomNum(23,23) ReputationGT(Player1,15)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerienice2people
 IF ~RandomNum(23,23) ReputationLT(Player1,8)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriemean2people


 IF ~HPLT(Player1,15)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO lowhp1


 IF ~GlobalGT("ExpLovetalk","LOCALS",12) !GGT("AerieHadBaby",0)
G("FWAerieSwellingFlirt",0)~ THEN DO ~SG("FWAerieSwellingFlirt",1) IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerieswelling

END

IF ~~ aerielooparm
SAY @588
IF ~~ EXIT
END

IF ~~ aeriecity
SAY @587
IF ~~ EXIT
END

IF ~~ aerienice2people
SAY @590
IF ~~ EXIT
END

IF ~~ aeriemean2people
SAY @591 = @592
IF ~~ EXIT
END


IF ~~ lowhp1
SAY @589
IF ~~ THEN DO ~ReallyForceSpell(PLAYER1,CLERIC_CURE_MEDIUM_WOUNDS)~ EXIT
END


IF ~~ aeriethanks
SAY @586
IF ~~ THEN EXIT
END

IF ~~ aeriepointstars
SAY @585
IF ~~ EXIT
END


IF ~~ THEN BEGIN aerielookingforward
SAY @312 = @313
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerienestlesclose
SAY @310 = @311
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerieslygrin
SAY @308 = @309
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerietinymouth
SAY @306 = @307
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aeriehealyou
SAY @304 = @305
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerienipsear
SAY @303
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aeriegladyou
SAY @302
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerieherewithyou2
SAY @419 = @301
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN aeriemymarkings
SAY @211
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerierestshead
SAY @210
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerieticklesu
SAY @208 = @209
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN aerieswelling
SAY @204 = @205
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aeriethrumming
SAY @206 = @207
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN aeriecoolhand
SAY @203
IF ~~ THEN DO ~ApplySpell("Aerie",WIZARD_RESIST_FEAR)
ApplySpell(Player1,WIZARD_RESIST_FEAR)~ EXIT
END

IF ~~ THEN BEGIN aeriemakesee
SAY @200
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerieeyeing3
SAY @201 = @202
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aeriestandclose
SAY @3
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN aerieshoulder
SAY @6
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aeriecircus
SAY @4
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aeriesonice
SAY @7 = @8
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerieshuffle2
SAY @10 = @2
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN aerieshoulder2
SAY @12 = @13
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aeriehugs
SAY @14
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aeriesidles
SAY @15
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aeriesohappy
SAY @16
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerieloveyou
SAY @17
IF ~~ THEN EXIT
END




// PC-initiated flirts are below


IF ~~ THEN BEGIN punchhurts
SAY @49
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN punchme1
SAY @50
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN punchme2
SAY @51
IF ~~ THEN GOTO punchmenohurt
IF ~CheckStatLT(Player1,10,STR) CheckStatLT(Player1,10,STR)~ THEN GOTO punchhurts2
END

IF ~~ THEN BEGIN punchmenohurt
SAY @52
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN punchhurts2
SAY @53 = @54
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN squeezebutt1
SAY #15189 = @28
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN squeezebutt2
SAY @46
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN squeezebutt3
SAY @47
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kisscheek1
SAY @43
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kisscheek2
SAY @44
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lipkiss1
SAY @39 = @40
IF ~~ THEN DO ~SG("FWAerieLipKiss",1)~ EXIT
END

IF ~~ THEN BEGIN lipkiss2
SAY @41
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerierobe1
SAY @35
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerierobe2
SAY @34
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerierobe3
SAY @36 = @37
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN nuzzle1
SAY @26
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN nuzzle2
SAY @27 = @28
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN prettyaerie1
SAY @21
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN prettyaerie2
SAY @22 = @23
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN prettyaerie3
SAY @24
IF ~~ THEN EXIT
END

// PC-Initiated top-levels

// This one takes care of the "Aerie won't flirt right away" problem.

IF ~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
Global("FWAerieFlirtsStartTOB","LOCALS",0)
Global("AerieRomanceActive","GLOBAL",2)
IsGabber(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!ActuallyInCombat()~
THEN BEGIN aerieinitflirtbasetooearly
SAY @500
IF ~~ THEN EXIT
END

// This is the regular flirt.

IF
~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
!ActuallyInCombat()
GlobalGT("ExpLovetalk","LOCALS",4)
Global("AerieRomanceActive","GLOBAL",2)~
THEN BEGIN aerieflirtbase2
SAY @212

 IF ~RandomNum(4,1)~ THEN REPLY @213 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO lickear1
 IF ~RandomNum(4,2)~ THEN REPLY @213 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO lickear2
 IF ~RandomNum(4,3)~ THEN REPLY @213 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO lickear3
 IF ~RandomNum(4,4)~ THEN REPLY @213 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO lickear1

 IF ~RandomNum(4,1)~ THEN REPLY @217 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO strokeface1
 IF ~RandomNum(4,2)~ THEN REPLY @217 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO strokeface2
 IF ~RandomNum(4,3)~ THEN REPLY @217 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO strokeface3
 IF ~RandomNum(4,4)~ THEN REPLY @217 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO strokeface1

 IF ~RandomNum(4,1)~ THEN REPLY @501 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO hug6
 IF ~RandomNum(4,2)~ THEN REPLY @501 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO hug3
 IF ~RandomNum(4,3)~ THEN REPLY @501 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO hug9
 IF ~RandomNum(4,4)~ THEN REPLY @501 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO hug10

 IF ~RandomNum(4,1)~ THEN REPLY @222 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO caressbody1
 IF ~RandomNum(4,2)~ THEN REPLY @222 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO caressbody2
 IF ~RandomNum(4,3)~ THEN REPLY @222 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO caressbody3
 IF ~RandomNum(4,4)~ THEN REPLY @222 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO caressbody1

 IF ~RandomNum(4,1)
OR(2)
GlobalLT("ExpLoveTalk","LOCALS",13)
GGT("AerieHadBaby",0)~ THEN REPLY @227 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO needu1
 IF ~RandomNum(4,2)
OR(2)
GlobalLT("ExpLoveTalk","LOCALS",13)
GGT("AerieHadBaby",0)~ THEN REPLY @227 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO needu1
 IF ~RandomNum(4,1) GlobalGT("ExpLovetalk","LOCALS",12) !GGT("AerieHadBaby",0)~ 
THEN REPLY @227 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO needu4
 IF ~RandomNum(4,2) GlobalGT("ExpLovetalk","LOCALS",12) !GGT("AerieHadBaby",0)~
THEN REPLY @227 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO needu4
 IF ~RandomNum(4,3)~ THEN REPLY @227 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO needu2
 IF ~RandomNum(4,4)~ THEN REPLY @227 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO needu3

 IF ~RandomNum(4,1)~ THEN REPLY @235 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO breeches1
 IF ~RandomNum(4,2)~ THEN REPLY @235 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO breeches2
 IF ~RandomNum(4,3)~ THEN REPLY @235 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO breeches3
 IF ~RandomNum(4,4)~ THEN REPLY @235 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO breeches1

 IF ~RandomNum(4,1) !Areatype(OUTDOOR) !Areatype(DUNGEON)~ THEN REPLY @241 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO lapdance1
 IF ~RandomNum(4,2) !Areatype(OUTDOOR) !Areatype(DUNGEON)~ THEN REPLY @241 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO lapdance2
 IF ~RandomNum(4,3) !Areatype(OUTDOOR) !Areatype(DUNGEON)~ THEN REPLY @241 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO lapdance3
 IF ~RandomNum(4,4) !Areatype(OUTDOOR) !Areatype(DUNGEON)~ THEN REPLY @241 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO lapdance1

 IF ~RandomNum(4,1)~ THEN REPLY @19 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO prettyaerie1
 IF ~RandomNum(4,2)~ THEN REPLY @19 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO prettyaerie4
 IF ~RandomNum(4,3)~ THEN REPLY @19 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO prettyaerie4
 IF ~RandomNum(4,4)~ THEN REPLY @19 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO prettyaerie3

 IF ~RandomNum(4,1)~ THEN REPLY @25 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO nuzzle3
 IF ~RandomNum(4,2)~ THEN REPLY @25 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO nuzzle4
 IF ~RandomNum(4,3)~ THEN REPLY @25 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO nuzzle6
 IF ~RandomNum(4,4)~ THEN REPLY @25 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO nuzzle6

 IF ~RandomNum(4,1)~ THEN REPLY @29 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO chesttouch1
 IF ~RandomNum(4,2)~ THEN REPLY @29 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO chesttouch2
 IF ~RandomNum(4,3)~ THEN REPLY @29 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO chesttouch1
 IF ~RandomNum(4,4)~ THEN REPLY @29 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO chesttouch2

 IF ~RandomNum(4,1)~ THEN REPLY @33 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierobe1
 IF ~RandomNum(4,2)~ THEN REPLY @33 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierobe2
 IF ~RandomNum(4,3)~ THEN REPLY @33 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierobe5
 IF ~RandomNum(4,4)~ THEN REPLY @33 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierobe6

 IF ~RandomNum(4,1)~ THEN REPLY @38 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerielips1
 IF ~RandomNum(4,2)~ THEN REPLY @38 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerielips5
 IF ~RandomNum(4,3)~ THEN REPLY @38 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerielips3
 IF ~RandomNum(4,4)~ THEN REPLY @38 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerielips1

 IF ~RandomNum(4,1)~ THEN REPLY @69 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierub1
 IF ~RandomNum(4,2)~ THEN REPLY @69 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierub4
 IF ~RandomNum(4,3)~ THEN REPLY @69 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierub4
 IF ~RandomNum(4,4)~ THEN REPLY @69 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierub3

 IF ~RandomNum(4,1)
OR(2)
GlobalLT("ExpLoveTalk","LOCALS",13)
GGT("AerieHadBaby",0)~ THEN REPLY @75 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO alwayslove1
 IF ~RandomNum(4,2)
OR(2)
GlobalLT("ExpLoveTalk","LOCALS",13)
GGT("AerieHadBaby",0)~ THEN REPLY @75 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO alwayslove4
IF ~RandomNum(4,1) GlobalGT("ExpLovetalk","LOCALS",12) !GGT("AerieHadBaby",0)~ THEN REPLY @75 GOTO alwayslove5
IF ~RandomNum(4,2) GlobalGT("ExpLovetalk","LOCALS",12) !GGT("AerieHadBaby",0)~ THEN REPLY @75 GOTO alwayslove5
 IF ~RandomNum(4,3)~ THEN REPLY @75 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO alwayslove4
 IF ~RandomNum(4,4)~ THEN REPLY @75 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO alwayslove3

 IF ~RandomNum(4,1)~ THEN REPLY @79 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO cradle1
 IF ~RandomNum(4,2)~ THEN REPLY @79 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO cradle2
 IF ~RandomNum(4,3)~ THEN REPLY @79 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO cradle1
 IF ~RandomNum(4,4)~ THEN REPLY @79 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO cradle4

 IF ~RandomNum(4,1)~ THEN REPLY @87 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO massage1
 IF ~RandomNum(4,2)~ THEN REPLY @87 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO massage2
 IF ~RandomNum(4,3)~ THEN REPLY @87 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO massage1
 IF ~RandomNum(4,4)~ THEN REPLY @87 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO massage2

 IF ~RandomNum(4,1)~ THEN REPLY @91 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO rubher1
 IF ~RandomNum(4,2)~ THEN REPLY @91 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO rubher3
 IF ~RandomNum(4,3)~ THEN REPLY @91 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO rubher1
 IF ~RandomNum(4,4)~ THEN REPLY @91 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO rubher3

 IF ~RandomNum(4,1)~ THEN REPLY @45 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO squeezebutt4
 IF ~RandomNum(4,2)~ THEN REPLY @45 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO squeezebutt5
 IF ~RandomNum(4,3)~ THEN REPLY @45 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO squeezebutt7
 IF ~RandomNum(4,4)~ THEN REPLY @45 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO squeezebutt7

 IF ~RandomNum(4,1)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ THEN REPLY @320 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO innbath1
 IF ~RandomNum(4,2)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ THEN REPLY @320 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO innbath2
 IF ~RandomNum(4,3)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ THEN REPLY @320 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO innbath3
 IF ~RandomNum(4,4)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ THEN REPLY @320 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO innbath1

 IF ~RandomNum(4,1)
AreaCheck("AR6400")~ THEN REPLY @320 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO streambath1
 IF ~RandomNum(4,2)
AreaCheck("AR6400")~ THEN REPLY @320 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO streambath1
 IF ~RandomNum(4,3)
AreaCheck("AR6400")~ THEN REPLY @320 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO streambath2
 IF ~RandomNum(4,4)
AreaCheck("AR6400")~ THEN REPLY @320 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO streambath3

 IF ~RandomNum(4,1)~ THEN REPLY @551 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO wink1
 IF ~RandomNum(4,2)~ THEN REPLY @551 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO wink2
 IF ~RandomNum(4,3)~ THEN REPLY @551 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO wink4
 IF ~RandomNum(4,4)~ THEN REPLY @551 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO wink4

 IF ~RandomNum(4,1)~ THEN REPLY @552 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO holdhand4
 IF ~RandomNum(4,2)~ THEN REPLY @552 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO holdhand4
 IF ~RandomNum(4,3)~ THEN REPLY @552 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO holdhand5
 IF ~RandomNum(4,4)~ THEN REPLY @552 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO holdhand6

 IF ~RandomNum(4,1)~ THEN REPLY @553 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO tackle1
 IF ~RandomNum(4,2)~ THEN REPLY @553 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO tackle1
 IF ~RandomNum(4,3)~ THEN REPLY @553 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO tackle2
 IF ~RandomNum(4,4)~ THEN REPLY @553 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO tackle3

+ ~GlobalGT("Lovetalk","LOCALS",8) Global("FWDisableFlirtsNPC","GLOBAL",0)~ + @2001 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",1)~ + flirting

+ ~Global("FWDisableFlirtsNPC","GLOBAL",1)~ + @2002 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",0)~ + flirting

IF ~~ THEN REPLY @259 EXIT

END

IF ~~ THEN flirting
SAY @2003
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tackle1
SAY @565 = @566
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tackle2
SAY @567 = @568 = @569
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tackle3
SAY @570 = @571 = @572 = @573
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN holdhand4
SAY @562
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN holdhand5
SAY @563
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN holdhand6
SAY @564
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN wink1
SAY @554 = @555
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN wink2
SAY @556
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN wink4
SAY @558
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN hug9
SAY @513 = @514 = @515
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug10
SAY @516 = @517
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN hug3
SAY @505
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug6
SAY @509 = @510
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN innbath1
SAY @342 = @343 = @344 = @345 = @346
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN innbath2
SAY @336 = @337 = @338 = @339 = @340 = @341
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN innbath3
SAY @334
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN streambath1
SAY @347 = @348 = @349 = @350 = @351 = @352
IF ~~ THEN DO ~ReallyForceSpell(PLAYER1,CLERIC_BLESS)
ReallyForceSpell("Aerie",CLERIC_BLESS)~ EXIT
END

IF ~~ THEN BEGIN streambath2
SAY @353 = @354 = @355 = @356 = @357 = @358
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN streambath3
SAY @335
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN alwayslove5
SAY @254 = @255
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN alwayslove4
SAY @253
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerierub4
SAY @252
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerielips5
SAY @251
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN aerierobe5
SAY @36 = @248
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerierobe6
SAY @249 = @250
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN nuzzle6
SAY @247
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lapdance1
SAY @244 = @245
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lapdance2
SAY @242 = @243
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lapdance3
SAY @246
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN breeches1
SAY @240
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN breeches2
SAY @238 = @239
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN breeches3
SAY @236 = @237
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN needu1
SAY @228 = @229
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN needu2
SAY @230 = @231
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN needu3
SAY @232 = @233
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN needu4
SAY @234
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN caressbody1
SAY @224
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN caressbody2
SAY @223
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN caressbody3
SAY @225 = @226
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN strokeface1
SAY @218 = @219
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN strokeface2
SAY @220
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN strokeface3
SAY @221
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN lickear1
SAY @214
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lickear2
SAY @215
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lickear3
SAY @216
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN squeezebutt4
SAY @95 = @96
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN squeezebutt5
SAY #15189
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN squeezebutt7
SAY @257
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rubher1
SAY @92
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rubher2
SAY @93
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rubher3
SAY @94
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN massage1
SAY @88
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN massage2
SAY @89 = @90
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN needs1
SAY @85
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN needs2
SAY @86
IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN cradle1
SAY @80 = @1000
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN cradle2
SAY @81
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN cradle4
SAY @256 = @83
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN alwayslove1
SAY @76
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN alwayslove2
SAY @77
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN alwayslove3
SAY @78
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN aerierub1
SAY @70
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerierub2
SAY @71 = @72
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerierub3
SAY @73 = @74
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerielips1
SAY @66
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerielips2
SAY @67
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerielips3
SAY @68
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN chesttouch1
SAY @64
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN chesttouch2
SAY @65
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN nuzzle3
SAY @60 = @61
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN nuzzle4
SAY @62
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN nuzzle5
SAY @63
IF ~~ THEN EXIT
END




IF ~~ THEN BEGIN thinklove
SAY @57
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN prettyaerie4
SAY @59
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rubher4
SAY @104
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN cradleslept1
SAY @103 = @100
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerielips4
SAY @101 = @102
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN wonderful1
SAY @99
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN wonderful2
SAY @100
IF ~~ THEN EXIT
END

END


// Wingifica--wingification!

// Romance version

A_T_T AERIE25J 20 ~False()~

EXTEND_BOTTOM AERIE25J 20
IF ~~ THEN REPLY @518 GOTO wing2
IF ~~ THEN REPLY @519 EXTERN FINSOL01 33
END



APPEND AERIE25J
IF ~~ THEN BEGIN wing2
SAY @520 = @521
IF ~~ THEN REPLY @522 DO ~SG("FWAerieHasWings",1)~ GOTO wing3
IF ~~ THEN REPLY @523 DO ~SG("FWAerieHasWings",1)~ GOTO wing3
IF ~~ THEN REPLY @524 EXTERN FINSOL01 33
END

IF ~~ THEN BEGIN wing3
SAY @525
IF ~~ THEN REPLY @526 EXTERN FINSOL01 33
IF ~~ THEN REPLY @527 EXTERN FINSOL01 33
IF ~~ THEN REPLY @528 EXTERN FINSOL01 33
END

END


// Non-romance version

/* FINSOL01 29 */

EXTEND_BOTTOM FINSOL01 29 
IF ~IsValidForPartyDialog("Aerie") !Global("AerieRomanceActive","GLOBAL",2) Global("FWDidAerieNonRomWing","GLOBAL",0)~ THEN
   DO ~SetGlobal("FWDidAerieNonRomWing","GLOBAL",1)~ EXTERN AERIE25J nonwing1
END

APPEND AERIE25J

IF ~~ THEN BEGIN nonwing1
SAY @530
IF ~~ THEN REPLY @531 GOTO nonwingdepart
IF ~~ THEN REPLY @532 GOTO nonwing2
END

IF ~~ THEN BEGIN nonwingdepart
SAY @533
COPY_TRANS FINSOL01 29
END

IF ~~ THEN BEGIN nonwing2
SAY @534
IF ~~ THEN GOTO nonwingdecide
IF ~OR(2)
Alignment(Player1,MASK_EVIL)
ReputationLT(Player1,10)~ THEN GOTO nonwingevil
IF ~OR(3)
Alignment(Player1,LAWFUL_NEUTRAL)
Alignment(Player1,NEUTRAL)
Alignment(Player1,CHAOTIC_NEUTRAL)
ReputationLT(Player1,14)~ THEN GOTO nonwingneutral
END

IF ~~ THEN BEGIN nonwingevil
SAY @535 = @536
COPY_TRANS FINSOL01 29
END

IF ~~ THEN BEGIN nonwingneutral
SAY @537 = @538 = @539 = @540
COPY_TRANS FINSOL01 29
END

IF ~~ THEN BEGIN nonwingdecide
SAY @541 = @542 = @543
IF ~~ THEN REPLY @544 DO ~SG("FWAerieHasWings",1)~ GOTO nonwingyes1
IF ~~ THEN REPLY @545 GOTO nonwingdepart
IF ~~ THEN REPLY @546 DO ~SG("FWAerieHasWings",1)~ GOTO nonwingyes2
IF ~~ THEN REPLY @547 DO ~SG("FWAerieHasWings",1)~ GOTO nonwingyes1
END

IF ~~ THEN BEGIN nonwingyes1
SAY @548
COPY_TRANS FINSOL01 29
END

IF ~~ THEN BEGIN nonwingyes2
SAY @549 = @550
COPY_TRANS FINSOL01 29
END

END


/* FINSOL01 30 */

EXTEND_BOTTOM FINSOL01 30
IF ~IsValidForPartyDialog("Aerie") !Global("AerieRomanceActive","GLOBAL",2) Global("FWDidAerieNonRomWing","GLOBAL",0)~ THEN
   DO ~SetGlobal("FWDidAerieNonRomWing","GLOBAL",1)~ EXTERN AERIE25J nonwing1_30
END

APPEND AERIE25J

IF ~~ THEN BEGIN nonwing1_30
SAY @530
IF ~~ THEN REPLY @531 GOTO nonwingdepart_30
IF ~~ THEN REPLY @532 GOTO nonwing2_30
END

IF ~~ THEN BEGIN nonwingdepart_30
SAY @533
COPY_TRANS FINSOL01 30
END

IF ~~ THEN BEGIN nonwing2_30
SAY @534
IF ~~ THEN GOTO nonwingdecide_30
IF ~OR(2)
Alignment(Player1,MASK_EVIL)
ReputationLT(Player1,10)~ THEN GOTO nonwingevil_30
IF ~OR(3)
Alignment(Player1,LAWFUL_NEUTRAL)
Alignment(Player1,NEUTRAL)
Alignment(Player1,CHAOTIC_NEUTRAL)
ReputationLT(Player1,14)~ THEN GOTO nonwingneutral_30
END

IF ~~ THEN BEGIN nonwingevil_30
SAY @535 = @536
COPY_TRANS FINSOL01 30
END

IF ~~ THEN BEGIN nonwingneutral_30
SAY @537 = @538 = @539 = @540
COPY_TRANS FINSOL01 30
END

IF ~~ THEN BEGIN nonwingdecide_30
SAY @541 = @542 = @543
IF ~~ THEN REPLY @544 DO ~SG("FWAerieHasWings",1)~ GOTO nonwingyes1_30
IF ~~ THEN REPLY @545 GOTO nonwingdepart
IF ~~ THEN REPLY @546 DO ~SG("FWAerieHasWings",1)~ GOTO nonwingyes2_30
IF ~~ THEN REPLY @547 DO ~SG("FWAerieHasWings",1)~ GOTO nonwingyes1_30
END

IF ~~ THEN BEGIN nonwingyes1_30
SAY @548
COPY_TRANS FINSOL01 30
END

IF ~~ THEN BEGIN nonwingyes2_30
SAY @549 = @550
COPY_TRANS FINSOL01 30
END

END



/* FINSOL01 31 */

EXTEND_BOTTOM FINSOL01 31
IF ~IsValidForPartyDialog("Aerie") !Global("AerieRomanceActive","GLOBAL",2) Global("FWDidAerieNonRomWing","GLOBAL",0)~ THEN
   DO ~SetGlobal("FWDidAerieNonRomWing","GLOBAL",1)~ EXTERN AERIE25J nonwing1_31
END

APPEND AERIE25J

IF ~~ THEN BEGIN nonwing1_31
SAY @530
IF ~~ THEN REPLY @531 GOTO nonwingdepart_31
IF ~~ THEN REPLY @532 GOTO nonwing2_31
END

IF ~~ THEN BEGIN nonwingdepart_31
SAY @533
COPY_TRANS FINSOL01 31
END

IF ~~ THEN BEGIN nonwing2_31
SAY @534
IF ~~ THEN GOTO nonwingdecide_31
IF ~OR(2)
Alignment(Player1,MASK_EVIL)
ReputationLT(Player1,10)~ THEN GOTO nonwingevil_31
IF ~OR(3)
Alignment(Player1,LAWFUL_NEUTRAL)
Alignment(Player1,NEUTRAL)
Alignment(Player1,CHAOTIC_NEUTRAL)
ReputationLT(Player1,14)~ THEN GOTO nonwingneutral_31
END

IF ~~ THEN BEGIN nonwingevil_31
SAY @535 = @536
COPY_TRANS FINSOL01 31
END

IF ~~ THEN BEGIN nonwingneutral_31
SAY @537 = @538 = @539 = @540
COPY_TRANS FINSOL01 31
END

IF ~~ THEN BEGIN nonwingdecide_31
SAY @541 = @542 = @543
IF ~~ THEN REPLY @544 DO ~SG("FWAerieHasWings",1)~ GOTO nonwingyes1_31
IF ~~ THEN REPLY @545 GOTO nonwingdepart
IF ~~ THEN REPLY @546 DO ~SG("FWAerieHasWings",1)~ GOTO nonwingyes2_31
IF ~~ THEN REPLY @547 DO ~SG("FWAerieHasWings",1)~ GOTO nonwingyes1_31
END

IF ~~ THEN BEGIN nonwingyes1_31
SAY @548
COPY_TRANS FINSOL01 31
END

IF ~~ THEN BEGIN nonwingyes2_31
SAY @549 = @550
COPY_TRANS FINSOL01 31
END

END

