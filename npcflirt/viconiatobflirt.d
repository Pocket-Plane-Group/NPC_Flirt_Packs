// Viconia Sarevok soul interjection


/*
EXTEND_BOTTOM IMOEN25J 8
  IF ~IsValidForPartyDialog("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 25
END
*/

I_C_T IMOEN25J 8 C#NPCFlirt_VICON25J_IMOEN25J_8
== VICON25J IF ~IsValidForPartyDialog("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN #70481 /* ~A foolish gamble, iblith.  Had you caused harm to this one... not even your time in Hell would compare to the sufferings I would have visited upon you.~ */
END

// Fate spirit

EXTEND_TOP FATESP 6 #16
  IF ~%New_ToB_Game%
!Dead("Viconia")
!InMyArea("Viconia")
Global("ViconiaSummoned","GLOBAL",0)
Gender(Player1,MALE)
!Race(Player1,ELF)
!Race(Player1,DWARF)
!Race(Player1,GNOME)
!Global("JaheiraRomanceActive","GLOBAL",2)
!Global("AerieRomanceActive","GLOBAL",2)~ THEN
   REPLY @214
    DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",2)
SetGlobal("ViconiaSummoned","GLOBAL",1)
SG("FWViconiaSummonedInRomance",1)~ GOTO 8
END

// Make the summoning greeting more romance-friendly.

EXTEND_BOTTOM VICON25A 0
IF ~Global("ViconiaRomanceActive","GLOBAL",2)~ THEN REPLY @215 DO ~SetGlobal("ViconiaSummoned","GLOBAL",2)~ GOTO summonsafe
IF ~Global("ViconiaRomanceActive","GLOBAL",2)~ THEN REPLY @216 DO ~SetGlobal("ViconiaSummoned","GLOBAL",2)~ GOTO summonwoman
END

APPEND VICON25A

IF ~~ THEN BEGIN summonsafe
SAY @217
= @218
IF ~~ THEN REPLY @219 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @220 GOTO summonsafe2
END

IF ~~ THEN BEGIN summonsafe2
SAY @221
  IF ~~ THEN DO ~MoveToPointNoInterrupt([2458.1473])
Face(0)~ EXIT
END

IF ~~ THEN BEGIN summonwoman
SAY @222
= @223
IF ~~ THEN REPLY @219 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @220 GOTO summonsafe2
END

END

APPEND VICON25J

IF
~Global("FWViconiaStartFlirtTOB","GLOBAL",1)~
THEN BEGIN viconiainitflirtbase1
SAY @224

IF ~~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO yettolearn
 IF ~RandomNum(21,1) !Alignment("Viconia",NEUTRAL)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO haughty
 IF ~RandomNum(21,1) Alignment("Viconia",NEUTRAL)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO nonhaughty
 IF ~RandomNum(21,2) !AreaType(DUNGEON) !AreaType(FOREST)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO appreciateplaces
 IF ~RandomNum(21,2) AreaType(DUNGEON)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO dungeon
 IF ~RandomNum(21,2) AreaType(FOREST)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO forest
 IF ~RandomNum(21,3) CheckStatLT(Player1,9,STR)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO reallyweak
 IF ~RandomNum(21,3) CheckStatGT(Player1,8,STR) CheckStatLT(Player1,13,STR)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO weak
 IF ~RandomNum(21,3) CheckStatGT(Player1,16,STR)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO strong
 IF ~RandomNum(21,3)
 OR(8)
HasItemEquiped("belt11",Player1)
HasItemEquiped("belt08",Player1)
HasItemEquiped("belt06",Player1)
HasItemEquiped("belt07",Player1)
HasItemEquiped("hamm09",Player1)
HasItemEquiped("blun19",Player1)
HasItemEquiped("sw1h61",Player1)
HasItemEquiped("brac06",Player1)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO magicstrong

 IF ~RandomNum(21,4)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO yettolearn
 IF ~RandomNum(21,5) !AreaType(OUTDOOR)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO yawn
 IF ~RandomNum(21,5) AreaType(OUTDOOR) TimeOfDay(DAY)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO canteen
 IF ~RandomNum(21,5) AreaType(OUTDOOR) TimeOfDay(NIGHT)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO ruleitall
 IF ~RandomNum(21,6) !AreaType(OUTDOOR)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO yawn
 IF ~RandomNum(21,6) AreaType(OUTDOOR)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO bracelet
 IF ~RandomNum(21,7)
OR(3)
AreaType(CITY)
AreaCheck("AR5003")
AreaCheck("AR5501")~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO surfacefemales

 IF ~RandomNum(21,8)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO burninggaze
 IF ~RandomNum(21,9)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO thankyourescue
 IF ~RandomNum(21,10)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO homelycows
 IF ~RandomNum(21,11)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO rubfest
 IF ~RandomNum(21,12)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO rubme
 IF ~RandomNum(21,13)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO donotmove

 IF ~RandomNum(21,14)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO palatable

 IF ~RandomNum(21,15)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO pivots
 IF ~RandomNum(21,16) Alignment("Viconia",NEUTRAL) GlobalGT("ExpLoveTalk","LOCALS",14)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO neutralalign
 IF ~RandomNum(21,16) GlobalLT("ViconiaChange","GLOBAL",1)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO evilalign
 IF ~RandomNum(21,16) !Alignment("Viconia",NEUTRAL) GlobalGT("ViconiaChange","GLOBAL",0)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO mixedalign

 IF ~RandomNum(21,17)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO bewitched
 IF ~RandomNum(21,18) AreaType(OUTDOOR) TimeOfDay(DAY)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO fireball
 IF ~RandomNum(21,19)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO onyourknees
 IF ~RandomNum(21,20) GlobalLT("FWViconiaFlirt","GLOBAL",60)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO domination
 IF ~RandomNum(21,20) GlobalGT("FWViconiaFlirt","GLOBAL",59)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO yourpassions
 IF ~RandomNum(21,21) !HPLT(Player1,30)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO hale
 IF ~RandomNum(21,21) HPLT(Player1,30)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO suchweakness
 IF ~GlobalGT("ExpLoveTalk","LOCALS",12) Global("FWDidViconiaEpilogueSet","GLOBAL",0)~ THEN DO ~SetGlobal("FWDidViconiaEpilogueSet","GLOBAL",1) IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO viconiaepset

END

IF ~~ THEN BEGIN appreciateplaces
SAY @351
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN yawn
SAY @350
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hale
SAY @349
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN nonhaughty
SAY @346
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN viconiaepset
SAY @287
IF ~~ THEN REPLY @288 GOTO epset2
IF ~!Alignment("Viconia",NEUTRAL)~ THEN REPLY @289 GOTO epset3
IF ~Alignment("Viconia",NEUTRAL)~ THEN REPLY @289 GOTO epset3a
IF ~~ THEN REPLY @290 GOTO epset4
IF ~~ THEN REPLY @291 GOTO epset5
IF ~!Alignment("Viconia",NEUTRAL)~ THEN REPLY @292 GOTO epset6
IF ~Alignment("Viconia",NEUTRAL)~ THEN REPLY @292 GOTO epset6a
END

IF ~~ THEN BEGIN epset2
SAY @293
IF ~~ THEN GOTO epset7
END

IF ~~ THEN BEGIN epset3
SAY @294
IF ~~ THEN GOTO epset7
END

IF ~~ THEN BEGIN epset3a
SAY @295
IF ~~ THEN GOTO epset7
END

IF ~~ THEN BEGIN epset4
SAY @296
IF ~~ THEN GOTO epset7
END

IF ~~ THEN BEGIN epset5
SAY @297
IF ~~ THEN GOTO epset7
END

IF ~~ THEN BEGIN epset6
SAY @298
IF ~~ THEN GOTO epset7
END

IF ~~ THEN BEGIN epset6a
SAY @299
IF ~~ THEN GOTO epset7
END

IF ~~ THEN BEGIN epset7
SAY @300
IF ~~ THEN REPLY @301 GOTO epset8
IF ~!Alignment("Viconia",NEUTRAL)~ THEN REPLY @302 GOTO epset9
IF ~Alignment("Viconia",NEUTRAL)~ THEN REPLY @302 GOTO epset10
IF ~~ THEN REPLY @303 GOTO epset11
IF ~!Alignment("Viconia",NEUTRAL)~ THEN REPLY @304 GOTO stayevildecide
IF ~Alignment("Viconia",NEUTRAL)~ THEN REPLY @304 GOTO stayneutral
IF ~~ THEN REPLY @305 GOTO epset12
END

IF ~~ THEN BEGIN epset8
SAY @306
IF ~~ THEN GOTO stay1
END

IF ~~ THEN BEGIN epset9
SAY @307
IF ~~ THEN GOTO stay1
END

IF ~~ THEN BEGIN epset10
SAY @308
IF ~~ THEN GOTO stay1
END

IF ~~ THEN BEGIN epset11
SAY @309
IF ~~ THEN GOTO stay1
END

IF ~~ THEN BEGIN epset12
SAY @310
IF ~~ THEN GOTO stay1
END

IF ~~ THEN BEGIN stay1
SAY @311
IF ~~ THEN REPLY @312 GOTO stay2
IF ~~ THEN REPLY @313 GOTO goaway
IF ~!Alignment("Viconia",NEUTRAL)~ THEN REPLY @314 GOTO stayevildecide
IF ~Alignment("Viconia",NEUTRAL)~ THEN REPLY @314 GOTO stayneutral2
IF ~!Alignment("Viconia",NEUTRAL)~ THEN REPLY @315 GOTO stayevilsuggest
IF ~Alignment("Viconia",NEUTRAL)~ THEN REPLY @315 GOTO stayneutral
IF ~!Alignment("Viconia",NEUTRAL)~ THEN REPLY @316 GOTO naughty
IF ~Alignment("Viconia",NEUTRAL)~ THEN REPLY @316 GOTO nice
END

IF ~~ THEN BEGIN nice
SAY @317 = @318
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN naughty
SAY @319 = @320
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN goaway
SAY @321
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN stay2
SAY @322
IF ~Alignment("Viconia",NEUTRAL)~ THEN GOTO stay3
IF ~!Alignment("Viconia",NEUTRAL) ReputationLT(Player1,13)~ THEN GOTO stay4
IF ~!Alignment("Viconia",NEUTRAL) ReputationGT(Player1,12)~ THEN GOTO stay5
END

IF ~~ THEN BEGIN stay3
SAY @323 = @318
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN stay4
SAY @324
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN stay5
SAY @325
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN stayneutral
SAY @326
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN stayneutral2
SAY @327
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN stayevilsuggest
SAY @328
IF ~~ THEN GOTO stayevildecide
END

IF ~~ THEN BEGIN stayevildecide
SAY @329
IF ~~ THEN GOTO stayevilyes
IF ~!Dead("Sarevok") !Alignment("Sarevok",CHAOTIC_EVIL)~ THEN GOTO stayevilchangesarevok
IF ~GlobalGT("ViconiaChange","GLOBAL",0)~ THEN GOTO stayevilchangeme
IF ~ReputationGT(Player1,12)~ THEN GOTO stayevilrep12
IF ~!Alignment(Player1,CHAOTIC_NEUTRAL)
!Alignment(Player1,MASK_EVIL)~ THEN GOTO stayevilnochance
END

IF ~~ THEN BEGIN stayevilnochance
SAY @330
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN stayevilrep12
SAY @331
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN stayevilyes
SAY @332 = @333
IF ~~ THEN DO ~SetGlobal("FWViconiaEvilEp","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN stayevilchangeme
SAY @334
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN stayevilchangesarevok
SAY @335 = @336
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN yettolearn
SAY @225
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN thankyourescue
SAY @226
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN neutralalign
SAY @227
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN evilalign
SAY @228
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN mixedalign
SAY @286
IF ~~ THEN EXIT
END


IF
~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
Global("ViconiaRomanceActive","GLOBAL",2)
!GlobalGT("ExpLoveTalk","LOCALS",2)~
THEN BEGIN viconiaflirtbaseno
SAY @282
IF ~~ THEN EXIT
END



IF
~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
Global("ViconiaRomanceActive","GLOBAL",2)
GlobalGT("ExpLoveTalk","LOCALS",2)~
THEN BEGIN viconiaflirtbase2
SAY @229

 IF ~RandomNum(4,1)~ THEN REPLY @4 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO roughkiss1
 IF ~RandomNum(4,2)~ THEN REPLY @4 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO roughkiss2
 IF ~RandomNum(4,3)~ THEN REPLY @4 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO roughkiss5
 IF ~RandomNum(4,4)~ THEN REPLY @4 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO roughkiss4

 IF ~RandomNum(4,1) Alignment("Viconia",NEUTRAL)~ THEN REPLY @5 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO sweetkiss4
 IF ~RandomNum(4,1) !Alignment("Viconia",NEUTRAL)~ THEN REPLY @5 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO sweetkiss3
 IF ~RandomNum(4,2)~ THEN REPLY @5 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO sweetkiss2
 IF ~RandomNum(4,3)~ THEN REPLY @5 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO sweetkiss3
 IF ~RandomNum(4,4)~ THEN REPLY @5 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO sweetkiss5

 IF ~RandomNum(4,1)~ THEN REPLY @6 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO brushhair1
 IF ~RandomNum(4,2)~ THEN REPLY @6 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO brushhair2
 IF ~RandomNum(4,3)~ THEN REPLY @6 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO brushhair3
 IF ~RandomNum(4,4)~ THEN REPLY @6 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO brushhair3

 IF ~RandomNum(4,1)~ THEN REPLY @7 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO fondle1
 IF ~RandomNum(4,2)~ THEN REPLY @7 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO fondle2
 IF ~RandomNum(4,3)~ THEN REPLY @7 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO fondle3
 IF ~RandomNum(4,4)~ THEN REPLY @7 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO fondle4

 IF ~RandomNum(4,1)~ THEN REPLY @8 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO rear1
 IF ~RandomNum(4,2)~ THEN REPLY @8 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO rear2
 IF ~RandomNum(4,3)~ THEN REPLY @8 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO rear3
 IF ~RandomNum(4,4)~ THEN REPLY @8 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO rear4

 IF ~RandomNum(4,1)~ THEN REPLY @9 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO ogle1
 IF ~RandomNum(4,2)~ THEN REPLY @9 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO ogle2
 IF ~RandomNum(4,3)~ THEN REPLY @9 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO ogle3
 IF ~RandomNum(4,4)~ THEN REPLY @9 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO ogle2

 IF ~RandomNum(4,1)~ THEN REPLY @10 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO shoulders1
 IF ~RandomNum(4,2)~ THEN REPLY @10 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO shoulders2
 IF ~RandomNum(4,3)~ THEN REPLY @10 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO shoulders3
 IF ~RandomNum(4,4) Alignment("Viconia",NEUTRAL)~ THEN REPLY @10 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO shoulders4
 IF ~RandomNum(4,4) !Alignment("Viconia",NEUTRAL)~ THEN REPLY @10 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO shoulders3

 IF ~RandomNum(4,1) !Alignment("Viconia",NEUTRAL)~ THEN REPLY @11 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO smile1
 IF ~RandomNum(4,1) Alignment("Viconia",NEUTRAL)~ THEN REPLY @11 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO smile3
 IF ~RandomNum(4,2)~ THEN REPLY @11 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO smile2
 IF ~RandomNum(4,3)~ THEN REPLY @11 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO smile3
 IF ~RandomNum(4,4)~ THEN REPLY @11 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO smile4

 IF ~RandomNum(4,1)~ THEN REPLY @12 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hug1
 IF ~RandomNum(4,2)~ THEN REPLY @12 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hug4
 IF ~RandomNum(4,3)~ THEN REPLY @12 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hug3
 IF ~RandomNum(4,4)~ THEN REPLY @12 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hug5

 IF ~RandomNum(4,1)~ THEN REPLY @13 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hand4
 IF ~RandomNum(4,2)~ THEN REPLY @13 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hand2
 IF ~RandomNum(4,3)~ THEN REPLY @13 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hand3
 IF ~RandomNum(4,4) Alignment("Viconia",NEUTRAL)~ THEN REPLY @13 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hand4
 IF ~RandomNum(4,4) !Alignment("Viconia",NEUTRAL)~ THEN REPLY @13 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hand2

 IF ~RandomNum(4,1)~ THEN REPLY @14 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO biteear1
 IF ~RandomNum(4,2)~ THEN REPLY @14 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO biteear2
 IF ~RandomNum(4,3)~ THEN REPLY @14 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO biteear3
 IF ~RandomNum(4,4)~ THEN REPLY @14 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO biteear4

 IF ~RandomNum(4,1)~ THEN REPLY @16 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO suckle1
 IF ~RandomNum(4,2)~ THEN REPLY @16 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO suckle2
 IF ~RandomNum(4,3)~ THEN REPLY @16 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO suckle3
 IF ~RandomNum(4,4)~ THEN REPLY @16 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO suckle3

 IF ~RandomNum(4,1)~ THEN REPLY @17 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO crush1
 IF ~RandomNum(4,2)~ THEN REPLY @17 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO crush2
 IF ~RandomNum(4,3)~ THEN REPLY @17 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO crush3
 IF ~RandomNum(4,4)~ THEN REPLY @17 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO crush4

 IF ~RandomNum(4,1)~ THEN REPLY @18 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO loveyou1
 IF ~RandomNum(4,2)~ THEN REPLY @18 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO loveyou2
 IF ~RandomNum(4,3)~ THEN REPLY @18 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO loveyou5
 IF ~RandomNum(4,4)~ THEN REPLY @18 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO loveyou5

 IF ~RandomNum(4,1)~ THEN REPLY @23 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO breeches1
 IF ~RandomNum(4,2)~ THEN REPLY @23 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO breeches2
 IF ~RandomNum(4,3)~ THEN REPLY @23 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO breeches3
 IF ~RandomNum(4,4)~ THEN REPLY @23 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO breeches1

 IF ~RandomNum(4,1)~ THEN REPLY @24 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO lickbreasts1
 IF ~RandomNum(4,2) !Alignment("Viconia",NEUTRAL)~ THEN REPLY @24 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO lickbreasts2
 IF ~RandomNum(4,2) Alignment("Viconia",NEUTRAL)~ THEN REPLY @24 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO lickbreasts1
 IF ~RandomNum(4,3)~ THEN REPLY @24 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO lickbreasts3
 IF ~RandomNum(4,4)~ THEN REPLY @24 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO lickbreasts3

 IF ~RandomNum(4,1)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ THEN REPLY @25 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO innbath6

 IF ~RandomNum(4,2)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ THEN REPLY @25 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO innbath5

 IF ~RandomNum(4,3)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ THEN REPLY @25 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO innbath3

 IF ~RandomNum(4,4)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ THEN REPLY @25 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO innbath4

 IF ~RandomNum(4,1)
AreaCheck("AR6400")~ THEN REPLY @25 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO streambath1

 IF ~RandomNum(4,2)
AreaCheck("AR6400")~ THEN REPLY @25 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO streambath2

 IF ~RandomNum(4,3)
AreaCheck("AR6400")~ THEN REPLY @25 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO streambath3

 IF ~RandomNum(4,4)
AreaCheck("AR6400")~ THEN REPLY @25 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO streambath4

 IF ~RandomNum(4,1) Global("SleptViconia3","GLOBAL",1)~ THEN REPLY @26 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO forbidden1
 IF ~RandomNum(4,2) Global("SleptViconia3","GLOBAL",1)~ THEN REPLY @26 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO forbidden2
 IF ~RandomNum(4,3) Global("SleptViconia3","GLOBAL",1)~ THEN REPLY @26 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO forbidden3
 IF ~RandomNum(4,4) Global("SleptViconia3","GLOBAL",1)~ THEN REPLY @26 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO forbidden4
 IF ~!Alignment("Viconia",NEUTRAL) GlobalGT("ExpLoveTalk","LOCALS",6) !Global("SleptViconia3","GLOBAL",1)~ THEN REPLY @26 DO ~SetGlobal("SleptViconia3","GLOBAL",1) IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO forbidden5
 IF ~Alignment("Viconia",NEUTRAL) GlobalGT("ExpLoveTalk","LOCALS",6) !Global("SleptViconia3","GLOBAL",1)~ THEN REPLY @26 DO ~SetGlobal("SleptViconia3","GLOBAL",1) IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO forbidden6

 IF ~RandomNum(4,1)~ THEN REPLY @230 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO flash1
 IF ~RandomNum(4,2)~ THEN REPLY @230 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO flash2
 IF ~RandomNum(4,3)~ THEN REPLY @230 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO flash2
 IF ~RandomNum(4,4)~ THEN REPLY @230 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO flash3

 IF ~RandomNum(4,1)~ THEN REPLY @231 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO admire1
 IF ~RandomNum(4,2)~ THEN REPLY @231 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO admire2
 IF ~RandomNum(4,3)~ THEN REPLY @231 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO admire3
 IF ~RandomNum(4,4) !Alignment("Viconia",NEUTRAL)~ THEN REPLY @231 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO admire3
 IF ~RandomNum(4,4) Alignment("Viconia",NEUTRAL)~ THEN REPLY @231 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO admire4

 IF ~RandomNum(4,1)~ THEN REPLY @232 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO wink1
 IF ~RandomNum(4,2)~ THEN REPLY @232 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO wink2
 IF ~RandomNum(4,3)~ THEN REPLY @232 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO wink2
 IF ~RandomNum(4,4)~ THEN REPLY @232 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO wink3

 IF ~RandomNum(4,1)~ THEN REPLY @233 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO tackle1
 IF ~RandomNum(4,2)~ THEN REPLY @233 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO tackle2
 IF ~RandomNum(4,3)~ THEN REPLY @233 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO tackle2
 IF ~RandomNum(4,4)~ THEN REPLY @233 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO tackle3

 IF ~RandomNum(4,1)~ THEN REPLY @234 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO smile4me1
 IF ~RandomNum(4,2)~ THEN REPLY @234 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO smile4me2
 IF ~RandomNum(4,3)~ THEN REPLY @234 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO smile4me3
 IF ~RandomNum(4,4)~ THEN REPLY @234 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO smile4me4

 IF ~RandomNum(4,1)~ THEN REPLY @235 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO waist1
 IF ~RandomNum(4,2)~ THEN REPLY @235 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO waist2
 IF ~RandomNum(4,3)~ THEN REPLY @235 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO waist2
 IF ~RandomNum(4,4)~ THEN REPLY @235 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO waist3

 IF ~RandomNum(4,1)~ THEN REPLY @236 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO cheek1
 IF ~RandomNum(4,2)~ THEN REPLY @236 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO cheek2
 IF ~RandomNum(4,3)~ THEN REPLY @236 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO cheek2
 IF ~RandomNum(4,4)~ THEN REPLY @236 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO cheek3

 IF ~RandomNum(4,1)~ THEN REPLY @237 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO tickle1
 IF ~RandomNum(4,2)~ THEN REPLY @237 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO tickle2
 IF ~RandomNum(4,3)~ THEN REPLY @237 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO tickle3
 IF ~RandomNum(4,4)~ THEN REPLY @237 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO tickle3

+ ~Global("FWDisableFlirtsNPC","GLOBAL",0)~ + @2001 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",1)~ + flirting

+ ~Global("FWDisableFlirtsNPC","GLOBAL",1)~ + @2002 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",0)~ + flirting

 IF ~~ THEN REPLY @19 EXIT

END

IF ~~ THEN flirting
SAY @2003
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN forbidden5
SAY @347
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN forbidden6
SAY @348
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN forbidden4
SAY @345
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN innbath6
SAY @337 = @338 = @339 = @340 = @341 = @342 = @343 = @344
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN cheek1
SAY @238
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN cheek2
SAY @239
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN cheek3
SAY @240
= @241
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tickle1
SAY @242
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tickle2
SAY @243
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tickle3
SAY @244
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smile4me1
SAY @245
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smile4me2
SAY @246
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smile4me3
SAY @247
= @248
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smile4me4
SAY @249
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN waist1
SAY @250
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN waist2
SAY @251
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN waist3
SAY @252
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN wink1
SAY @253
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN wink2
SAY @254
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN wink3
SAY @255
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tackle1
SAY @256
= @257
= @258
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tackle2
SAY @259
= @260
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tackle3
SAY @261
IF ~~ THEN EXIT
END




IF ~~ THEN BEGIN innbath5
SAY @262
= @263
= @264
= @265
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN streambath4
SAY @266
= @267
= @268
= @269
= @270
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flash1
SAY @271
= @272 /* Aerie shriek? */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flash2
SAY @273
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flash3
SAY @274
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN admire1
SAY @275
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN admire2
SAY @276
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN admire3
SAY @277
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN admire4
SAY @278
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug5
SAY @279
= @280
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN loveyou5
SAY @281
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN loveyou1
SAY @27
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN loveyou2
SAY @28
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN loveyou3
SAY @29
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN loveyou4
SAY @30 = @31 = @32
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN breeches1
SAY @33
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN breeches2
SAY @34
= @35
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN breeches3
SAY @36
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN innbath1
SAY @37
= @38
= @39
= @40
= @41
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN innbath2
SAY @42
= @43
= @44
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN innbath3
SAY @45
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN innbath4
SAY @46
= @47
= @48
= @49
= @50
= @51
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN streambath1
SAY @52
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN streambath2
SAY @53
= @54
= @55
= @56
= @57
= @58
= @59
= @60
= @61
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN streambath3
SAY @62
= @63
= @64
= @65
= @66
= @67
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN forbidden1
SAY @68
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN forbidden2
SAY @69
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN forbidden3
SAY @70
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lickbreasts1
SAY @71
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lickbreasts2
SAY @72
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lickbreasts3
SAY @73
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN roughkiss5
SAY @74
= @75
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sweetkiss4
SAY @76
= @77
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sweetkiss5
SAY @78
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smile3
SAY @79
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smile4
SAY @80
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug4
SAY @81
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hand4
SAY @82 = @283
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN domination
SAY @83
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN yourpassions
SAY @84
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN suchweakness
SAY @85
IF ~~ THEN DO ~ReallyForceSpell(PLAYER1,CLERIC_CURE_MEDIUM_WOUNDS)~ EXIT
END

IF ~~ THEN BEGIN discomfort
SAY @86
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bewitched
SAY @87
= @88
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fireball
SAY @89
= @90
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN onyourknees
SAY @91
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN donotmove
SAY @92
= @93
= @94
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN palatable
SAY @95
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN pivots
SAY @96
= @97
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ruleitall
SAY @98
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rubfest
SAY @99
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rubme
SAY @100
IF ~~ THEN REPLY @101 GOTO rubme1
IF ~~ THEN REPLY @102 GOTO rubme2
IF ~~ THEN REPLY @103 GOTO rubme3
IF ~~ THEN REPLY @104 GOTO rubme4
END

IF ~~ THEN BEGIN rubme1
SAY @105
= @106
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rubme2
SAY @107
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rubme3
SAY @108
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rubme4
SAY @109
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN burninggaze
SAY @110
= @111
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN notsteed
SAY @112
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN homelycows
SAY @113
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN canteen
SAY @114
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bracelet
SAY @115
= @116
= @117
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN surfacefemales
SAY @118
= @119
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN replt7
SAY @120
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN replt10
SAY @121
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN repgt12
SAY @122
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN repgt15
SAY @123
= @124
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN strong
SAY @125
= @126
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN magicstrong
SAY @127
= @128
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN haughty
SAY @129
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN dungeon
SAY @130
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN forest
SAY @131
= @132
= @133
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN reallyweak
SAY @134
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN weak
SAY @135 = @136
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN sweetkiss1
SAY @137
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sweetkiss2
SAY @138
= @139
= @140
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sweetkiss3
SAY @141
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brushhair1
SAY @142
= @143
= @144
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brushhair2
SAY @145
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brushhair3
SAY @146
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fondle1
SAY @147
= @148
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fondle2
SAY @149
= @150
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fondle3
SAY @151
= @152
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fondle4
SAY @153
= @154
= @155
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rear1
SAY @156
= @157
= @158
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rear2
SAY @159
= @160
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rear3
SAY @161
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rear4
SAY @162
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN roughkiss1
SAY @163
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN roughkiss2
SAY @164
= @165
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN roughkiss3
SAY @166
= @167 = @168
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN roughkiss4
SAY @169 = @170
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ogle1
SAY @171
= @172
= @173
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ogle2
SAY @174
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ogle3
SAY @175
= @176
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN shoulders1
SAY @177
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN shoulders2
SAY @178
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN shoulders3
SAY @179
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN shoulders4
SAY @180
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smile1
SAY @181
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smile2
SAY @182
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug1
SAY @183
= @184
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug2
SAY @185
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug3
SAY @186
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hand1
SAY @187
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hand2
SAY @188
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hand3
SAY @189
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN biteear1
SAY @190
= @191
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN biteear2
SAY @192
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN biteear3
SAY @193
= @194
= @195
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN biteear4
SAY @196
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN mindoff1
SAY @197
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN mindoff2
SAY @198
= @199
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN mindoff3
SAY @200
= @201
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN mindoff4
SAY @202
= @203
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN suckle1
SAY @204
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN suckle2
SAY @205
= @206
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN suckle3
SAY @207
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN crush1
SAY @208
= @209
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN crush2
SAY @210
= @211
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN crush3
SAY @212
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN crush4
SAY @213
IF ~~ THEN EXIT
END

END
