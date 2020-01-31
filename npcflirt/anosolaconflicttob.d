APPEND ANOME25J

IF WEIGHT #-3
~Global("AnomenRomanceActive","GLOBAL",2)
Global("SolaTalk","GLOBAL",10)
Global("SolaPCTalk","GLOBAL",0)
Global("FWAnomenNotesSolaufein","LOCALS",0)~
THEN BEGIN postsola10_1
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("FWAnomenNotesSolaufein","LOCALS",1)~ GOTO object1_2
IF ~~ THEN REPLY @2 DO ~SetGlobal("FWAnomenNotesSolaufein","LOCALS",1)~ GOTO object1_3
IF ~~ THEN REPLY @3 DO ~SetGlobal("FWAnomenNotesSolaufein","LOCALS",1)~ GOTO object1_4
IF ~~ THEN REPLY @4 DO ~SetGlobal("FWAnomenNotesSolaufein","LOCALS",1)~ GOTO object1_5
END

IF ~~ object1_2
SAY @5
IF ~~ EXIT
END

IF ~~ object1_3
SAY @6
IF ~~ EXIT
END

IF ~~ object1_4
SAY @7
IF ~~ EXIT
END

IF ~~ object1_5
SAY @8
++ @9 + object1_5_1
++ @10 + object1_5_2
++ @11 + object1_5_3
END

IF ~~ object1_5_1
SAY @12
IF ~~ EXIT
END

IF ~~ object1_5_2
SAY @13
IF ~~ EXIT
END

IF ~~ object1_5_3
SAY @14
IF ~~ GOTO object1_3
END



IF WEIGHT #-2 ~Global("AnomenRomanceActive","GLOBAL",2)
Global("SolaTalk","GLOBAL",12)
Global("SolaPCTalk","GLOBAL",0)
Global("FWAnomenObjectsSolaufein","LOCALS",0)~
THEN BEGIN postsola12_1
SAY @15
++ @16  DO ~SetGlobal("FWAnomenObjectsSolaufein","LOCALS",1)~ + object2_2
++ @17  DO ~SetGlobal("FWAnomenObjectsSolaufein","LOCALS",1)~ + object2_2_1
++ @18  DO ~SetGlobal("FWAnomenObjectsSolaufein","LOCALS",1)~ + object2_3
++ @19  DO ~SetGlobal("FWAnomenObjectsSolaufein","LOCALS",1)~ + object2_5
END

IF ~~ object2_2
SAY @20
++ @21 + object2_2_1
++ @22 + object2_3
++ @23 + object2_3
END

IF ~~ object2_2_1
SAY @24
IF ~~ EXIT
END

IF ~~ object2_3
SAY @25
+ ~!Alignment("Anomen",CHAOTIC_NEUTRAL)~ + @26 + object2_3_2
+ ~Alignment("Anomen",CHAOTIC_NEUTRAL)~ + @26 + object2_3_cn
++ @27 + object2_2_1
END

IF ~~ object2_3_cn
SAY @28
IF ~~ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ object2_5
SAY @29
IF ~~ GOTO object2_ln
IF ~Alignment("Anomen",CHAOTIC_NEUTRAL)~ GOTO object2_cn
IF ~Alignment("Anomen",LAWFUL_GOOD)~ GOTO object2_lg
END

IF ~~ object2_3_2
SAY @30
IF ~~ GOTO object2_ln
IF ~Alignment("Anomen",LAWFUL_GOOD)~ GOTO object2_lg
END

IF ~~ object2_ln
SAY @31
IF ~~ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ object2_lg
SAY @32
++ @33 + object2_lgstay
++ @34 + object2_lgstay
++ @35 + object2_lggo
++ @36 + object2_lggo
END

IF ~~ object2_lgstay
SAY @37
IF ~~ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
GivePartyAllEquipment()
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ object2_lggo
SAY @38
IF ~~ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
GivePartyAllEquipment()
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ object2_cn
SAY @39
= @40
IF ~~ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~ EXIT
END


IF WEIGHT #-1 ~Global("AnomenRomanceActive","GLOBAL",2)
Global("SolaTalk","GLOBAL",14)
Global("SolaPCTalk","GLOBAL",0)
Global("FWAnomenObjectsSolaufein","LOCALS",2)~ THEN BEGIN postsola14_1
SAY @41
IF ~~ GOTO object3_ln
IF ~Alignment("Anomen",CHAOTIC_NEUTRAL)~ GOTO object2_3_cn
IF ~Alignment("Anomen",LAWFUL_GOOD)~ GOTO object3_lg
END

IF ~~ object3_ln
SAY @42
IF ~~ DO ~SG("AnomenRomanceActive",3)~ EXIT
END

IF ~~ object3_lg
SAY @43
IF ~~ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
GivePartyAllEquipment()
LeaveParty()
EscapeArea()~ EXIT
END

END

