

/* Hello, curious seeker. I'm using the new shorthand for WeiDU REPLY syntax now. That's what all those plusses are for.
It's great. */


/* Mumble grumble. Fix Anomen hell arrival so it's not so unfriendly. */

APPEND ANOMENJ
IF ~~ hellarrive1
SAY @508
  COPY_TRANS ANOMENJ 258
END

IF ~~ hellarrive2
SAY @509
  COPY_TRANS ANOMENJ 258
END
END

REPLACE ANOMENJ
IF ~~ THEN BEGIN 258
SAY @507
IF ~~ GOTO hellarrive1
IF ~G("AnomenRomanceActive",2)~ GOTO hellarrive2
END
END






/* Let's set the FWAnomenNookie variable in the proper place. This code has the side effect of taking Active to 2
if the PC only grudgingly sleeps with Anomen but I have to think that was an oversight by Bioware... or at least,
something that matters to us much more than it matters to them. */

/*
EXTEND_BOTTOM BANOMEN 432 434 366
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",2)
SetGlobal("FWAnomenNookie","GLOBAL",1)
SetGlobal("FWAnomenMorningAfter","LOCALS",1)
RestParty()~ EXIT
END
*/

ADD_TRANS_ACTION BANOMEN BEGIN 432 434 366 END BEGIN END ~SetGlobal("AnomenRomanceActive","GLOBAL",2)
SetGlobal("FWAnomenNookie","GLOBAL",1)
SetGlobal("FWAnomenMorningAfter","LOCALS",1)~



APPEND ANOMENJ

// LN-LG early Anomen inits

IF
~Global("FWAnomenStartFlirtSOA","GLOBAL",1)
GlobalLT("Lovetalk","LOCALS",33)
!Global("AnomenIsNotKnight","GLOBAL",1)~
THEN BEGIN anomeninitflirtbase1
SAY @0

IF ~~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO deepbreath
 IF ~RandomNum(12,1)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO deepbreath
 IF ~RandomNum(12,2)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO eyebehind
 IF ~RandomNum(12,3) AreaType(DUNGEON)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO dungeon
 IF ~RandomNum(12,3) AreaType(CITY)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO city
 IF ~RandomNum(12,4) AreaType(OUTDOOR) TimeOfDay(DAY)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO blocklight
 IF ~RandomNum(12,4) AreaType(OUTDOOR) !TimeOfDay(DAY)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO stars
 IF ~RandomNum(12,5)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO walkalong
 IF ~RandomNum(12,6)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO ladysgown
 IF ~RandomNum(12,7)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO fixherstrap
 IF ~RandomNum(12,8)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO whatwouldudo
 IF ~RandomNum(12,9)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO everyday
 IF ~RandomNum(12,10)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO reachhand
 IF ~RandomNum(12,11)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO services
 IF ~RandomNum(12,12) HPLT(Player1,25)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO lowhp1


END


// LG-late Anomen inits



IF
~Global("FWAnomenStartFlirtSOA","GLOBAL",1)
Global("AnomenIsKnight","GLOBAL",1)
GlobalGT("Lovetalk","LOCALS",32)~
THEN BEGIN anomeninitflirtbase2
SAY @1

IF ~~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO reachhand
 IF ~RandomNum(13,1)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO deepbreath
 IF ~RandomNum(13,2)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO eyebehind
 IF ~RandomNum(13,3) AreaType(DUNGEON)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO dungeon
 IF ~RandomNum(13,3) AreaType(CITY)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO city
 IF ~RandomNum(13,4) AreaType(OUTDOOR) !TimeOfDay(DAY)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO stars
 IF ~RandomNum(13,4) AreaType(DUNGEON)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO stayclose
 IF ~RandomNum(13,5)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO walkalong
 IF ~RandomNum(13,6)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO strongbeautiful
 IF ~RandomNum(13,7)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO fixherstrap2
 IF ~RandomNum(13,8)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO whatwouldudo
 IF ~RandomNum(13,9)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO everyday
 IF ~RandomNum(13,10)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO sailor
 IF ~RandomNum(13,11)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO kissforluck
 IF ~RandomNum(13,12) HPLT(Player1,25)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO lowhp1
 IF ~RandomNum(13,13) G("FWAnomenNookie",1)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO lovesex1

IF ~GlobalGT("Lovetalk","LOCALS",30) Global("FWDidAnomenGiftTalk","GLOBAL",2)~ THEN DO ~SetGlobal("FWDidAnomenGiftTalk","GLOBAL",3) IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO gifttalk2
IF ~Global("FWDidAnomenGiftTalk","GLOBAL",1)~ THEN DO ~SetGlobal("FWDidAnomenGiftTalk","GLOBAL",2) IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO gifttalk1
IF ~G("FWDidAnomenAttireFlirt",0)~ THEN DO ~SG("FWDidAnomenAttireFlirt",1) IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO attireflirt


END


// Anomen-inits CN

IF
~Global("FWAnomenStartFlirtSOA","GLOBAL",1)
Global("AnomenIsNotKnight","GLOBAL",1)~
THEN BEGIN anomeninitflirtbase3
SAY @2

IF ~~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO reachhand
 IF ~RandomNum(17,1)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO deepbreath
 IF ~RandomNum(17,2)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO eyebehind2
 IF ~RandomNum(17,3) AreaType(DUNGEON)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO stayclose
 IF ~RandomNum(17,3) AreaType(CITY)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO city2
 IF ~RandomNum(17,4)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO forcehug
 IF ~RandomNum(17,5)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO walkalong
 IF ~RandomNum(17,6)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO strongbeautiful
 IF ~RandomNum(17,7)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO bearhug
 IF ~RandomNum(17,8)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO whatwouldudo
 IF ~RandomNum(17,9)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO everyday2
 IF ~RandomNum(17,10) GlobalGT("Lovetalk","LOCALS",32)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO freedom
 IF ~RandomNum(17,10) !GlobalGT("Lovetalk","LOCALS",32)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO elbow
 IF ~RandomNum(17,11) GlobalGT("Lovetalk","LOCALS",36)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO whoami
 IF ~RandomNum(17,11) HPLT(Player1,25)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO lowhp1
 IF ~RandomNum(17,12) !GlobalGT("Lovetalk","LOCALS",32)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO walkalong
 IF ~RandomNum(17,12) GlobalGT("Lovetalk","LOCALS",32)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO begrudge
 IF ~RandomNum(17,13)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO coinpurse
 IF ~RandomNum(17,14) !GlobalGT("Lovetalk","LOCALS",32)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO bearhug
 IF ~RandomNum(17,14) GlobalGT("Lovetalk","LOCALS",32)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO smotherkiss
 IF ~RandomNum(17,15)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO elbow
 IF ~RandomNum(17,16) !GlobalGT("Lovetalk","LOCALS",32)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO eyebehind2
 IF ~RandomNum(17,16) GlobalGT("Lovetalk","LOCALS",32)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO gropeslap
 IF ~RandomNum(17,17) CheckStatLT(Player1,18,STR)~ THEN DO ~IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO pinarms

IF ~GlobalGT("Lovetalk","LOCALS",30) Global("FWDidAnomenGiftTalk","GLOBAL",2)~ THEN DO ~SetGlobal("FWDidAnomenGiftTalk","GLOBAL",3) IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO gifttalk2
IF ~Global("FWDidAnomenGiftTalk","GLOBAL",1)~ THEN DO ~SetGlobal("FWDidAnomenGiftTalk","GLOBAL",2) IncrementGlobal("FWAnomenRandFlirt","LOCALS",1)~ GOTO gifttalk1

END

IF ~~ gropeslap
SAY @3
IF ~~ EXIT
END

IF ~~ pinarms
SAY @4
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

IF ~~ fixherstrap
SAY @31
= @32
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


// No flirting in the underdark

IF ~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
OR(2)
Global("AnomenRomanceActive","GLOBAL",1)
Global("AnomenRomanceActive","GLOBAL",2)
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
SAY @70
IF ~~ EXIT
END


// No flirting with Moira dead and us not having visited Cor


IF
~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
Global("AnomenRomanceActive","GLOBAL",1)
G("FWKnowMoiraDead",1)~ THEN BEGIN anomenmoira
SAY @502
IF ~~ THEN EXIT
END



// No flirting after cranky lovetalks


IF
~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
Global("AnomenRomanceActive","GLOBAL",1)
GlobalGT("Lovetalk","LOCALS",11)
GlobalLT("Lovetalk","LOCALS",15)~ THEN BEGIN anomennoflirt
SAY @71
IF ~~ THEN EXIT
END

// No flirting after cranky lovetalks, take 2. Geez, Anomen sure is a spazz. Just play Kelsey already.


IF
~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
Global("AnomenRomanceActive","GLOBAL",1)
Global("Lovetalk","LOCALS",23)~ THEN BEGIN anomennoflirt2
SAY @71
IF ~~ THEN EXIT
END






// LN-LG early PC inits

IF
~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
OR(2)
Global("AnomenRomanceActive","GLOBAL",1)
Global("AnomenRomanceActive","GLOBAL",2)
OR(2)
Global("Lovetalk","LOCALS",11)
GlobalGT("Lovetalk","LOCALS",14)
GlobalLT("Lovetalk","LOCALS",33)
!Global("Lovetalk","LOCALS",23)
!Global("AnomenIsNotKnight","GLOBAL",1)
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
THEN BEGIN anomenflirtbase1
SAY @72  =
@73
+ ~RandomNum(4,1)~ + @74 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + warmsmile1
+ ~RandomNum(4,2)~ + @74 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + warmsmile1
+ ~RandomNum(4,3)~ + @74 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + warmsmile2
+ ~RandomNum(4,4)~ + @74 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + warmsmile3

+ ~RandomNum(4,1)~ + @75 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + takehand1
+ ~RandomNum(4,2)~ + @75 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + takehand1
+ ~RandomNum(4,3)~ + @75 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + takehand2
+ ~RandomNum(4,4)~ + @75 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + takehand3

+ ~RandomNum(4,1)~ + @76 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + battle1
+ ~RandomNum(4,2)~ + @76 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + battle1
+ ~RandomNum(4,3)~ + @76 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + battle2
+ ~RandomNum(4,4)~ + @76 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + battle3

+ ~RandomNum(4,1)~ + @77 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + profile1
+ ~RandomNum(4,2)~ + @77 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + profile2
+ ~RandomNum(4,3)~ + @77 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + profile3
+ ~RandomNum(4,4)~ + @77 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + profile3

+ ~RandomNum(4,1)~ + @78 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shoulders1
+ ~RandomNum(4,2)~ + @78 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shoulders2
+ ~RandomNum(4,3)~ + @78 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shoulders3
+ ~RandomNum(4,4)~ + @78 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shoulders4

+ ~RandomNum(4,1)~ + @79 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + fliphair1
+ ~RandomNum(4,2)~ + @79 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + fliphair2
+ ~RandomNum(4,3)~ + @79 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + fliphair3
+ ~RandomNum(4,4)~ + @79 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + fliphair1

+ ~RandomNum(4,1)~ + @80 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + curlhair1
+ ~RandomNum(4,2)~ + @80 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + curlhair2
+ ~RandomNum(4,3)~ + @80 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + curlhair3
+ ~RandomNum(4,4)~ + @80 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + curlhair4

+ ~RandomNum(4,1)~ + @81 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + playbeard1
+ ~RandomNum(4,2)~ + @81 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + playbeard2
+ ~RandomNum(4,3)~ + @81 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + playbeard3
+ ~RandomNum(4,4)~ + @81 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + playbeard4

+ ~Dead("Saerk")~ + @82 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + deadsaerk
+ ~!Dead("Saerk") RandomNum(4,1)~ + @82 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + believe1
+ ~!Dead("Saerk") RandomNum(4,2)~ + @82 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + believe2
+ ~!Dead("Saerk") RandomNum(4,3)~ + @82 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + believe2
+ ~!Dead("Saerk") RandomNum(4,4)~ + @82 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + believe1

+ ~GlobalLT("Lovetalk","LOCALS",29) RandomNum(4,1)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss1
+ ~GlobalLT("Lovetalk","LOCALS",29) RandomNum(4,2)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss2
+ ~GlobalLT("Lovetalk","LOCALS",29) RandomNum(4,3)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss1
+ ~GlobalLT("Lovetalk","LOCALS",29) RandomNum(4,4)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss2
+ ~!GlobalLT("Lovetalk","LOCALS",29) RandomNum(4,1)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss3
+ ~!GlobalLT("Lovetalk","LOCALS",29) RandomNum(4,2)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss4
+ ~!GlobalLT("Lovetalk","LOCALS",29) RandomNum(4,3)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss5
+ ~!GlobalLT("Lovetalk","LOCALS",29) RandomNum(4,4)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss6

+ ~RandomNum(4,1)~ + @84 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + hug1
+ ~RandomNum(4,2)~ + @84 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + hug2
+ ~RandomNum(4,3)~ + @84 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + hug3
+ ~RandomNum(4,4)~ + @84 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + hug4

+ ~RandomNum(4,1)~ + @85 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + newreligion1
+ ~RandomNum(4,2)~ + @85 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + newreligion2
+ ~RandomNum(4,3)~ + @85 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + newreligion3
+ ~RandomNum(4,4)~ + @85 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + newreligion3

+ ~RandomNum(4,1)~ + @86 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + gladmet1
+ ~RandomNum(4,2)~ + @86 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + gladmet1
+ ~RandomNum(4,3)~ + @86 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + gladmet2
+ ~RandomNum(4,4)~ + @86 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + gladmet3

+ ~GlobalGT("Lovetalk","LOCALS",10) Global("FWDisableFlirtsNPC","GLOBAL",0)~ + @2001 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",1)~ + flirting

+ ~Global("FWDisableFlirtsNPC","GLOBAL",1)~ + @2002 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",0)~ + flirting


+ ~G("AnomenRomanceActive",1)~ + @503 + breakup
++ @87 EXIT

END

IF ~~ THEN flirting
SAY @2003
IF ~~ THEN EXIT
END

IF ~~ breakup
SAY @504
IF ~~ DO ~SG("AnomenRomanceActive",3)~
EXIT
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

IF ~~ playbeard5
SAY @130
= @131
IF ~~ EXIT
IF ~InParty("Keldorn") !Dead("Keldorn") Global("FWAnomenKeldornFlirt","LOCALS",0)~ DO ~SetGlobal("FWAnomenKeldornFlirt","LOCALS",1)~ EXTERN KELDORJ playbeard5_2
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
+ + @147 + shoulders4_2
END

IF ~~ shoulders6_1
SAY @148
IF ~~ EXIT
END

IF ~~ shoulders4
SAY @145
+ + @146 + shoulders4_1
+ + @147 + shoulders4_2
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


// LG-late PC inits

IF
~IsGabber(Player1)
GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
CombatCounter(0)
OR(2)
Global("AnomenRomanceActive","GLOBAL",1)
Global("AnomenRomanceActive","GLOBAL",2)
Global("AnomenIsKnight","GLOBAL",1)
GlobalGT("Lovetalk","LOCALS",32)
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
THEN BEGIN anomenflirtbase2
SAY @165

+ ~RandomNum(4,1)~ + @75 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + takehand1
+ ~RandomNum(4,2)~ + @75 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + takehand1
+ ~RandomNum(4,3)~ + @75 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + takehand2
+ ~RandomNum(4,4)~ + @75 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + takehand3

+ ~!G("FWShavedAnomen",3) RandomNum(4,1)~ + @166 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + touchface1
+ ~!G("FWShavedAnomen",3) RandomNum(4,2)~ + @166 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + touchface1
+ ~!G("FWShavedAnomen",3) RandomNum(4,3)~ + @166 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + touchface2
+ ~!G("FWShavedAnomen",3) RandomNum(4,4)~ + @166 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + touchface2

+ ~RandomNum(4,1)~ + @76 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + battle1
+ ~RandomNum(4,2)~ + @76 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + battle1
+ ~RandomNum(4,3)~ + @76 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + battle2
+ ~RandomNum(4,4)~ + @76 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + battle3

+ ~RandomNum(4,1)~ + @167 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + handfight1
+ ~RandomNum(4,2)~ + @167 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + handfight2
+ ~RandomNum(4,3)~ + @167 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + handfight3
+ ~RandomNum(4,4)~ + @167 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + handfight4

+ ~RandomNum(4,1)~ + @77 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + profile1
+ ~RandomNum(4,2)~ + @77 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + profile2
+ ~RandomNum(4,3)~ + @77 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + profile3
+ ~RandomNum(4,4)~ + @77 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + profile3

+ ~RandomNum(4,1)~ + @78 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shoulders5
+ ~RandomNum(4,2)~ + @78 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shoulders2
+ ~RandomNum(4,3)~ + @78 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shoulders3
+ ~RandomNum(4,4)~ + @78 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shoulders4

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

+ ~!G("FWShavedAnomen",3) RandomNum(4,1)~ + @81 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + playbeard2
+ ~!G("FWShavedAnomen",3) RandomNum(4,2)~ + @81 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + playbeard2
+ ~!G("FWShavedAnomen",3) RandomNum(4,3)~ + @81 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + playbeard3
+ ~!G("FWShavedAnomen",3) RandomNum(4,4)~ + @81 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + playbeard4

+ ~!GlobalLT("Lovetalk","LOCALS",29) RandomNum(4,1)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss3
+ ~!GlobalLT("Lovetalk","LOCALS",29) RandomNum(4,2)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss4
+ ~!GlobalLT("Lovetalk","LOCALS",29) RandomNum(4,3)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss5
+ ~!GlobalLT("Lovetalk","LOCALS",29) RandomNum(4,4)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss6

+ ~RandomNum(4,1)~ + @168 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + passion1
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

+ ~Global("FWDidAnomenGiftTalk","GLOBAL",0)~ + @171 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + giftchain

+ ~RandomNum(4,1)~ + @172 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + spank1
+ ~RandomNum(4,2)~ + @172 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + spank2
+ ~RandomNum(4,3)~ + @172 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + spank2
+ ~RandomNum(4,4)~ + @172 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + spank1

+ ~RandomNum(4,1)~ + @173 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + bicep1
+ ~RandomNum(4,2)~ + @173 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + bicep1
+ ~RandomNum(4,3)~ + @173 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + bicep2
+ ~RandomNum(4,4)~ + @173 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + bicep2

+ ~GlobalGT("Lovetalk","LOCALS",36) RandomNum(4,1)~ + @174 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + love1
+ ~GlobalGT("Lovetalk","LOCALS",36) RandomNum(4,2)~ + @174 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + love2
+ ~GlobalGT("Lovetalk","LOCALS",36) RandomNum(4,3)~ + @174 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + love2
+ ~GlobalGT("Lovetalk","LOCALS",36) RandomNum(4,4)~ + @174 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + love3

+ ~RandomNum(4,1)~ + @175 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + codpiece1
+ ~RandomNum(4,2)~ + @175 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + codpiece2
+ ~RandomNum(4,3)~ + @175 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + codpiece3
+ ~RandomNum(4,4)~ + @175 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + codpiece3

+ ~RandomNum(4,1)~ + @176 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + thigh1
+ ~RandomNum(4,2)~ + @176 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + thigh1
+ ~RandomNum(4,3)~ + @176 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + thigh2
+ ~RandomNum(4,4)~ + @176 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + thigh2

+ ~RandomNum(4,1)~ + @177 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + back1
+ ~RandomNum(4,2)~ + @177 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + back2
+ ~RandomNum(4,3)~ + @177 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + back3
+ ~RandomNum(4,4)~ + @177 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + back2

+ ~RandomNum(4,1)~ + @178 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + giggle1
+ ~RandomNum(4,2)~ + @178 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + giggle2
+ ~RandomNum(4,3)~ + @178 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + giggle2
+ ~RandomNum(4,4)~ + @178 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + giggle3

+ ~Global("FWAnomenNookie","GLOBAL",1) Global("FWDidWenchHelmite","LOCALS",0)~ + @179 DO ~SetGlobal("FWDidWenchHelmite","LOCALS",1) IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + wench1

+ ~Global("FWAnomenNookie","GLOBAL",1) Global("FWDidWenchHelmite","LOCALS",1) RandomNum(4,1)~ + @179 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + wench2
+ ~Global("FWAnomenNookie","GLOBAL",1) Global("FWDidWenchHelmite","LOCALS",1) RandomNum(4,2)~ + @179 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + wench3
+ ~Global("FWAnomenNookie","GLOBAL",1) Global("FWDidWenchHelmite","LOCALS",1) RandomNum(4,3)~ + @179 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + wench2
+ ~Global("FWAnomenNookie","GLOBAL",1) Global("FWDidWenchHelmite","LOCALS",1) RandomNum(4,4)~ + @179 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + wench3

+ ~GlobalGT("Lovetalk","LOCALS",32) Global("FWAnomenNookie","GLOBAL",0)~ + @180 DO ~SG("FWAnomenNookie",1) IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + letsdoit

+ ~G("FWShavedAnomen",0)
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
AreaCheck("AR1602")~ + @181 DO ~SG("FWShavedAnomen",1) IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shave1

+ ~G("FWShavedAnomen",4)
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
AreaCheck("AR1602")~ + @182 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shaveno


+ ~GlobalGT("Lovetalk","LOCALS",32)
RandomNum(4,1)
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
AreaCheck("AR1602")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + innbath1

+ ~GlobalGT("Lovetalk","LOCALS",32)
RandomNum(4,2)
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
AreaCheck("AR1602")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + innbath2

+ ~GlobalGT("Lovetalk","LOCALS",32)
RandomNum(4,3)
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
AreaCheck("AR1602")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + innbath3

+ ~GlobalGT("Lovetalk","LOCALS",32)
RandomNum(4,4)
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
AreaCheck("AR1602")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + innbath4

+ ~GlobalGT("Lovetalk","LOCALS",32)
RandomNum(4,1)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + outdoorbath1

+ ~GlobalGT("Lovetalk","LOCALS",32)
RandomNum(4,2)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + outdoorbath1

+ ~GlobalGT("Lovetalk","LOCALS",32)
RandomNum(4,3)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + outdoorbath2

+ ~GlobalGT("Lovetalk","LOCALS",32)
RandomNum(4,4)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + outdoorbath3

+ ~GlobalGT("Lovetalk","LOCALS",10) Global("FWDisableFlirtsNPC","GLOBAL",0)~ + @2001 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",1)~ + flirting

+ ~Global("FWDisableFlirtsNPC","GLOBAL",1)~ + @2002 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",0)~ + flirting

++ @87 EXIT

END



// CN SOA late PC-inits



IF
~IsGabber(Player1)
GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
CombatCounter(0)
OR(2)
Global("AnomenRomanceActive","GLOBAL",1)
Global("AnomenRomanceActive","GLOBAL",2)
Global("AnomenIsNotKnight","GLOBAL",1)
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
THEN BEGIN anomenflirtbase3
SAY @184

+ ~RandomNum(4,1)~ + @75 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + takehand1
+ ~RandomNum(4,2)~ + @75 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + takehand1
+ ~RandomNum(4,3)~ + @75 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + takehand2
+ ~RandomNum(4,4)~ + @75 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + takehand3

+ ~!G("FWShavedAnomen",3) RandomNum(4,1)~ + @166 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + touchface1
+ ~!G("FWShavedAnomen",3) RandomNum(4,2)~ + @166 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + touchface1
+ ~!G("FWShavedAnomen",3) RandomNum(4,3)~ + @166 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + touchface2
+ ~!G("FWShavedAnomen",3) RandomNum(4,4)~ + @166 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + touchface2

+ ~RandomNum(4,1)~ + @76 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + battle1
+ ~RandomNum(4,2)~ + @76 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + battle1
+ ~RandomNum(4,3)~ + @76 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + battle4
+ ~RandomNum(4,4)~ + @76 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + battle5

+ ~RandomNum(4,1)~ + @167 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + handfight1
+ ~RandomNum(4,2)~ + @167 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + handfight2
+ ~RandomNum(4,3)~ + @167 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + handfight3
+ ~RandomNum(4,4)~ + @167 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + handfight5

+ ~RandomNum(4,1)~ + @77 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + profile1
+ ~RandomNum(4,2)~ + @77 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + profile2
+ ~RandomNum(4,3)~ + @77 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + profile3
+ ~RandomNum(4,4)~ + @77 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + profile3

+ ~RandomNum(4,1)~ + @78 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shoulders5
+ ~RandomNum(4,2)~ + @78 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shoulders2
+ ~RandomNum(4,3)~ + @78 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shoulders6
+ ~RandomNum(4,4)~ + @78 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shoulders6

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

+ ~!G("FWShavedAnomen",3) RandomNum(4,1)~ + @81 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + playbeard5
+ ~!G("FWShavedAnomen",3) RandomNum(4,2)~ + @81 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + playbeard2
+ ~!G("FWShavedAnomen",3) RandomNum(4,3)~ + @81 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + playbeard3
+ ~!G("FWShavedAnomen",3) RandomNum(4,4)~ + @81 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + playbeard4

+ ~GlobalLT("Lovetalk","LOCALS",31) RandomNum(4,1)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss1
+ ~GlobalLT("Lovetalk","LOCALS",31) RandomNum(4,2)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss2
+ ~GlobalLT("Lovetalk","LOCALS",31) RandomNum(4,3)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss1
+ ~GlobalLT("Lovetalk","LOCALS",31) RandomNum(4,4)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss2

+ ~!GlobalLT("Lovetalk","LOCALS",31) RandomNum(4,1)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss3
+ ~!GlobalLT("Lovetalk","LOCALS",31) RandomNum(4,2)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss4
+ ~!GlobalLT("Lovetalk","LOCALS",31) RandomNum(4,3)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss7
+ ~!GlobalLT("Lovetalk","LOCALS",31) RandomNum(4,4)~ + @83 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + kiss6

+ ~!GlobalLT("Lovetalk","LOCALS",31) RandomNum(4,1)~ + @168 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + passion1
+ ~!GlobalLT("Lovetalk","LOCALS",31) RandomNum(4,2)~ + @168 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + passion2
+ ~!GlobalLT("Lovetalk","LOCALS",31) RandomNum(4,3)~ + @168 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + passion3
+ ~!GlobalLT("Lovetalk","LOCALS",31) RandomNum(4,4)~ + @168 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + passion4

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

+ ~Global("FWDidAnomenGiftTalk","GLOBAL",0)~ + @171 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + giftchain

+ ~RandomNum(4,1)~ + @172 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + spank2
+ ~RandomNum(4,2)~ + @172 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + spank2
+ ~RandomNum(4,3)~ + @172 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + spank3
+ ~RandomNum(4,4)~ + @172 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + spank4

+ ~RandomNum(4,1)~ + @173 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + bicep1
+ ~RandomNum(4,2)~ + @173 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + bicep1
+ ~RandomNum(4,3)~ + @173 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + bicep2
+ ~RandomNum(4,4)~ + @173 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + bicep2

+ ~GlobalGT("Lovetalk","LOCALS",36) RandomNum(4,1)~ + @174 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + love1
+ ~GlobalGT("Lovetalk","LOCALS",36) RandomNum(4,2)~ + @174 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + love2
+ ~GlobalGT("Lovetalk","LOCALS",36) RandomNum(4,3)~ + @174 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + love2
+ ~GlobalGT("Lovetalk","LOCALS",36) RandomNum(4,4)~ + @174 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + love3

+ ~RandomNum(4,1)~ + @175 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + codpiece1
+ ~RandomNum(4,2)~ + @175 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + codpiece2
+ ~RandomNum(4,3)~ + @175 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + codpiece3
+ ~RandomNum(4,4)~ + @175 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + codpiece3

+ ~RandomNum(4,1)~ + @176 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + thigh1
+ ~RandomNum(4,2)~ + @176 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + thigh1
+ ~RandomNum(4,3)~ + @176 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + thigh2
+ ~RandomNum(4,4)~ + @176 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + thigh2

+ ~RandomNum(4,1)~ + @177 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + back1
+ ~RandomNum(4,2)~ + @177 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + back2
+ ~RandomNum(4,3)~ + @177 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + back3
+ ~RandomNum(4,4)~ + @177 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + back2

+ ~RandomNum(4,1)~ + @178 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + giggle1
+ ~RandomNum(4,2)~ + @178 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + giggle4
+ ~RandomNum(4,3)~ + @178 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + giggle4
+ ~RandomNum(4,4)~ + @178 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + giggle3

+ ~Global("FWAnomenNookie","GLOBAL",1) Global("FWDidWenchHelmite","LOCALS",0)~ + @179 DO ~SetGlobal("FWDidWenchHelmite","LOCALS",1) IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + wench4

+ ~Global("FWAnomenNookie","GLOBAL",1) Global("FWDidWenchHelmite","LOCALS",1) RandomNum(4,1)~ + @179 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + wench5
+ ~Global("FWAnomenNookie","GLOBAL",1) Global("FWDidWenchHelmite","LOCALS",1) RandomNum(4,2)~ + @179 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + wench3
+ ~Global("FWAnomenNookie","GLOBAL",1) Global("FWDidWenchHelmite","LOCALS",1) RandomNum(4,3)~ + @179 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + wench5
+ ~Global("FWAnomenNookie","GLOBAL",1) Global("FWDidWenchHelmite","LOCALS",1) RandomNum(4,4)~ + @179 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + wench3

+ ~G("FWShavedAnomen",0)
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
AreaCheck("AR1602")~ + @181 DO ~SG("FWShavedAnomen",1) IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shave1

+ ~G("FWShavedAnomen",4)
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
AreaCheck("AR1602")~ + @182 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + shaveno

+ ~GlobalGT("Lovetalk","LOCALS",32)
RandomNum(4,1)
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
AreaCheck("AR1602")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + innbath1cn

+ ~GlobalGT("Lovetalk","LOCALS",32)
RandomNum(4,2)
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
AreaCheck("AR1602")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + innbath2cn

+ ~GlobalGT("Lovetalk","LOCALS",32)
RandomNum(4,3)
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
AreaCheck("AR1602")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + innbath3

+ ~GlobalGT("Lovetalk","LOCALS",32)
RandomNum(4,4)
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
AreaCheck("AR1602")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + innbath4

+ ~GlobalGT("Lovetalk","LOCALS",32)
RandomNum(4,1)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + outdoorbath1

+ ~GlobalGT("Lovetalk","LOCALS",32)
RandomNum(4,2)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + outdoorbath1

+ ~GlobalGT("Lovetalk","LOCALS",32)
RandomNum(4,3)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + outdoorbath2

+ ~GlobalGT("Lovetalk","LOCALS",32)
RandomNum(4,4)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ + @183 DO ~IncrementGlobal("FWAnomenFlirt","GLOBAL",1)~ + outdoorbath3

+ ~GlobalGT("Lovetalk","LOCALS",10) Global("FWDisableFlirtsNPC","GLOBAL",0)~ + @2001 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",1)~ + flirting

+ ~Global("FWDisableFlirtsNPC","GLOBAL",1)~ + @2002 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",0)~ + flirting


++ @87 EXIT

END


IF ~~ shave1
SAY @185

++ @186 + shave2
++ @187 + shave2
++ @188 DO ~SG("FWShavedAnomen",0)~ EXIT
++ @189 DO ~SG("FWShavedAnomen",0)~ EXIT
END

IF ~~ shave2
SAY @190
= @191
++ @192 + shave4
++ @193 + shave_emerge
END

IF ~~ shave4
SAY @194
++ @195 + shave5
++ @196 + shave5
++ @197 + shave5
++ @198 + shave_emerge
END

IF ~~ shave5
SAY @199
= @200
= @201
= @202
= @203
IF ~~ THEN GOTO shave_end
END

IF ~~ shave_emerge
SAY @204
= @205
IF ~~ THEN GOTO shave_end
END

IF ~~ shave_end
SAY @206
IF ~~ DO ~SG("FWShavedAnomen",2)~ EXIT
END

IF ~~ shaveno
SAY @207
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



// SOA morning-after

IF WEIGHT #-1
~Global("FWAnomenMorningAfter","LOCALS",1)~
THEN BEGIN mobase
SAY @311
IF ~~ THEN DO ~SetGlobal("FWAnomenMorningAfter","LOCALS",2)~ GOTO mobaselg
IF ~Global("AnomenIsNotKnight","GLOBAL",1)~ THEN DO ~SetGlobal("FWAnomenMorningAfter","LOCALS",2)~ GOTO mobasecn
END

IF ~~ mobasecn
SAY @312
++ @313 + mo2
++ @314 + mo3
++ @501 + mo4
++ @83 + mo5
END

IF ~~ mobaselg
SAY @316
++ @313 + mo2
++ @314 + mo3
++ @315 + mo4
++ @83 + mo5
END

IF ~~ mo2
SAY @317
IF ~~ GOTO mo2_2
END

IF ~~ mo3
SAY @318
IF ~~ GOTO mo2_2
END

IF ~~ mo4
SAY @319
IF ~~ GOTO mo5
END

IF ~~ mo5
SAY @320
IF ~~ GOTO mo5_2
END

IF ~~ mo2_2
SAY @321
  IF ~~ THEN REPLY @322 GOTO mo2_3
  IF ~~ THEN REPLY @323 GOTO mo_getup2  IF ~~ THEN REPLY @324 GOTO mo_getup2
END

IF ~~ THEN BEGIN mo2_3
  SAY @325
  IF ~~ THEN GOTO mo2_4
END

IF ~~ THEN BEGIN mo2_4
  SAY @326
  IF ~~ THEN REPLY @327 GOTO mo_getup
  IF ~~ THEN REPLY @328 DO ~RestParty()~ EXIT
END


IF ~~ THEN BEGIN mo5_2
  SAY @329
  IF ~~ THEN REPLY @330 DO ~RestParty()~ EXIT
  IF ~~ THEN REPLY @331 GOTO mo_getup 
END

IF ~~ mo_getup
SAY @332
IF ~~ EXIT
END

IF ~~ mo_getup2
SAY @333
IF ~~ THEN EXIT
END

END


CHAIN KELDORJ playbeard5_2
@334
== ANOMENJ @335
== KELDORJ @336
== ANOMENJ @337
EXIT

CHAIN ANOMENJ handfight5
@338
== ANOMENJ IF ~InParty("Aerie")~ THEN @339
== ANOMENJ @340
EXIT


CHAIN ANOMENJ giftchain
@341
== BAERIE IF ~IsValidForPartyDialog("Aerie")~ THEN @342
== BMINSC IF ~IsValidForPartyDialog("Minsc")~ THEN @343
== BJAHEIR IF ~IsValidForPartyDialog("Jaheira")~ THEN @344
== BYOSHIM IF ~IsValidForPartyDialog("Yoshimo")~ THEN @345
== BNALIA IF ~IsValidForPartyDialog("Nalia")~ THEN @346
== BMAZZY IF ~IsValidForPartyDialog("Mazzy")~ THEN @347
== BKORGAN IF ~IsValidForPartyDialog("Korgan")~ THEN @348
== BEDWIN IF ~IsValidForPartyDialog("Edwin") Gender("Edwin",MALE)~ THEN @349 = @350
== BEDWIN IF ~IsValidForPartyDialog("Edwin") Gender("Edwin",FEMALE)~ THEN @351 = @350
== BVICONI IF ~IsValidForPartyDialog("Viconia")~ THEN @352
== BVALYGA IF ~IsValidForPartyDialog("Valygar")~ THEN @353
== BKELDOR IF ~IsValidForPartyDialog("Keldorn")~ THEN @354
== BHAERDA IF ~IsValidForPartyDialog("HaerDalis")~ THEN @355
== BJAN IF ~IsValidForPartyDialog("Jan")~ THEN @356 = @357
== BCERND IF ~IsValidForPartyDialog("Cernd")~ THEN @358
== IMOEN2J IF ~IsValidForPartyDialog("Imoen2")~ THEN @359 = @360
== ANOMENJ @361 DO ~SetGlobal("FWDidAnomenGiftTalk","GLOBAL",1)~
EXIT




