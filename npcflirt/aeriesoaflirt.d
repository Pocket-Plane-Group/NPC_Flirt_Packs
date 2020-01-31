// Aerie-initiated flirts NOT WHEN LT=19 or 27


// ...once again, Bioware sets an active to 2 in some cases but not others
// even when the PC's actions are just as sweet if not sweeter. Let's clean up their mess again.

EXTEND_BOTTOM BAERIE 415
IF ~~ THEN DO ~SG("AerieRomanceActive",2)~ EXIT
END


// Active=1 initiated flirts

APPEND AERIEJ

IF
~Global("FWAerieStartFlirtSOA","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",1)~
THEN BEGIN aerieinitflirtbase1
SAY @0

 IF ~~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriethanks
 IF ~RandomNum(10,1)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerieshuffle
 IF ~RandomNum(10,2)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriestandclose
 IF ~RandomNum(10,3)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerieeyeing
 IF ~RandomNum(10,4)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerieshoulder
 IF ~RandomNum(10,5)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriecircus
 IF ~RandomNum(10,6)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriesonice
 IF ~RandomNum(10,7)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerielistening
 IF ~RandomNum(10,8)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerienowonder
 IF ~RandomNum(10,9) AreaType(OUTDOOR)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriepointstars
 IF ~RandomNum(10,10) ReputationGT(Player1,15)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerienice2people
 IF ~RandomNum(10,10) ReputationLT(Player1,8)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriemean2people

 IF ~HPLT(Player1,15)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO lowhp1

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


IF ~~ THEN BEGIN aerielistening
SAY @400 = @401
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerienowonder
SAY @402 = @403
IF ~~ THEN EXIT
END




IF ~~ THEN BEGIN aerieshuffle
SAY @1 = @2
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aeriestandclose
SAY @3
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerieeyeing
SAY @5
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


// Active =2, SleptAerie=0 initiated flirts



IF
~Global("FWAerieStartFlirtSOA","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)~
THEN BEGIN aerieinitflirtbase2
SAY @9

 IF ~~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerielooparm

 IF ~RandomNum(16,1)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerieshuffle2
 IF ~RandomNum(16,2)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriestandclose
 IF ~RandomNum(16,3)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerieeyeing2
 IF ~RandomNum(16,4)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerieshoulder2
 IF ~RandomNum(16,5)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriecircus
 IF ~RandomNum(16,6)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriehugs
 IF ~RandomNum(16,7)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriesidles
 IF ~RandomNum(16,8)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriesohappy
 IF ~RandomNum(16,9)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerieloveyou
 IF ~RandomNum(16,10)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerieherewithyou
 IF ~RandomNum(16,11)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriegladyou
 IF ~RandomNum(16,12)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerienipsear
 IF ~RandomNum(16,13)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriehealyou
 IF ~RandomNum(16,14)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerienowonder
 IF ~RandomNum(16,15) AreaType(OUTDOOR)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriepointstars
 IF ~RandomNum(16,15) AreaType(CITY)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriecity
 IF ~RandomNum(16,16) ReputationGT(Player1,15)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aerienice2people
 IF ~RandomNum(16,16) ReputationLT(Player1,8)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO aeriemean2people

  IF ~HPLT(Player1,15)~ THEN DO ~IncrementGlobal("FWAerieRandFlirt","LOCALS",1)~ GOTO lowhp1


END

IF ~~ aerielooparm
SAY @588
IF ~~ EXIT
END

IF ~~ aeriecity
SAY @587
IF ~~ EXIT
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

IF ~~ THEN BEGIN aerieherewithyou
SAY @300 = @301
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerieshuffle2
SAY @10 = @2
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerieeyeing2
SAY @11
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




// Active =2, SleptAerie=1 flirts do not exist






// PC-initiated flirts: Active=1

IF
~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
GlobalGT("Lovetalk","LOCALS",8)
!Global("LoveTalk","LOCALS",19)
!Global("LoveTalk","LOCALS",27)
Global("AerieRomanceActive","GLOBAL",1)
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
THEN BEGIN aerieflirtbase1
SAY @18 = @20

 IF ~RandomNum(4,1)~ THEN REPLY @19 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO prettyaerie1
 IF ~RandomNum(4,2)~ THEN REPLY @19 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO prettyaerie1
 IF ~RandomNum(4,3)~ THEN REPLY @19 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO prettyaerie2
 IF ~RandomNum(4,4)~ THEN REPLY @19 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO prettyaerie3

 IF ~RandomNum(4,1)~ THEN REPLY @25 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO nuzzle1
 IF ~RandomNum(4,2)~ THEN REPLY @25 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO nuzzle1
 IF ~RandomNum(4,3)~ THEN REPLY @25 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO nuzzle2
 IF ~RandomNum(4,4)~ THEN REPLY @25 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO nuzzle2

 IF ~RandomNum(4,1)~ THEN REPLY @501 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO hug1
 IF ~RandomNum(4,2)~ THEN REPLY @501 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO hug2
 IF ~RandomNum(4,3)~ THEN REPLY @501 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO hug3
 IF ~RandomNum(4,4)~ THEN REPLY @501 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO hug4

IF ~G("FWAerieBadTouch",0)~ THEN REPLY @29 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO badtouch1
IF ~G("FWAerieBadTouch",1)~ THEN REPLY @29 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO badtouch2

 IF ~RandomNum(4,1)~ THEN REPLY @33 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierobe1
 IF ~RandomNum(4,2)~ THEN REPLY @33 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierobe2
 IF ~RandomNum(4,3)~ THEN REPLY @33 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierobe3
 IF ~RandomNum(4,4)~ THEN REPLY @33 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierobe1

IF ~G("FWAerieLipKiss",0)~ THEN REPLY @38 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO lipkiss1
IF ~G("FWAerieLipKiss",1)~ THEN REPLY @38 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO lipkiss2

 IF ~RandomNum(4,1)~ THEN REPLY @42 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO kisscheek1
 IF ~RandomNum(4,2)~ THEN REPLY @42 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO kisscheek1
 IF ~RandomNum(4,3)~ THEN REPLY @42 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO kisscheek2
 IF ~RandomNum(4,4)~ THEN REPLY @42 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO kisscheek2

 IF ~RandomNum(4,1)~ THEN REPLY @45 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO squeezebutt1
 IF ~RandomNum(4,2)~ THEN REPLY @45 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO squeezebutt1
 IF ~RandomNum(4,3)~ THEN REPLY @45 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO squeezebutt2
 IF ~RandomNum(4,4)~ THEN REPLY @45 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO squeezebutt3

 IF ~RandomNum(4,1)~ THEN REPLY @404 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO holdherhand1
 IF ~RandomNum(4,2)~ THEN REPLY @404 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO holdherhand2
 IF ~RandomNum(4,3)~ THEN REPLY @404 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO holdhand1
 IF ~RandomNum(4,4)~ THEN REPLY @404 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO holdhand3

 IF ~RandomNum(4,1)~ THEN REPLY @409 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO impress1
 IF ~RandomNum(4,2)~ THEN REPLY @409 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO impress1
 IF ~RandomNum(4,3)~ THEN REPLY @409 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO impress2
 IF ~RandomNum(4,4)~ THEN REPLY @409 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO impress2

 IF ~RandomNum(4,1)~ THEN REPLY @414 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO smiler1
 IF ~RandomNum(4,2)~ THEN REPLY @414 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO smiler2
 IF ~RandomNum(4,3)~ THEN REPLY @414 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO smiler2
 IF ~RandomNum(4,4)~ THEN REPLY @414 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO smiler3

 IF ~GlobalGT("Lovetalk","LOCALS",12) GlobalLT("Lovetalk","LOCALS",37) RandomNum(4,1)~ THEN REPLY @578 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO alove1
 IF ~GlobalGT("Lovetalk","LOCALS",12) GlobalLT("Lovetalk","LOCALS",37) RandomNum(4,2)~ THEN REPLY @578 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO alove2
 IF ~GlobalGT("Lovetalk","LOCALS",12) GlobalLT("Lovetalk","LOCALS",37) RandomNum(4,3)~ THEN REPLY @578 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO alove3
 IF ~GlobalGT("Lovetalk","LOCALS",12) GlobalLT("Lovetalk","LOCALS",37) RandomNum(4,4)~ THEN REPLY @578 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO alove1

 IF ~!GlobalLT("Lovetalk","LOCALS",37) RandomNum(4,1)~ THEN REPLY @578 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO alove4
 IF ~!GlobalLT("Lovetalk","LOCALS",37) RandomNum(4,2)~ THEN REPLY @578 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO alove5
 IF ~!GlobalLT("Lovetalk","LOCALS",37) RandomNum(4,3)~ THEN REPLY @578 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO alove5
 IF ~!GlobalLT("Lovetalk","LOCALS",37) RandomNum(4,4)~ THEN REPLY @578 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO alove6


IF ~CheckStatGT("Aerie",10,STR)~ THEN REPLY @48 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO punchhurts
IF ~!CheckStatGT("Aerie",10,STR) RandomNum(4,1)~ THEN REPLY @48 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO punchme1
IF ~!CheckStatGT("Aerie",10,STR) RandomNum(4,2)~ THEN REPLY @48 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO punchme1
IF ~!CheckStatGT("Aerie",10,STR) RandomNum(4,3)~ THEN REPLY @48 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO punchme2
IF ~!CheckStatGT("Aerie",10,STR) RandomNum(4,4)~ THEN REPLY @48 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO punchme2

 IF ~RandomNum(4,1)~ THEN REPLY @551 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO wink3
 IF ~RandomNum(4,2)~ THEN REPLY @551 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO wink2
 IF ~RandomNum(4,3)~ THEN REPLY @551 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO wink2
 IF ~RandomNum(4,4)~ THEN REPLY @551 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO wink3

+ ~GlobalGT("Lovetalk","LOCALS",8) Global("FWDisableFlirtsNPC","GLOBAL",0)~ + @2001 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",1)~ + flirting

+ ~Global("FWDisableFlirtsNPC","GLOBAL",1)~ + @2002 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",0)~ + flirting

 ++ @576 + breakup

IF ~~ THEN REPLY @259 EXIT
END

IF ~~ THEN flirting
SAY @2003
IF ~~ THEN EXIT
END

IF ~~ breakup
SAY @577
IF ~~ DO ~SG("AerieRomanceActive",3)~ EXIT
END

IF ~~ alove1
SAY @579
IF ~~ EXIT
END

IF ~~ alove2
SAY @580
IF ~~ EXIT
END

IF ~~ alove3
SAY @581
IF ~~ EXIT
END

IF ~~ alove4
SAY @582
IF ~~ EXIT
END

IF ~~ alove5
SAY @583
IF ~~ EXIT
END

IF ~~ alove6
SAY @584
IF ~~ EXIT
END


IF ~~ THEN BEGIN holdhand1
SAY @559
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN holdhand2
SAY @560
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN holdhand3
SAY @561
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

IF ~~ THEN BEGIN wink3
SAY @557
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug1
SAY @502 = @503
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug2
SAY @504
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug3
SAY @505
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug4
SAY @506
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug5
SAY @507 = @508
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug6
SAY @509 = @510
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug7
SAY @511 = @512
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smiler1
SAY @415
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smiler2
SAY @416
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smiler3
SAY @417 = @418
IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN impress1
SAY @410 = @411
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN impress2
SAY @412 = @413
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN holdherhand1
SAY @405 = @406
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN holdherhand2
SAY @407 = @408
IF ~~ THEN EXIT
END


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
IF ~CheckStatLT(Player1,10,STR) CheckStatLT(Player1,10,CON)~ THEN GOTO punchhurts2
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

IF ~~ THEN BEGIN badtouch1
SAY @30 = @31
IF ~~ THEN DO ~SG("FWAerieBadTouch",1)~ EXIT
END

IF ~~ THEN BEGIN badtouch2
SAY @32
IF ~~ THEN DO ~SG("AerieRomanceActive",3)~ EXIT
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

// PC-Initiated: Active=2 SleptAerie=0

IF
~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
G("SleptAerie",0)
Global("AerieRomanceActive","GLOBAL",2)
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
THEN BEGIN aerieflirtbase2
SAY @55

IF ~GlobalGT("LOVETALK","LOCALS",47)~ THEN REPLY @56 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO thinklove

 IF ~RandomNum(4,1)~ THEN REPLY @19 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO prettyaerie1
 IF ~RandomNum(4,2)~ THEN REPLY @19 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO prettyaerie4
 IF ~RandomNum(4,3)~ THEN REPLY @19 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO prettyaerie4
 IF ~RandomNum(4,4)~ THEN REPLY @19 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO prettyaerie3

 IF ~RandomNum(4,1)~ THEN REPLY @25 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO nuzzle3
 IF ~RandomNum(4,2)~ THEN REPLY @25 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO nuzzle4
 IF ~RandomNum(4,3)~ THEN REPLY @25 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO nuzzle5
 IF ~RandomNum(4,4)~ THEN REPLY @25 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO nuzzle5

 IF ~RandomNum(4,1)~ THEN REPLY @501 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO hug5
 IF ~RandomNum(4,2)~ THEN REPLY @501 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO hug6
 IF ~RandomNum(4,3)~ THEN REPLY @501 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO hug7
 IF ~RandomNum(4,4)~ THEN REPLY @501 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO hug5

 IF ~RandomNum(4,1)~ THEN REPLY @29 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO chesttouch1
 IF ~RandomNum(4,2)~ THEN REPLY @29 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO chesttouch2
 IF ~RandomNum(4,3)~ THEN REPLY @29 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO chesttouch1
 IF ~RandomNum(4,4)~ THEN REPLY @29 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO chesttouch2

 IF ~RandomNum(4,1)~ THEN REPLY @33 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierobe1
 IF ~RandomNum(4,2)~ THEN REPLY @33 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierobe2
 IF ~RandomNum(4,3)~ THEN REPLY @33 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierobe3
 IF ~RandomNum(4,4)~ THEN REPLY @33 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierobe1

 IF ~RandomNum(4,1)~ THEN REPLY @38 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerielips1
 IF ~RandomNum(4,2)~ THEN REPLY @38 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerielips2
 IF ~RandomNum(4,3)~ THEN REPLY @38 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerielips3
 IF ~RandomNum(4,4)~ THEN REPLY @38 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerielips1

 IF ~RandomNum(4,1)~ THEN REPLY @69 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierub1
 IF ~RandomNum(4,2)~ THEN REPLY @69 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierub1
 IF ~RandomNum(4,3)~ THEN REPLY @69 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierub2
 IF ~RandomNum(4,4)~ THEN REPLY @69 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierub3

 IF ~RandomNum(4,1)~ THEN REPLY @75 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO alwayslove1
 IF ~RandomNum(4,2)~ THEN REPLY @75 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO alwayslove1
 IF ~RandomNum(4,3)~ THEN REPLY @75 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO alwayslove2
 IF ~RandomNum(4,4)~ THEN REPLY @75 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO alwayslove3

 IF ~RandomNum(4,1)~ THEN REPLY @79 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO cradle1
 IF ~RandomNum(4,2)~ THEN REPLY @79 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO cradle2
 IF ~RandomNum(4,3)~ THEN REPLY @79 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO cradle1
 IF ~RandomNum(4,4)~ THEN REPLY @79 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO cradle3

 IF ~RandomNum(4,1)~ THEN REPLY @84 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO needs1
 IF ~RandomNum(4,2)~ THEN REPLY @84 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO needs2
 IF ~RandomNum(4,3)~ THEN REPLY @84 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO needs1
 IF ~RandomNum(4,4)~ THEN REPLY @84 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO needs2

 IF ~RandomNum(4,1)~ THEN REPLY @87 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO massage1
 IF ~RandomNum(4,2)~ THEN REPLY @87 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO massage2
 IF ~RandomNum(4,3)~ THEN REPLY @87 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO massage1
 IF ~RandomNum(4,4)~ THEN REPLY @87 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO massage2

 IF ~RandomNum(4,1)~ THEN REPLY @91 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO rubher1
 IF ~RandomNum(4,2)~ THEN REPLY @91 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO rubher2
 IF ~RandomNum(4,3)~ THEN REPLY @91 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO rubher1
 IF ~RandomNum(4,4)~ THEN REPLY @91 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO rubher3

 IF ~RandomNum(4,1)~ THEN REPLY @45 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO squeezebutt4
 IF ~RandomNum(4,2)~ THEN REPLY @45 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO squeezebutt5
 IF ~RandomNum(4,3)~ THEN REPLY @45 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO squeezebutt6
 IF ~RandomNum(4,4)~ THEN REPLY @45 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO squeezebutt6

 IF ~RandomNum(4,1)~ THEN REPLY @414 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO smiler1
 IF ~RandomNum(4,2)~ THEN REPLY @414 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO smiler2
 IF ~RandomNum(4,3)~ THEN REPLY @414 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO smiler2
 IF ~RandomNum(4,4)~ THEN REPLY @414 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO smiler3

IF ~CheckStatGT("Aerie",10,STR)~ THEN REPLY @48 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO punchhurts
IF ~!CheckStatGT("Aerie",10,STR) RandomNum(4,1)~ THEN REPLY @48 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO punchme1
IF ~!CheckStatGT("Aerie",10,STR) RandomNum(4,2)~ THEN REPLY @48 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO punchme1
IF ~!CheckStatGT("Aerie",10,STR) RandomNum(4,3)~ THEN REPLY @48 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO punchme2
IF ~!CheckStatGT("Aerie",10,STR) RandomNum(4,4)~ THEN REPLY @48 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO punchme2

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
AreaCheck("AR1602")~ THEN REPLY @320 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO innbath1

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
AreaCheck("AR1602")~ THEN REPLY @320 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO innbath1

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
AreaCheck("AR1602")~ THEN REPLY @320 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO innbath2

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
AreaCheck("AR1602")~ THEN REPLY @320 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO innbath3

 IF ~RandomNum(4,1)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @320 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO streambath1

 IF ~RandomNum(4,2)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @320 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO streambath2

 IF ~RandomNum(4,3)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @320 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO streambath1

 IF ~RandomNum(4,4)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @320 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO streambath2

 IF ~RandomNum(4,1)~ THEN REPLY @551 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO wink1
 IF ~RandomNum(4,2)~ THEN REPLY @551 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO wink2
 IF ~RandomNum(4,3)~ THEN REPLY @551 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO wink2
 IF ~RandomNum(4,4)~ THEN REPLY @551 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO wink3

 IF ~RandomNum(4,1)~ THEN REPLY @552 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO holdhand4
 IF ~RandomNum(4,2)~ THEN REPLY @552 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO holdhand4
 IF ~RandomNum(4,3)~ THEN REPLY @552 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO holdhand5
 IF ~RandomNum(4,4)~ THEN REPLY @552 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO holdhand6

+ ~GlobalGT("Lovetalk","LOCALS",8) Global("FWDisableFlirtsNPC","GLOBAL",0)~ + @2001 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",1)~ + flirting

+ ~Global("FWDisableFlirtsNPC","GLOBAL",1)~ + @2002 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",0)~ + flirting

IF ~~ THEN REPLY @259 EXIT

END


IF ~~ THEN BEGIN streambath1
SAY @329 = @330
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN streambath2
SAY @331
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN innbath1
SAY @321 = @322
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN innbath2
SAY @323 = @324 = @325
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN innbath3
SAY @326 = @327 = @328
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

IF ~~ THEN BEGIN squeezebutt6
SAY @97
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

IF ~~ THEN BEGIN cradle3
SAY @82 = @83
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

// SleptAerie=1

IF
~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
G("SleptAerie",1)
OR(2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
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
THEN BEGIN aerieflirtbase2
SAY @55

 IF ~G("SleptAerie",1) RandomNum(4,1)~ THEN REPLY @98 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO wonderful1
 IF ~G("SleptAerie",1) RandomNum(4,2)~ THEN REPLY @98 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO wonderful1
 IF ~G("SleptAerie",1) RandomNum(4,3)~ THEN REPLY @98 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO wonderful2
 IF ~G("SleptAerie",1) RandomNum(4,4)~ THEN REPLY @98 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO wonderful2

 IF ~RandomNum(4,1)~ THEN REPLY @19 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO prettyaerie1
 IF ~RandomNum(4,2)~ THEN REPLY @19 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO prettyaerie4
 IF ~RandomNum(4,3)~ THEN REPLY @19 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO prettyaerie4
 IF ~RandomNum(4,4)~ THEN REPLY @19 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO prettyaerie3

IF ~~ THEN REPLY @25 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO wonderful2

 IF ~RandomNum(4,1)~ THEN REPLY @501 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO hug5
 IF ~RandomNum(4,2)~ THEN REPLY @501 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO hug4
 IF ~RandomNum(4,3)~ THEN REPLY @501 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO hug4
 IF ~RandomNum(4,4)~ THEN REPLY @501 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO hug2

IF ~~ THEN REPLY @29 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO chesttouch2

 IF ~RandomNum(4,1)~ THEN REPLY @33 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierobe1
 IF ~RandomNum(4,2)~ THEN REPLY @33 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierobe2
 IF ~RandomNum(4,3)~ THEN REPLY @33 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierobevow
 IF ~RandomNum(4,4)~ THEN REPLY @33 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierobe1

 IF ~RandomNum(4,1)~ THEN REPLY @38 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerielips1
 IF ~RandomNum(4,2)~ THEN REPLY @38 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerielips4
 IF ~RandomNum(4,3)~ THEN REPLY @38 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerielips4
 IF ~RandomNum(4,4)~ THEN REPLY @38 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerielips1

 IF ~RandomNum(4,1)~ THEN REPLY @69 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierub1
 IF ~RandomNum(4,2)~ THEN REPLY @69 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierub1
 IF ~RandomNum(4,3)~ THEN REPLY @69 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierub2
 IF ~RandomNum(4,4)~ THEN REPLY @69 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO aerierub2

 IF ~RandomNum(4,1)~ THEN REPLY @75 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO alwayslove1
 IF ~RandomNum(4,2)~ THEN REPLY @75 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO alwayslove1
 IF ~RandomNum(4,3)~ THEN REPLY @75 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO alwayslove2
 IF ~RandomNum(4,4)~ THEN REPLY @75 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO alwayslove3

IF ~~ THEN REPLY @79 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO cradleslept1

 IF ~RandomNum(4,1)~ THEN REPLY @84 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO needs1
 IF ~RandomNum(4,2)~ THEN REPLY @84 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO needs2
 IF ~RandomNum(4,3)~ THEN REPLY @84 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO needs1
 IF ~RandomNum(4,4)~ THEN REPLY @84 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO needs2

 IF ~RandomNum(4,1)~ THEN REPLY @87 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO massage1
 IF ~RandomNum(4,2)~ THEN REPLY @87 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO massage2
 IF ~RandomNum(4,3)~ THEN REPLY @87 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO massage1
 IF ~RandomNum(4,4)~ THEN REPLY @87 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO massage2

 IF ~RandomNum(4,1)~ THEN REPLY @91 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO rubher2
 IF ~RandomNum(4,2)~ THEN REPLY @91 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO rubher2
 IF ~RandomNum(4,3)~ THEN REPLY @91 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO rubher4
 IF ~RandomNum(4,4)~ THEN REPLY @91 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO rubher4

 IF ~RandomNum(4,1)~ THEN REPLY @414 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO smiler1
 IF ~RandomNum(4,2)~ THEN REPLY @414 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO smiler2
 IF ~RandomNum(4,3)~ THEN REPLY @414 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO smiler2
 IF ~RandomNum(4,4)~ THEN REPLY @414 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO smiler3

 IF ~RandomNum(4,1)~ THEN REPLY @45 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO squeezebutt4
 IF ~RandomNum(4,2)~ THEN REPLY @45 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO squeezebutt5
 IF ~RandomNum(4,3)~ THEN REPLY @45 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO squeezebutt6
 IF ~RandomNum(4,4)~ THEN REPLY @45 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO squeezebutt6

 IF ~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ THEN REPLY @320 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO innbathno

 IF ~OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @320 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO streambathno

 IF ~RandomNum(4,1)~ THEN REPLY @552 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO holdhand2
 IF ~RandomNum(4,2)~ THEN REPLY @552 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO holdhand2
 IF ~RandomNum(4,3)~ THEN REPLY @552 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO holdhand3
 IF ~RandomNum(4,4)~ THEN REPLY @552 DO ~IncrementGlobal("FWAerieFlirt","GLOBAL",1)~ GOTO holdhand3

+ ~GlobalGT("Lovetalk","LOCALS",8) Global("FWDisableFlirtsNPC","GLOBAL",0)~ + @2001 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",1)~ + flirting

+ ~Global("FWDisableFlirtsNPC","GLOBAL",1)~ + @2002 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",0)~ + flirting

IF ~~ THEN REPLY @259 EXIT

END


IF ~~ THEN BEGIN innbathno
SAY @332
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN streambathno
SAY @333
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aerierobevow
SAY @36 = @258
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


// No flirting in Underdark

IF ~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
OR(2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
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
SAY @575
IF ~~ THEN EXIT
END


END

