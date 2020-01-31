// Viconia LESS INTERESTED in flirting after LT=75, so stop initiating flirts at that point.

// Start flirts after LT8, which is also when Viconia refers to herself in sexy third person, Kish.

/* Top-levels for Viconia-inits are first. */

APPEND VICONIJ

IF
~Global("FWViconiaStartFlirtSOA","GLOBAL",1)
Global("ViconiaRomanceActive","GLOBAL",1)~
THEN BEGIN viconiainitflirtbase1
SAY @0
IF ~~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO haughty
 IF ~RandomNum(15,1)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO haughty
 IF ~RandomNum(15,2) AreaType(DUNGEON)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO dungeon
 IF ~RandomNum(15,2) AreaType(FOREST)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO forest
 IF ~RandomNum(15,3) CheckStatLT(Player1,9,STR)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO reallyweak
 IF ~RandomNum(15,3) CheckStatGT(Player1,8,STR) CheckStatLT(Player1,13,STR)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO weak
 IF ~RandomNum(15,3) CheckStatGT(Player1,16,STR)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO strong
 IF ~RandomNum(15,3)
 OR(8)
HasItemEquiped("belt11",Player1)
HasItemEquiped("belt08",Player1)
HasItemEquiped("belt06",Player1)
HasItemEquiped("belt07",Player1)
HasItemEquiped("hamm09",Player1)
HasItemEquiped("blun19",Player1)
HasItemEquiped("sw1h61",Player1)
HasItemEquiped("brac06",Player1)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO magicstrong

 IF ~RandomNum(15,4) ReputationLT(Player1,8)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO replt7
 IF ~RandomNum(15,4) ReputationGT(Player1,6) ReputationLT(Player1,10)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO replt10
 IF ~RandomNum(15,4) ReputationGT(Player1,12) ReputationLT(Player1,16)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO repgt12
 IF ~RandomNum(15,4) ReputationGT(Player1,15)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO repgt15
 IF ~RandomNum(15,5) AreaType(OUTDOOR) TimeOfDay(DAY)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO canteen
 IF ~RandomNum(15,5) AreaType(OUTDOOR) TimeOfDay(NIGHT)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO ruleitall
 IF ~RandomNum(15,6) AreaType(OUTDOOR)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO bracelet
 IF ~RandomNum(15,7)
OR(11)
AreaType(CITY)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO surfacefemalesearly

 IF ~RandomNum(15,8)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO burninggaze
 IF ~RandomNum(15,9)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO notsteed
 IF ~RandomNum(15,10)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO homelycows
 IF ~RandomNum(15,11)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO rubfest
 IF ~RandomNum(15,12)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO rubme
 IF ~RandomNum(15,13)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO donotmove

 IF ~RandomNum(15,14)
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
AreaCheck("AR1602")~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO palatable

 IF ~RandomNum(15,15)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO pivots

END

// Top-level Viconia-init for Active=2

IF
~Global("FWViconiaStartFlirtSOA","GLOBAL",1)
Global("ViconiaRomanceActive","GLOBAL",2)~
THEN BEGIN viconiainitflirtbase2
SAY @1
IF ~~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO discomfort
 IF ~RandomNum(21,1)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO haughty
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

 IF ~RandomNum(21,4) ReputationLT(Player1,7)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO replt7
 IF ~RandomNum(21,4) ReputationGT(Player1,6) ReputationLT(Player1,10)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO replt10
 IF ~RandomNum(21,4) ReputationGT(Player1,12) ReputationLT(Player1,16)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO repgt12
 IF ~RandomNum(21,4) ReputationGT(Player1,15)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO repgt15
 IF ~RandomNum(21,5) AreaType(OUTDOOR) TimeOfDay(DAY)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO canteen
 IF ~RandomNum(21,5) AreaType(OUTDOOR) TimeOfDay(NIGHT)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO ruleitall
 IF ~RandomNum(21,6) AreaType(OUTDOOR)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO bracelet
 IF ~RandomNum(21,7)
OR(11)
AreaType(CITY)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO surfacefemales

 IF ~RandomNum(21,8)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO burninggaze
 IF ~RandomNum(21,9)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO notsteed
 IF ~RandomNum(21,10)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO homelycows
 IF ~RandomNum(21,11)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO rubfest
 IF ~RandomNum(21,12)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO rubme
 IF ~RandomNum(21,13)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO donotmove

 IF ~RandomNum(21,14)
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
AreaCheck("AR1602")~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO palatable

 IF ~RandomNum(21,15)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO pivots
 IF ~RandomNum(21,16)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO discomfort
 IF ~RandomNum(21,17)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO bewitched
 IF ~RandomNum(21,18) AreaType(OUTDOOR) TimeOfDay(DAY)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO fireball
 IF ~RandomNum(21,19)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO onyourknees
 IF ~RandomNum(21,20) GlobalLT("FWViconiaFlirt","GLOBAL",60)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO domination
 IF ~RandomNum(21,20) GlobalGT("FWViconiaFlirt","GLOBAL",59)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO yourpassions
 IF ~RandomNum(21,21) HPLT(Player1,20)~ THEN DO ~IncrementGlobal("FWViconiaRandFlirt","LOCALS",1)~ GOTO suchweakness

END





// Viconia agitated in mid-romance

IF ~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
Global("ViconiaRomanceActive","GLOBAL",1)
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
!AreaCheck("AR2402")
OR(4)
Global("Lovetalk","LOCALS",11)
Global("Lovetalk","LOCALS",15)
Global("Lovetalk","LOCALS",27)
GlobalGT("Lovetalk","LOCALS",42)~ THEN BEGIN viconiapissy
SAY @2
IF ~~ THEN EXIT
END

// Active = 1 top-level PC-init

IF
~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
GlobalGT("Lovetalk","LOCALS",8)
Global("ViconiaRomanceActive","GLOBAL",1)
!Global("Lovetalk","LOCALS",11)
!Global("Lovetalk","LOCALS",15)
!Global("Lovetalk","LOCALS",27)
!GlobalGT("Lovetalk","LOCALS",42)
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
THEN BEGIN viconiaflirtbase1
SAY @3

 IF ~RandomNum(4,1)~ THEN REPLY @4 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO roughkiss1
 IF ~RandomNum(4,2)~ THEN REPLY @4 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO roughkiss2
 IF ~RandomNum(4,3)~ THEN REPLY @4 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO roughkiss3
 IF ~RandomNum(4,4)~ THEN REPLY @4 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO roughkiss4

 IF ~RandomNum(4,1)~ THEN REPLY @5 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO sweetkiss1
 IF ~RandomNum(4,2) GlobalGT("Lovetalk","LOCALS",34)~ THEN REPLY @5 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO sweetkiss2
 IF ~RandomNum(4,2) !GlobalGT("Lovetalk","LOCALS",34)~ THEN REPLY @5 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO sweetkiss3
 IF ~RandomNum(4,3)~ THEN REPLY @5 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO sweetkiss3
 IF ~RandomNum(4,4)~ THEN REPLY @5 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO sweetkiss1

 IF ~RandomNum(4,1) GlobalGT("Lovetalk","LOCALS",34)~ THEN REPLY @6 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO brushhair1
 IF ~RandomNum(4,1) !GlobalGT("Lovetalk","LOCALS",34)~ THEN REPLY @6 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO brushhair2
 IF ~RandomNum(4,2)~ THEN REPLY @6 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO brushhair2
 IF ~RandomNum(4,3)~ THEN REPLY @6 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO brushhair3
 IF ~RandomNum(4,4)~ THEN REPLY @6 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO brushhair3

 IF ~RandomNum(4,1) GlobalGT("Lovetalk","LOCALS",34)~ THEN REPLY @7 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO fondle1
 IF ~RandomNum(4,2) GlobalGT("Lovetalk","LOCALS",34)~ THEN REPLY @7 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO fondle2
 IF ~RandomNum(4,3) GlobalGT("Lovetalk","LOCALS",34)~ THEN REPLY @7 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO fondle3
 IF ~RandomNum(4,4) GlobalGT("Lovetalk","LOCALS",34)~ THEN REPLY @7 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO fondle4

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
 IF ~RandomNum(4,4)~ THEN REPLY @10 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO shoulders1

 IF ~RandomNum(4,1)~ THEN REPLY @11 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO smile1
 IF ~RandomNum(4,2)~ THEN REPLY @11 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO smile1
 IF ~RandomNum(4,3)~ THEN REPLY @11 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO smile2
 IF ~RandomNum(4,4)~ THEN REPLY @11 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO smile2

 IF ~RandomNum(4,1)~ THEN REPLY @12 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hug1
 IF ~RandomNum(4,2)~ THEN REPLY @12 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hug2
 IF ~RandomNum(4,3)~ THEN REPLY @12 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hug1
 IF ~RandomNum(4,4)~ THEN REPLY @12 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hug2

 IF ~RandomNum(4,1)~ THEN REPLY @13 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hand1
 IF ~RandomNum(4,2)~ THEN REPLY @13 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hand2
 IF ~RandomNum(4,3)~ THEN REPLY @13 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hand3
 IF ~RandomNum(4,4)~ THEN REPLY @13 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hand1

 IF ~RandomNum(4,1)~ THEN REPLY @14 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO biteear1
 IF ~RandomNum(4,2)~ THEN REPLY @14 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO biteear2
 IF ~RandomNum(4,3)~ THEN REPLY @14 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO biteear3
 IF ~RandomNum(4,4)~ THEN REPLY @14 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO biteear4

 IF ~RandomNum(4,1)~ THEN REPLY @15 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO mindoff1
 IF ~RandomNum(4,2)~ THEN REPLY @15 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO mindoff2
 IF ~RandomNum(4,3)~ THEN REPLY @15 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO mindoff3
 IF ~RandomNum(4,4)~ THEN REPLY @15 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO mindoff4

 IF ~RandomNum(4,1)~ THEN REPLY @16 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO suckle1
 IF ~RandomNum(4,2)~ THEN REPLY @16 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO suckle2
 IF ~RandomNum(4,3)~ THEN REPLY @16 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO suckle3
 IF ~RandomNum(4,4)~ THEN REPLY @16 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO suckle3

 IF ~RandomNum(4,1)~ THEN REPLY @17 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO crush1
 IF ~RandomNum(4,2)~ THEN REPLY @17 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO crush2
 IF ~RandomNum(4,3)~ THEN REPLY @17 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO crush3
 IF ~RandomNum(4,4)~ THEN REPLY @17 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO crush4

 IF ~RandomNum(4,1) GlobalGT("Lovetalk","LOCALS",35)~ THEN REPLY @18 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO loveyou1
 IF ~RandomNum(4,2) GlobalGT("Lovetalk","LOCALS",35)~ THEN REPLY @18 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO loveyou2
 IF ~RandomNum(4,3) GlobalGT("Lovetalk","LOCALS",35)~ THEN REPLY @18 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO loveyou3
 IF ~RandomNum(4,4) GlobalGT("Lovetalk","LOCALS",35)~ THEN REPLY @18 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO loveyou4

+ ~GlobalGT("Lovetalk","LOCALS",8) Global("FWDisableFlirtsNPC","GLOBAL",0)~ + @2001 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",1)~ + flirting

+ ~Global("FWDisableFlirtsNPC","GLOBAL",1)~ + @2002 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",0)~ + flirting

 ++ @352 + breakup

 IF ~~ THEN REPLY @19 EXIT

END

IF ~~ THEN flirting
SAY @2003
IF ~~ THEN EXIT
END

IF ~~ breakup
SAY @353
IF ~~ DO ~SG("ViconiaRomanceActive",3)~ EXIT
END


// LT70-76 she's upset over the attack


IF ~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
Global("ViconiaRomanceActive","GLOBAL",2)
GlobalGT("Lovetalk","LOCALS",70)
GlobalLT("Lovetalk","LOCALS",76)~ THEN BEGIN viconiapissy2
SAY @20
IF ~~ THEN EXIT
END

// >LT 76, "agreed to stay."

IF ~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
Global("ViconiaRomanceActive","GLOBAL",2)
GlobalGT("Lovetalk","LOCALS",75)~ THEN BEGIN viconiapissy3
SAY @21
IF ~~ THEN EXIT
END

// regular Active=2 PC-inits

IF
~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
Global("ViconiaRomanceActive","GLOBAL",2)
GlobalLT("Lovetalk","LOCALS",71)
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
THEN BEGIN viconiaflirtbase2
SAY @22

 IF ~RandomNum(4,1)~ THEN REPLY @4 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO roughkiss1
 IF ~RandomNum(4,2)~ THEN REPLY @4 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO roughkiss2
 IF ~RandomNum(4,3)~ THEN REPLY @4 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO roughkiss5
 IF ~RandomNum(4,4)~ THEN REPLY @4 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO roughkiss4

 IF ~RandomNum(4,1)~ THEN REPLY @5 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO sweetkiss4
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
 IF ~RandomNum(4,4)~ THEN REPLY @10 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO shoulders4

 IF ~RandomNum(4,1)~ THEN REPLY @11 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO smile1
 IF ~RandomNum(4,2)~ THEN REPLY @11 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO smile2
 IF ~RandomNum(4,3)~ THEN REPLY @11 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO smile3
 IF ~RandomNum(4,4)~ THEN REPLY @11 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO smile4

 IF ~RandomNum(4,1)~ THEN REPLY @12 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hug1
 IF ~RandomNum(4,2)~ THEN REPLY @12 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hug2
 IF ~RandomNum(4,3)~ THEN REPLY @12 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hug3
 IF ~RandomNum(4,4)~ THEN REPLY @12 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hug4

 IF ~RandomNum(4,1)~ THEN REPLY @13 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hand4
 IF ~RandomNum(4,2)~ THEN REPLY @13 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hand2
 IF ~RandomNum(4,3)~ THEN REPLY @13 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hand3
 IF ~RandomNum(4,4)~ THEN REPLY @13 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO hand4

 IF ~RandomNum(4,1)~ THEN REPLY @14 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO biteear1
 IF ~RandomNum(4,2)~ THEN REPLY @14 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO biteear2
 IF ~RandomNum(4,3)~ THEN REPLY @14 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO biteear3
 IF ~RandomNum(4,4)~ THEN REPLY @14 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO biteear4

 IF ~RandomNum(4,1)~ THEN REPLY @15 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO mindoff1
 IF ~RandomNum(4,2)~ THEN REPLY @15 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO mindoff2
 IF ~RandomNum(4,3)~ THEN REPLY @15 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO mindoff3
 IF ~RandomNum(4,4)~ THEN REPLY @15 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO mindoff4

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
 IF ~RandomNum(4,3)~ THEN REPLY @18 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO loveyou3
 IF ~RandomNum(4,4)~ THEN REPLY @18 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO loveyou4

 IF ~RandomNum(4,1)~ THEN REPLY @23 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO breeches1
 IF ~RandomNum(4,2)~ THEN REPLY @23 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO breeches2
 IF ~RandomNum(4,3)~ THEN REPLY @23 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO breeches3
 IF ~RandomNum(4,4)~ THEN REPLY @23 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO breeches1

 IF ~RandomNum(4,1)~ THEN REPLY @24 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO lickbreasts1
 IF ~RandomNum(4,2)~ THEN REPLY @24 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO lickbreasts2
 IF ~RandomNum(4,3)~ THEN REPLY @24 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO lickbreasts3
 IF ~RandomNum(4,4)~ THEN REPLY @24 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO lickbreasts3

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
AreaCheck("AR1602")~ THEN REPLY @25 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO innbath1

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
AreaCheck("AR1602")~ THEN REPLY @25 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO innbath2

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
AreaCheck("AR1602")~ THEN REPLY @25 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO innbath3

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
AreaCheck("AR1602")~ THEN REPLY @25 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO innbath4

 IF ~RandomNum(4,1)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @25 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO streambath1

 IF ~RandomNum(4,2)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @25 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO streambath2

 IF ~RandomNum(4,3)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @25 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO streambath3

 IF ~RandomNum(4,4)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @25 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO streambath1

 IF ~RandomNum(4,1)~ THEN REPLY @26 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO forbidden1
 IF ~RandomNum(4,2)~ THEN REPLY @26 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO forbidden2
 IF ~RandomNum(4,3)~ THEN REPLY @26 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO forbidden3
 IF ~RandomNum(4,4)~ THEN REPLY @26 DO ~IncrementGlobal("FWViconiaFlirt","GLOBAL",1)~ GOTO forbidden2

+ ~Global("FWDisableFlirtsNPC","GLOBAL",0)~ + @2001 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",1)~ + flirting

+ ~Global("FWDisableFlirtsNPC","GLOBAL",1)~ + @2002 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",0)~ + flirting

 IF ~~ THEN REPLY @19 EXIT

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

IF ~~ THEN BEGIN surfacefemalesearly
SAY @118
= @285
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


// No flirting in Underdark

IF ~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
CombatCounter(0)
OR(2)
Global("ViconiaRomanceActive","GLOBAL",1)
Global("ViconiaRomanceActive","GLOBAL",2)
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
SAY @284
IF ~~ THEN EXIT
END


END

