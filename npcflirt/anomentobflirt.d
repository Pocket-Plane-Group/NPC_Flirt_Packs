
// TOB STUFF STARTS HERE





// Summoning in romance


EXTEND_TOP FATESP 6 #2
  IF ~%New_ToB_Game%
!Dead("Anomen")
!InMyArea("Anomen")
Global("AnomenSummoned","GLOBAL",0)
Gender(Player1,FEMALE)
!Race(Player1,HALFORC)
!Race(Player1,DWARF)
!Race(Player1,GNOME)
!Global("J#KelseyRomanceActive","GLOBAL",2)
!Dead("Saerk")~ THEN
   REPLY @362
    DO ~SetGlobal("AnomenRomanceActive","GLOBAL",2)
SetGlobal("AnomenSummoned","GLOBAL",1)
SG("FWLGAnomenSummonedInRomance",1)
SG("AnomenIsKnight",1)~ GOTO 8

  IF ~%New_ToB_Game%
!Dead("Anomen")
!InMyArea("Anomen")
Global("AnomenSummoned","GLOBAL",0)
Gender(Player1,FEMALE)
!Race(Player1,HALFORC)
!Race(Player1,DWARF)
!Race(Player1,GNOME)
!Global("J#KelseyRomanceActive","GLOBAL",2)~ THEN
   REPLY @363
    DO ~SetGlobal("AnomenRomanceActive","GLOBAL",2)
SetGlobal("AnomenSummoned","GLOBAL",1)
SG("FWCNAnomenSummonedInRomance",1)
SG("AnomenIsNotKnight",1)~ GOTO 8

END




APPEND ANOME25A

IF WEIGHT #-1 ~G("AnomenSummoned",1)
G("FWLGAnomenSummonedInRomance",1)~
THEN BEGIN summ1
SAY @364
= @365
++ @366 DO ~SG("AnomenSummoned",2)~ GOTO summ2
++ @367 DO ~SG("AnomenSummoned",2)~ GOTO summ3
++ @368 DO ~SG("AnomenSummoned",2)~ GOTO summ4
END

IF ~~ summ2
SAY @369
++ @370 GOTO summwait
++ @371 DO ~ReallyForceSpell(Myself,ANOMEN_TITLE) JoinParty()~ EXIT
END

IF ~~ summ3
SAY @372
= @373
++ @370 GOTO summwait
++ @371 DO ~ReallyForceSpell(Myself,ANOMEN_TITLE) JoinParty()~ EXIT
END

IF ~~ summ4
SAY @374
= @375
++ @370 GOTO summwait
++ @376 DO ~ReallyForceSpell(Myself,ANOMEN_TITLE) JoinParty()~ EXIT
END


IF ~~ summwait
SAY @377
IF ~~ DO ~ReallyForceSpell(Myself,ANOMEN_TITLE)
MoveToPointNoInterrupt([1470.1400])
Face(0)~ EXIT
END

IF ~~ summwait2
SAY @377
IF ~~ DO ~ChangeAlignment("Anomen",CHAOTIC_NEUTRAL)
MoveToPointNoInterrupt([1470.1400])
Face(0)~ EXIT
END

IF WEIGHT #-1
~G("AnomenSummoned",1)
G("FWCNAnomenSummonedInRomance",1)~
summ5
SAY @378
= @379
++ @366 DO ~SG("AnomenSummoned",2)~ GOTO summ6
++ @380 DO ~SG("AnomenSummoned",2)~ GOTO summ7
++ @368 DO ~SG("AnomenSummoned",2)~ GOTO summ8
END

IF ~~ summ6
SAY @381
++ @370 GOTO summwait2
++ @371 DO ~ChangeAlignment("Anomen",CHAOTIC_NEUTRAL) JoinParty()~ EXIT
END

IF ~~ summ7
SAY @382
++ @370 GOTO summwait2
++ @371 DO ~ChangeAlignment("Anomen",CHAOTIC_NEUTRAL) JoinParty()~ EXIT
END

IF ~~ summ8
SAY @383
++ @370 GOTO summwait2
++ @371 DO ~ChangeAlignment("Anomen",CHAOTIC_NEUTRAL) JoinParty()~ EXIT
END


IF WEIGHT #-1 ~G("AnomenSummoned",2)
G("AnomenRomanceActive",2)~ summback
SAY @384
++ @385 DO ~JoinParty()~ EXIT
++ @386 DO ~MoveToPointNoInterrupt([1470.1400])
Face(0)~ EXIT
END
END


// TOB Anomen top-level: LG Anomen

APPEND ANOME25J
IF
~Global("FWAnomenStartFlirtTOB","GLOBAL",1)
!Alignment("Anomen",CHAOTIC_NEUTRAL)~
THEN BEGIN anomeninitflirtbase1

SAY @387

IF ~~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO reachhand
 IF ~RandomNum(17,1)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO deepbreath
 IF ~RandomNum(17,2)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO eyebehind
 IF ~RandomNum(17,3) AreaType(DUNGEON)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO dungeon
 IF ~RandomNum(17,3) AreaType(CITY)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO city
 IF ~RandomNum(17,4) AreaType(OUTDOOR) !TimeOfDay(DAY)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO stars
 IF ~RandomNum(17,4) AreaType(DUNGEON)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO stayclose
 IF ~RandomNum(17,5)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO walkalong
 IF ~RandomNum(17,6)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO strongbeautiful
 IF ~RandomNum(17,7)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO fixherstrap2
 IF ~RandomNum(17,8)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO begrudge
 IF ~RandomNum(17,9)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO everyday
 IF ~RandomNum(17,10)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO sailor
 IF ~RandomNum(17,11)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO kissforluck
 IF ~RandomNum(17,12) HPLT(Player1,25)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO lowhp2
 IF ~RandomNum(17,13) GlobalGT("ExpLoveTalk","LOCALS",1)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO lovesex1
 IF ~RandomNum(17,14)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO scarlet
 IF ~RandomNum(17,15)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO palmkisslg
 IF ~RandomNum(17,16) GlobalGT("ExpLoveTalk","LOCALS",4)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO rose
 IF ~RandomNum(17,17) HasItem("RING45",Player1)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO checkring



END


// CN TOB Anomen-init


IF
~Global("FWAnomenStartFlirtTOB","GLOBAL",1)
Alignment("Anomen",CHAOTIC_NEUTRAL)~
THEN BEGIN anomeninitflirtbase2

SAY @388

IF ~~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO reachhand
 IF ~RandomNum(19,1)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO deepbreath
 IF ~RandomNum(19,2)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO eyebehind2
 IF ~RandomNum(19,3) AreaType(DUNGEON)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO dungeon
 IF ~RandomNum(19,3) AreaType(CITY)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO city2
 IF ~RandomNum(19,4) AreaType(OUTDOOR) !TimeOfDay(DAY)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO stars
 IF ~RandomNum(19,4) AreaType(DUNGEON)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO stayclose
 IF ~RandomNum(19,5)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO walkalong
 IF ~RandomNum(19,6)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO strongbeautiful
 IF ~RandomNum(19,7) GlobalGT("ExpLoveTalk","LOCALS",4)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO rose
 IF ~RandomNum(19,8)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO begrudge
 IF ~RandomNum(19,9)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO everyday2
 IF ~RandomNum(19,10)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO sailor
 IF ~RandomNum(19,11)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO kissforluck
 IF ~RandomNum(19,12) HPLT(Player1,25)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO lowhp2
 IF ~RandomNum(19,13)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO lovesex1
 IF ~RandomNum(19,14)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO scoop
 IF ~RandomNum(19,15)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO palmkisscn
 IF ~RandomNum(19,16) GlobalGT("ExpLoveTalk","LOCALS",4)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO rose
 IF ~RandomNum(19,17)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO gropeslap
 IF ~RandomNum(19,18) CheckStatLT(Player1,18,STR)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO pinarms
 IF ~RandomNum(19,19) HasItem("RING45",Player1)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO checkring

 IF ~GlobalGT("ExpLoveTalk","LOCALS",14) Global("FWDidCNAnoEpSetter","GLOBAL",0)~ THEN DO ~SG("FWDidCNAnoEpSetter",1) IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO epsetter

END

IF ~~ epsetter
SAY @515 = @516 = @517
++ @518 + epsetter2
++ @519 + epsetter3
+ ~!Class(Player1,PALADIN)
!Class(Player1,MONK)
!Class(Player1,CLERIC)
!Class(Player1,FIGHTER_CLERIC)
!Class(Player1,CLERIC_MAGE)
!Class(Player1,CLERIC_THIEF)
!Class(Player1,FIGHTER_MAGE_CLERIC)
!Class(Player1,CLERIC_RANGER)~ + @520 + epsetter4
+ ~OR(8)
Class(Player1,PALADIN)
Class(Player1,MONK)
Class(Player1,CLERIC)
Class(Player1,FIGHTER_CLERIC)
Class(Player1,CLERIC_MAGE)
Class(Player1,CLERIC_THIEF)
Class(Player1,FIGHTER_MAGE_CLERIC)
Class(Player1,CLERIC_RANGER)~ + @521 + epsetter5
++ @522 + epsetterrelax
END

IF ~~ epsetterrelax
SAY @523
IF ~~ EXIT
END

IF ~~ epsetter2
SAY @524
IF ~~ GOTO epsetter2a
END

IF ~~ epsetter2a
SAY @525
IF ~~ DO ~SG("FWAnomenBadCNEp",1)~ EXIT
END

IF ~~ epsetter3
SAY @526
IF ~~ GOTO epsetter2a
END

IF ~~ epsetter4
SAY @527
IF ~~ GOTO epsetter6
END

IF ~~ epsetter5
SAY @528
IF ~~ GOTO epsetter6
END

IF ~~ epsetter6
SAY @529
++ @530 + epsetter7
++ @531 + epsetter8
++ @532 + epsetter2a
END

IF ~~ epsetter7
SAY @533 = @534
IF ~~ DO ~SG("FWAnomenBadCNEp",1)~ EXIT
END

IF ~~ epsetter8
SAY @535 = @536
IF ~~ EXIT
END

IF ~~ checkring
SAY @514
IF ~~ EXIT
END

IF ~~ gropeslap
SAY @3
IF ~~ EXIT
END

IF ~~ pinarms
SAY @4
IF ~~ EXIT
END

IF ~~ lowhp2
SAY @389
= @390
IF ~~ THEN DO ~ReallyForceSpell(PLAYER1,CLERIC_CURE_MEDIUM_WOUNDS)~ EXIT
END

IF ~~ scarlet
SAY @391
IF ~~ EXIT
END


IF ~~ palmkisslg
  SAY @392
  = @393
  = @394
  IF ~~ THEN EXIT
END


IF ~~ THEN palmkisscn
  SAY @395
  = @396
  = @397
  IF ~~ THEN EXIT
END

IF ~~ THEN rose
  SAY @398
  = @399
  = @400
  = @401
  IF ~~ THEN EXIT
END


IF ~~ scoop
SAY @402
IF ~~ THEN REPLY @403 GOTO letgo
IF ~~ THEN REPLY @404 GOTO dip
IF ~~ THEN REPLY @405 GOTO dip
END

IF ~~ THEN BEGIN letgo
  SAY @406
= @407
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN dip
  SAY @408
= @409
= @410
= @411
IF ~~ THEN EXIT
END



// LG TOB PC inits

IF
~IsGabber(Player1)
GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
CombatCounter(0)
Global("AnomenRomanceActive","GLOBAL",2)
!Alignment("Anomen",CHAOTIC_NEUTRAL)~
THEN BEGIN anomenflirtbase2
SAY @412


+ ~RandomNum(4,1)~ + @75 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + takehand1
+ ~RandomNum(4,2)~ + @75 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + takehand1
+ ~RandomNum(4,3)~ + @75 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + takehand2
+ ~RandomNum(4,4)~ + @75 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + takehand3

+ ~RandomNum(4,1)~ + @166 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + touchface1
+ ~RandomNum(4,2)~ + @166 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + touchface1
+ ~RandomNum(4,3)~ + @166 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + touchface2
+ ~RandomNum(4,4)~ + @166 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + touchface2

+ ~RandomNum(4,1)~ + @77 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + profile1
+ ~RandomNum(4,2)~ + @77 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + profile2
+ ~RandomNum(4,3)~ + @77 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + profile3
+ ~RandomNum(4,4)~ + @77 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + profile3

+ ~RandomNum(4,1)~ + @78 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shoulders5
+ ~RandomNum(4,2)~ + @78 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shoulders2
+ ~RandomNum(4,3)~ + @78 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shoulders3
+ ~RandomNum(4,4)~ + @78 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shoulders6

+ ~RandomNum(4,1)~ + @86 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + gladmet1
+ ~RandomNum(4,2)~ + @86 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + gladmet1
+ ~RandomNum(4,3)~ + @86 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + gladmet2
+ ~RandomNum(4,4)~ + @86 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + gladmet3

+ ~RandomNum(4,1)~ + @79 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + fliphair4
+ ~RandomNum(4,2)~ + @79 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + fliphair2
+ ~RandomNum(4,3)~ + @79 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + fliphair2
+ ~RandomNum(4,4)~ + @79 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + fliphair5

+ ~RandomNum(4,1)~ + @80 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + curlhair5
+ ~RandomNum(4,2)~ + @80 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + curlhair6
+ ~RandomNum(4,3)~ + @80 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + curlhair3
+ ~RandomNum(4,4)~ + @80 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + curlhair4

+ ~RandomNum(4,1)~ + @81 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + playbeard2
+ ~RandomNum(4,2)~ + @81 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + playbeard2
+ ~RandomNum(4,3)~ + @81 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + playbeard3
+ ~RandomNum(4,4)~ + @81 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + playbeard4

+ ~RandomNum(4,1)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss3
+ ~RandomNum(4,2)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss4
+ ~RandomNum(4,3)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss5
+ ~RandomNum(4,4)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss6

+ ~RandomNum(4,1)~ + @168 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + passion5
+ ~RandomNum(4,2)~ + @168 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + passion2
+ ~RandomNum(4,3)~ + @168 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + passion3
+ ~RandomNum(4,4)~ + @168 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + passion4

+ ~RandomNum(4,1)~ + @169 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + standing1
+ ~RandomNum(4,2)~ + @169 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + standing2
+ ~RandomNum(4,3)~ + @169 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + standing3
+ ~RandomNum(4,4)~ + @169 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + standing4

+ ~ReputationGT(Player1,14) RandomNum(4,1)~ + @170 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + honest1
+ ~ReputationGT(Player1,14) RandomNum(4,2)~ + @170 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + honest1
+ ~ReputationGT(Player1,14) RandomNum(4,3)~ + @170 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + honest2
+ ~ReputationGT(Player1,14) RandomNum(4,4)~ + @170 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + honest2

+ ~RandomNum(4,1)~ + @84 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + hug5
+ ~RandomNum(4,2)~ + @84 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + hug5
+ ~RandomNum(4,3)~ + @84 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + hug4
+ ~RandomNum(4,4)~ + @84 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + hug4

+ ~!Alignment(Player1,MASK_EVIL) ReputationLT(Player1,15) ReputationGT(Player1,7) RandomNum(4,1)~ + @170 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + honest3
+ ~!Alignment(Player1,MASK_EVIL) ReputationLT(Player1,15) ReputationGT(Player1,7) RandomNum(4,2)~ + @170 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + honest3
+ ~!Alignment(Player1,MASK_EVIL) ReputationLT(Player1,15) ReputationGT(Player1,7) RandomNum(4,3)~ + @170 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + honest4
+ ~!Alignment(Player1,MASK_EVIL) ReputationLT(Player1,15) ReputationGT(Player1,7) RandomNum(4,4)~ + @170 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + honest4

+ ~Alignment(Player1,MASK_EVIL) ReputationLT(Player1,15) ReputationGT(Player1,7) RandomNum(4,1)~ + @170 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + honest5
+ ~Alignment(Player1,MASK_EVIL) ReputationLT(Player1,15) ReputationGT(Player1,7) RandomNum(4,2)~ + @170 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + honest5
+ ~Alignment(Player1,MASK_EVIL) ReputationLT(Player1,15) ReputationGT(Player1,7) RandomNum(4,3)~ + @170 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + honest6
+ ~Alignment(Player1,MASK_EVIL) ReputationLT(Player1,15) ReputationGT(Player1,7) RandomNum(4,4)~ + @170 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + honest6

+ ~ReputationLT(Player1,8) RandomNum(4,1)~ + @170 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + honest5
+ ~ReputationLT(Player1,8) RandomNum(4,2)~ + @170 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + honest5
+ ~ReputationLT(Player1,8) RandomNum(4,3)~ + @170 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + honest6
+ ~ReputationLT(Player1,8) RandomNum(4,4)~ + @170 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + honest6

+ ~RandomNum(4,1)~ + @172 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + spank1
+ ~RandomNum(4,2)~ + @172 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + spank2
+ ~RandomNum(4,3)~ + @172 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + spank2
+ ~RandomNum(4,4)~ + @172 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + spank1

+ ~RandomNum(4,1)~ + @173 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + bicep1
+ ~RandomNum(4,2)~ + @173 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + bicep1
+ ~RandomNum(4,3)~ + @173 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + bicep2
+ ~RandomNum(4,4)~ + @173 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + bicep3

+ ~RandomNum(4,1)~ + @413 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + built1
+ ~RandomNum(4,2)~ + @413 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + built1
+ ~RandomNum(4,3)~ + @413 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + built2
+ ~RandomNum(4,4)~ + @413 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + built2

+ ~RandomNum(4,1)~ + @174 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + love1
+ ~RandomNum(4,2)~ + @174 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + love2
+ ~RandomNum(4,3)~ + @174 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + love2
+ ~RandomNum(4,4)~ + @174 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + love3

+ ~RandomNum(4,1)~ + @175 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + codpiece1
+ ~RandomNum(4,2)~ + @175 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + codpiece2
+ ~RandomNum(4,3)~ + @175 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + codpiece3
+ ~RandomNum(4,4)~ + @175 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + codpiece3

+ ~RandomNum(4,1)~ + @176 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + thigh1
+ ~RandomNum(4,2)~ + @176 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + thigh1
+ ~RandomNum(4,3)~ + @176 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + thigh2
+ ~RandomNum(4,4)~ + @176 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + thigh2

+ ~RandomNum(4,1)~ + @414 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + flash1
+ ~RandomNum(4,2)~ + @414 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + flash2
+ ~RandomNum(4,3)~ + @414 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + flash3
+ ~RandomNum(4,4)~ + @414 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + flash3

+ ~RandomNum(4,1)~ + @177 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + back1
+ ~RandomNum(4,2)~ + @177 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + back2
+ ~RandomNum(4,3)~ + @177 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + back3
+ ~RandomNum(4,4)~ + @177 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + back2

+ ~RandomNum(4,1)~ + @178 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + giggle1
+ ~RandomNum(4,2)~ + @178 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + giggle2
+ ~RandomNum(4,3)~ + @178 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + giggle2
+ ~RandomNum(4,4)~ + @178 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + giggle3

+ ~RandomNum(4,1)~ + @415 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + tackle1
+ ~RandomNum(4,2)~ + @415 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + tackle1
+ ~RandomNum(4,3)~ + @415 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + tackle2
+ ~RandomNum(4,4)~ + @415 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + tackle2

+ ~RandomNum(4,1)~ + @416 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + jumpback1
+ ~RandomNum(4,2)~ + @416 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + jumpback1
+ ~RandomNum(4,3)~ + @416 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + jumpback2
+ ~RandomNum(4,4)~ + @416 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + jumpback2


+ ~Global("FWAnomenNookie","GLOBAL",1) Global("FWDidWenchHelmite","LOCALS",0)~ + @179 DO ~SetGlobal("FWDidWenchHelmite","LOCALS",1) IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + wench1

+ ~Global("FWAnomenNookie","GLOBAL",1) Global("FWDidWenchHelmite","LOCALS",1) RandomNum(4,1)~ + @179 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + wench2
+ ~Global("FWAnomenNookie","GLOBAL",1) Global("FWDidWenchHelmite","LOCALS",1) RandomNum(4,2)~ + @179 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + wench3
+ ~Global("FWAnomenNookie","GLOBAL",1) Global("FWDidWenchHelmite","LOCALS",1) RandomNum(4,3)~ + @179 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + wench2
+ ~Global("FWAnomenNookie","GLOBAL",1) Global("FWDidWenchHelmite","LOCALS",1) RandomNum(4,4)~ + @179 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + wench3

+ ~Global("FWAnomenNookie","GLOBAL",0)~ + @180 DO ~SG("FWAnomenNookie",1) IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + letsdoit

+ ~RandomNum(4,1)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + innbath1

+ ~RandomNum(4,2)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + innbath5

+ ~RandomNum(4,3)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + innbath3

+ ~RandomNum(4,4)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + innbath4

+ ~RandomNum(4,1)
AreaCheck("AR6400")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + outdoorbath1

+ ~RandomNum(4,2)
AreaCheck("AR6400")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + outdoorbath4

+ ~RandomNum(4,3)
AreaCheck("AR6400")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + outdoorbath2

+ ~RandomNum(4,4)
AreaCheck("AR6400")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + outdoorbath3

+ ~!CheckStatGT(Player1,18,STR) RandomNum(4,1)~ + @417 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shovechest1
+ ~!CheckStatGT(Player1,18,STR) RandomNum(4,2)~ + @417 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shovechest2
+ ~!CheckStatGT(Player1,18,STR) RandomNum(4,3)~ + @417 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shovechest2
+ ~!CheckStatGT(Player1,18,STR) RandomNum(4,4)~ + @417 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shovechest3
+ ~CheckStatGT(Player1,18,STR)~ + @417 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shovechestow

+ ~GlobalGT("ExpLoveTalk","LOCALS",14) RandomNum(4,1)~ + @510 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + marry1
+ ~GlobalGT("ExpLoveTalk","LOCALS",14) RandomNum(4,2)~ + @510 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + marry1
+ ~GlobalGT("ExpLoveTalk","LOCALS",14) RandomNum(4,3)~ + @510 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + marry2
+ ~GlobalGT("ExpLoveTalk","LOCALS",14) RandomNum(4,4)~ + @510 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + marry3

+ ~GlobalGT("Lovetalk","LOCALS",10) Global("FWDisableFlirtsNPC","GLOBAL",0)~ + @2001 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",1)~ + flirting

+ ~Global("FWDisableFlirtsNPC","GLOBAL",1)~ + @2002 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",0)~ + flirting


++ @87 EXIT

END

IF ~~ THEN flirting
SAY @2003
IF ~~ THEN EXIT
END


// CN TOB PC-inits



IF
~IsGabber(Player1)
GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
CombatCounter(0)
Global("AnomenRomanceActive","GLOBAL",2)
Alignment("Anomen",CHAOTIC_NEUTRAL)~
THEN BEGIN anomenflirtbase3
SAY @418

+ ~RandomNum(4,1)~ + @75 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + takehand1
+ ~RandomNum(4,2)~ + @75 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + takehand1
+ ~RandomNum(4,3)~ + @75 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + takehand2
+ ~RandomNum(4,4)~ + @75 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + takehand3

+ ~RandomNum(4,1)~ + @166 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + touchface1
+ ~RandomNum(4,2)~ + @166 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + touchface1
+ ~RandomNum(4,3)~ + @166 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + touchface2
+ ~RandomNum(4,4)~ + @166 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + touchface2

+ ~RandomNum(4,1)~ + @77 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + profile1
+ ~RandomNum(4,2)~ + @77 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + profile2
+ ~RandomNum(4,3)~ + @77 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + profile3
+ ~RandomNum(4,4)~ + @77 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + profile3

+ ~RandomNum(4,1)~ + @78 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shoulders5
+ ~RandomNum(4,2)~ + @78 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shoulders2
+ ~RandomNum(4,3)~ + @78 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shoulders4
+ ~RandomNum(4,4)~ + @78 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shoulders4

+ ~RandomNum(4,1)~ + @86 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + gladmet1
+ ~RandomNum(4,2)~ + @86 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + gladmet1
+ ~RandomNum(4,3)~ + @86 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + gladmet4
+ ~RandomNum(4,4)~ + @86 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + gladmet3

+ ~RandomNum(4,1)~ + @79 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + fliphair6
+ ~RandomNum(4,2)~ + @79 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + fliphair2
+ ~RandomNum(4,3)~ + @79 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + fliphair2
+ ~RandomNum(4,4)~ + @79 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + fliphair5

+ ~RandomNum(4,1)~ + @80 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + curlhair5
+ ~RandomNum(4,2)~ + @80 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + curlhair6
+ ~RandomNum(4,3)~ + @80 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + curlhair3
+ ~RandomNum(4,4)~ + @80 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + curlhair4

+ ~RandomNum(4,1)~ + @81 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + playbeard5tob
+ ~RandomNum(4,2)~ + @81 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + playbeard2
+ ~RandomNum(4,3)~ + @81 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + playbeard3
+ ~RandomNum(4,4)~ + @81 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + playbeard4

+ ~RandomNum(4,1)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss3
+ ~RandomNum(4,2)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss4
+ ~RandomNum(4,3)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss7
+ ~RandomNum(4,4)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss6

+ ~RandomNum(4,1)~ + @168 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + passion5
+ ~RandomNum(4,2)~ + @168 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + passion2
+ ~RandomNum(4,3)~ + @168 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + passion3
+ ~RandomNum(4,4)~ + @168 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + passion4

+ ~RandomNum(4,1)~ + @169 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + standing1
+ ~RandomNum(4,2)~ + @169 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + standing2
+ ~RandomNum(4,3)~ + @169 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + standing3
+ ~RandomNum(4,4)~ + @169 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + standing4

+ ~RandomNum(4,1)~ + @170 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + honest7
+ ~RandomNum(4,2)~ + @170 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + honest7
+ ~RandomNum(4,3)~ + @170 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + honest8
+ ~RandomNum(4,4)~ + @170 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + honest8

+ ~RandomNum(4,1)~ + @84 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + hug5
+ ~RandomNum(4,2)~ + @84 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + hug5
+ ~RandomNum(4,3)~ + @84 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + hug6
+ ~RandomNum(4,4)~ + @84 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + hug6

+ ~RandomNum(4,1)~ + @172 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + spank2
+ ~RandomNum(4,2)~ + @172 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + spank2
+ ~RandomNum(4,3)~ + @172 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + spank3
+ ~RandomNum(4,4)~ + @172 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + spank4

+ ~RandomNum(4,1)~ + @173 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + bicep1
+ ~RandomNum(4,2)~ + @173 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + bicep1
+ ~RandomNum(4,3)~ + @173 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + bicep2
+ ~RandomNum(4,4)~ + @173 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + bicep3

+ ~RandomNum(4,1)~ + @413 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + built1
+ ~RandomNum(4,2)~ + @413 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + built1
+ ~RandomNum(4,3)~ + @413 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + built2
+ ~RandomNum(4,4)~ + @413 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + built2

+ ~RandomNum(4,1)~ + @174 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + love1
+ ~RandomNum(4,2)~ + @174 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + love2
+ ~RandomNum(4,3)~ + @174 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + love2
+ ~RandomNum(4,4)~ + @174 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + love3

+ ~RandomNum(4,1)~ + @175 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + codpiece1
+ ~RandomNum(4,2)~ + @175 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + codpiece2
+ ~RandomNum(4,3)~ + @175 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + codpiece3
+ ~RandomNum(4,4)~ + @175 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + codpiece4

+ ~RandomNum(4,1)~ + @176 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + thigh1
+ ~RandomNum(4,2)~ + @176 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + thigh1
+ ~RandomNum(4,3)~ + @176 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + thigh2
+ ~RandomNum(4,4)~ + @176 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + thigh2

+ ~RandomNum(4,1)~ + @414 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + flash2
+ ~RandomNum(4,2)~ + @414 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + flash2
+ ~RandomNum(4,3)~ + @414 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + flash3
+ ~RandomNum(4,4)~ + @414 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + flash3

+ ~RandomNum(4,1)~ + @177 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + back1
+ ~RandomNum(4,2)~ + @177 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + back2
+ ~RandomNum(4,3)~ + @177 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + back3
+ ~RandomNum(4,4)~ + @177 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + back2

+ ~RandomNum(4,1)~ + @178 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + giggle1
+ ~RandomNum(4,2)~ + @178 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + giggle4
+ ~RandomNum(4,3)~ + @178 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + giggle4
+ ~RandomNum(4,4)~ + @178 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + giggle3

+ ~RandomNum(4,1)~ + @415 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + tackle1
+ ~RandomNum(4,2)~ + @415 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + tackle1
+ ~RandomNum(4,3)~ + @415 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + tackle2
+ ~RandomNum(4,4)~ + @415 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + tackle3

+ ~RandomNum(4,1)~ + @416 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + jumpback1
+ ~RandomNum(4,2)~ + @416 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + jumpback1
+ ~RandomNum(4,3)~ + @416 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + jumpback2
+ ~RandomNum(4,4)~ + @416 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + jumpback2

+ ~Global("FWAnomenNookie","GLOBAL",1) Global("FWDidWenchHelmite","LOCALS",0)~ + @179 DO ~SetGlobal("FWDidWenchHelmite","LOCALS",1) IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + wench4

+ ~Global("FWAnomenNookie","GLOBAL",1) Global("FWDidWenchHelmite","LOCALS",1) RandomNum(4,1)~ + @179 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + wench5
+ ~Global("FWAnomenNookie","GLOBAL",1) Global("FWDidWenchHelmite","LOCALS",1) RandomNum(4,2)~ + @179 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + wench3
+ ~Global("FWAnomenNookie","GLOBAL",1) Global("FWDidWenchHelmite","LOCALS",1) RandomNum(4,3)~ + @179 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + wench5
+ ~Global("FWAnomenNookie","GLOBAL",1) Global("FWDidWenchHelmite","LOCALS",1) RandomNum(4,4)~ + @179 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + wench3

+ ~RandomNum(4,1)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + innbath1cn

+ ~RandomNum(4,2)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + innbath5

+ ~RandomNum(4,3)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + innbath3

+ ~RandomNum(4,4)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + innbath4

+ ~RandomNum(4,1)
AreaCheck("AR6400")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + outdoorbath1

+ ~RandomNum(4,2)
AreaCheck("AR6400")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + outdoorbath4

+ ~RandomNum(4,3)
AreaCheck("AR6400")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + outdoorbath2

+ ~RandomNum(4,4)
AreaCheck("AR6400")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + outdoorbath3

+ ~!CheckStatGT(Player1,18,STR) RandomNum(4,1)~ + @417 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shovechest1
+ ~!CheckStatGT(Player1,18,STR) RandomNum(4,2)~ + @417 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shovechest2
+ ~!CheckStatGT(Player1,18,STR) RandomNum(4,3)~ + @417 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shovechest2
+ ~!CheckStatGT(Player1,18,STR) RandomNum(4,4)~ + @417 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shovechest3
+ ~CheckStatGT(Player1,18,STR)~ + @417 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shovechestow

+ ~GlobalGT("ExpLoveTalk","LOCALS",14) RandomNum(4,1)~ + @510 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + marry1
+ ~GlobalGT("ExpLoveTalk","LOCALS",14) RandomNum(4,2)~ + @510 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + marry1
+ ~GlobalGT("ExpLoveTalk","LOCALS",14) RandomNum(4,3)~ + @510 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + marry2
+ ~GlobalGT("ExpLoveTalk","LOCALS",14) RandomNum(4,4)~ + @510 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + marry3

+ ~GlobalGT("Lovetalk","LOCALS",10) Global("FWDisableFlirtsNPC","GLOBAL",0)~ + @2001 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",1)~ + flirting

+ ~Global("FWDisableFlirtsNPC","GLOBAL",1)~ + @2002 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",0)~ + flirting


++ @87 EXIT

END


IF ~~ marry1
SAY @511
IF ~~ EXIT
END

IF ~~ marry2
SAY @512
IF ~~ EXIT
END

IF ~~ marry3
SAY @513
IF ~~ EXIT
END


IF ~~ playbeard5tob
SAY @130
= @131
IF ~~ EXIT
END


IF ~~ shovechest1
SAY @419
IF ~~ EXIT
END

IF ~~ shovechest2
SAY @420
IF ~~ EXIT
END

IF ~~ shovechestow
SAY @421
IF ~~ EXIT
END

IF ~~ shovechest3
SAY @422
IF ~~ EXIT
END


IF ~~ shoulders7
SAY @423
= @424
IF ~~ EXIT
END

IF ~~ shoulders8
SAY @425
= @426
= @427
IF ~~ EXIT
END

IF ~~ flash1
SAY @428
IF ~~ EXIT
END

IF ~~ flash2
SAY @429
IF ~~ EXIT
END

IF ~~ flash3
SAY @430
IF ~~ EXIT
END


IF ~~ innbath5
SAY @431
= @432
= @433
= @434
IF ~~ EXIT
END

IF ~~ outdoorbath4
SAY @435
= @436
= @437
= @438
= @439
IF ~~ EXIT
END

IF ~~ passion5
SAY @440
IF ~~ EXIT
END




IF ~~ bicep3
SAY @441
IF ~~ EXIT
END


IF ~~ built1
SAY @442
= @443
IF ~~ EXIT
END

IF ~~ built2
SAY @444
IF ~~ EXIT
END

IF ~~ tackle1
SAY @445
IF ~~ EXIT
END

IF ~~ tackle2
SAY @446
= @447
IF ~~ EXIT
END

IF ~~ tackle3
SAY @448
= @449
IF ~~ EXIT
END


IF ~~ jumpback1
SAY @450
= @451
= @452
IF ~~ EXIT
END

IF ~~ jumpback2
SAY @453
IF ~~ EXIT
END


IF ~~ forcehug
SAY @5
IF ~~ EXIT
END

IF ~~ everyday2
SAY @6
IF ~~ EXIT
END


IF ~~ walkalong
SAY @7
IF ~~ EXIT
END

IF ~~ freedom
SAY @8
= @9
IF ~~ EXIT
END

IF ~~ coinpurse
SAY @10
IF ~~ EXIT
END

IF ~~ begrudge
SAY @11
= @12
= @13
IF ~~ EXIT
END


IF ~~ ladysgown
SAY @14
= @15
= @16
IF ~~ EXIT
END


IF ~~ deepbreath
SAY @17
IF ~~ EXIT
END


IF ~~ eyebehind
SAY @18
IF ~~ EXIT
END


IF ~~ eyebehind2
SAY @19
IF ~~ EXIT
END

IF ~~ bearhug
SAY @20
= @21
IF ~~ EXIT
END


IF ~~ dungeon
SAY @22
IF ~~ EXIT
END

IF ~~ city
SAY @23
IF ~~ EXIT
END

IF ~~ blocklight
SAY @24
++ @25 + blocksun1
++ @26 + blocksun2
++ @27 + blocksun3
END

IF ~~ blocksun1
SAY @28
IF ~~ EXIT
END

IF ~~ blocksun2
SAY @29
IF ~~ EXIT
END

IF ~~ blocksun3
SAY @30
IF ~~ EXIT
END

IF ~~ fixherstrap2
SAY @31
= @33
IF ~~ EXIT
END

IF ~~ elbow
SAY @34
IF ~~ EXIT
END


IF ~~ whatwouldudo
SAY @35
IF ~~ EXIT
END

IF ~~ stars
SAY @36
= @37
IF ~~ EXIT
END

IF ~~ everyday
SAY @38
IF ~~ EXIT
END

IF ~~ services
SAY @39
IF ~~ EXIT
END

IF ~~ reachhand
SAY @40
IF ~~ EXIT
END

IF ~~ strongbeautiful
SAY @41
IF ~~ EXIT
END

IF ~~ sailor
SAY @42
IF ~~ EXIT
END

IF ~~ stayclose
SAY @43
IF ~~ EXIT
END

IF ~~ attireflirt
SAY @44
++ @45 + attireflirt1
++ @46 + attireflirt2
++ @47 + attireflirt3
END

IF ~~ attireflirt1
SAY @48
IF ~~ THEN GOTO attireflirt2_2
END

IF ~~ attireflirt2
SAY @49
IF ~~ THEN GOTO attireflirt2_2
END

IF ~~ attireflirt2_2
SAY @50
IF ~~ EXIT
END

IF ~~ attireflirt3
SAY @51
IF ~~ EXIT
END

IF ~~ gifttalk1
SAY @52
= @53
= @500
IF ~~ EXIT
END

IF ~~ whoami
SAY @54
= @55
IF ~~ EXIT
END

IF ~~ smotherkiss
SAY @56
IF ~~ EXIT
END


IF ~~ kissforluck
SAY @57
= @58
= @59
= @60
IF ~~ EXIT
END

IF ~~ gifttalk2
SAY @61
= @62
= @63
= @64
= @65
IF ~~ EXIT
END

IF ~~ lowhp1
SAY @66
IF ~~ THEN DO ~ReallyForceSpell(PLAYER1,CLERIC_CURE_MEDIUM_WOUNDS)~ EXIT
END

IF ~~ lovesex1
SAY @67
IF ~~ EXIT
END

IF ~~ city2
SAY @68
= @69
IF ~~ EXIT
END


IF ~~ warmsmile1
SAY @88
IF ~~ EXIT
END

IF ~~ warmsmile2
SAY @89
IF ~~ EXIT
END

IF ~~ warmsmile3
SAY @90
IF ~~ EXIT
END

IF ~~ takehand1
SAY @91
IF ~~ EXIT
END

IF ~~ takehand2
SAY @92
IF ~~ EXIT
END

IF ~~ takehand3
SAY @93
IF ~~ EXIT
END

IF ~~ touchface1
SAY @94
IF ~~ EXIT
END

IF ~~ touchface2
SAY @95
IF ~~ EXIT
END

IF ~~ battle1
SAY @96
IF ~~ EXIT
END

IF ~~ battle2
SAY @97
IF ~~ EXIT
END

IF ~~ battle3
SAY @98
IF ~~ EXIT
END

IF ~~ battle4
SAY @99
IF ~~ EXIT
END

IF ~~ battle5
SAY @100
IF ~~ EXIT
END


IF ~~ handfight1
SAY @101 = @102
IF ~~ EXIT
END

IF ~~ handfight2
SAY @103
IF ~~ EXIT
END

IF ~~ handfight3
SAY @104
= @105
IF ~~ EXIT
END

IF ~~ handfight4
SAY @106
IF ~~ EXIT
END


IF ~~ profile1
SAY @107
IF ~~ EXIT
END

IF ~~ profile2
SAY @108
IF ~~ EXIT
END

IF ~~ profile3
SAY @109
IF ~~ EXIT
END



IF ~~ shoulders1
SAY @110
= @111
IF ~~ EXIT
END

IF ~~ shoulders2
SAY @112
IF ~~ EXIT
END

IF ~~ fliphair1
SAY @113
IF ~~ EXIT
END

IF ~~ fliphair2
SAY @114
IF ~~ EXIT
END

IF ~~ fliphair3
SAY @115 = @116
IF ~~ EXIT
END


IF ~~ curlhair1
SAY @117
IF ~~ EXIT
END

IF ~~ curlhair2
SAY @118
IF ~~ EXIT
END

IF ~~ curlhair3
SAY @119
IF ~~ EXIT
END

IF ~~ curlhair4
SAY @120
IF ~~ EXIT
END

IF ~~ curlhair5
SAY @121
IF ~~ EXIT
END

IF ~~ curlhair6
SAY @122
IF ~~ EXIT
END

IF ~~ shoulders5
SAY @123
IF ~~ EXIT
END


IF ~~ playbeard1
SAY @124
IF ~~ EXIT
END

IF ~~ playbeard2
SAY @125
IF ~~ EXIT
END

IF ~~ playbeard3
SAY @126 
= @127
IF ~~ EXIT
END

IF ~~ playbeard4
SAY @128
= @129
IF ~~ EXIT
END

IF ~~ deadsaerk
SAY @132
IF ~~ EXIT
END

IF ~~ believe1
SAY @133
IF ~~ EXIT
END

IF ~~ believe2
SAY @134
IF ~~ EXIT
END

IF ~~ kiss1
SAY @135
IF ~~ EXIT
END

IF ~~ kiss2
SAY @136
IF ~~ EXIT
END

IF ~~ kiss3
SAY @137
IF ~~ EXIT
END

IF ~~ kiss4
SAY @138
= @139
IF ~~ EXIT
END

IF ~~ kiss5
SAY @140
IF ~~ EXIT
END

IF ~~ kiss6
SAY @141
IF ~~ EXIT
END

IF ~~ kiss7
SAY @142
IF ~~ EXIT
END

IF ~~ shoulders3
SAY @143
= @144
IF ~~ EXIT
END

IF ~~ shoulders6
SAY @145
+ + @146 + shoulders6_1
+ + @147 + shoulders7
END

IF ~~ shoulders6_1
SAY @148
IF ~~ EXIT
END

IF ~~ shoulders4
SAY @145
+ + @146 + shoulders4_1
+ + @147 + shoulders8
END

IF ~~ shoulders4_1
SAY @149
IF ~~ EXIT
END

IF ~~ shoulders4_2
SAY @150
IF ~~ EXIT
END





IF ~~ hug1
SAY @151
IF ~~ EXIT
END

IF ~~ hug2
SAY @152
IF ~~ EXIT
END

IF ~~ hug3
SAY @153
IF ~~ EXIT
END

IF ~~ hug4
SAY @154
IF ~~ EXIT
END


IF ~~ hug5
SAY @155
IF ~~ EXIT
END

IF ~~ hug6
SAY @156
IF ~~ EXIT
END


IF ~~ gladmet1
SAY @157
IF ~~ EXIT
END

IF ~~ gladmet2
SAY @158
IF ~~ EXIT
END

IF ~~ gladmet3
SAY @159
IF ~~ EXIT
END

IF ~~ gladmet4
SAY @160
IF ~~ EXIT
END


IF ~~ newreligion1
SAY @161 = @162
IF ~~ EXIT
END

IF ~~ newreligion2
SAY @163
IF ~~ EXIT
END

IF ~~ newreligion3
SAY @164
IF ~~ EXIT
END


IF ~~ fliphair4
SAY @113
= @208
IF ~~ EXIT
END

IF ~~ fliphair5
SAY @209
IF ~~ EXIT
END

IF ~~ fliphair6
SAY @113
= @210
IF ~~ EXIT
END


IF ~~ standing1
SAY @211
IF ~~ EXIT
END

IF ~~ standing2
SAY @212
= @213
IF ~~ EXIT
END

IF ~~ standing3
SAY @214
= @215
IF ~~ EXIT
END

IF ~~ standing4
SAY @216
= @217
IF ~~ EXIT
END

IF ~~ honest1
SAY @218
IF ~~ EXIT
END

IF ~~ honest2
SAY @219
= @220
IF ~~ EXIT
END

IF ~~ honest3
SAY @221
IF ~~ EXIT
END

IF ~~ honest4
SAY @222
IF ~~ EXIT
END

IF ~~ honest5
SAY @223 = @224
IF ~~ EXIT
END

IF ~~ honest6
SAY @225
IF ~~ EXIT
END

IF ~~ honest7
SAY @226
IF ~~ EXIT
END

IF ~~ honest8
SAY @227
IF ~~ EXIT
END


IF ~~ spank1
SAY @228
IF ~~ EXIT
END

IF ~~ spank2
SAY @229
IF ~~ EXIT
END

IF ~~ spank3
SAY @230 = @231
IF ~~ EXIT
END

IF ~~ spank4
SAY @232
IF ~~ EXIT
END


IF ~~ bicep1
SAY @233
IF ~~ EXIT
END

IF ~~ bicep2
SAY @234
IF ~~ EXIT
END

IF ~~ love1
SAY @235
IF ~~ EXIT
END

IF ~~ love2
SAY @236
IF ~~ EXIT
END

IF ~~ love3
SAY @237
IF ~~ EXIT
END


IF ~~ codpiece1
SAY @238
IF ~~ EXIT
END

IF ~~ codpiece2
SAY @239
= @240
IF ~~ EXIT
END

IF ~~ codpiece3
SAY @241
IF ~~ EXIT
END

IF ~~ codpiece4
SAY @505 = @506
IF ~~ EXIT
END


IF ~~ thigh1
SAY @242
IF ~~ EXIT
END

IF ~~ thigh2
SAY @243
IF ~~ EXIT
END


IF ~~ back1
SAY @244 = @245
IF ~~ EXIT
END

IF ~~ back2
SAY @246
IF ~~ EXIT
END

IF ~~ back3
SAY @247
IF ~~ EXIT
END

IF ~~ giggle1
SAY @248
IF ~~ EXIT
END

IF ~~ giggle2
SAY @249
IF ~~ EXIT
END

IF ~~ giggle3
SAY @250
= @251
IF ~~ EXIT
END

IF ~~ giggle4
SAY @252
IF ~~ EXIT
END


IF ~~ wench1
SAY @253
IF ~~ EXIT
END

IF ~~ wench2
SAY @254
IF ~~ EXIT
END

IF ~~ wench3
SAY @255
IF ~~ EXIT
END

IF ~~ wench4
SAY @256
IF ~~ EXIT
END

IF ~~ wench5
SAY @257
IF ~~ EXIT
END


IF ~~ letsdoit
SAY @258
= @259
++ @260 + letsdoit1
++ @261 + letsdoit2
++ @262 + letsdoit2
END

IF ~~ letsdoit1
SAY @263
IF ~~ EXIT
END

IF ~~ letsdoit2
SAY @264
IF ~~ EXIT
END

IF ~~ passion1
SAY @265
= @266
IF ~~ EXIT
END

IF ~~ passion2
SAY @267 = @268
IF ~~ EXIT
END

IF ~~ passion3
SAY @269
IF ~~ EXIT
END

IF ~~ passion4
SAY @270
= @271
IF ~~ EXIT
END

IF ~~ innbath1
SAY @272
IF ~~ EXIT
END

IF ~~ innbath1cn
SAY @273
IF ~~ EXIT
END

IF ~~ innbath2
SAY @274
= @275 
= @276
= @277
IF ~~ EXIT
END

IF ~~ innbath2cn
SAY @274
= @275
= @278
= @279
IF ~~ EXIT
END


IF ~~ innbath3
SAY @280
= @281
= @282
= @283
= @284
= @285
= @286
= @287
IF ~~ EXIT
END

IF ~~ innbath4
SAY @288
= @289
= @290
= @291
= @292
= @293
= @294
= @295
IF ~~ EXIT
END

IF ~~ outdoorbath1
SAY @296
IF ~~ EXIT
END

IF ~~ outdoorbath2
SAY @297
= @298
= @299
= @300
= @301
= @302
IF ~~ EXIT
END

IF ~~ outdoorbath3
SAY @303
= @304
= @305
= @306
= @307
= @308
= @309
= @310
IF ~~ EXIT
END


END


