APPEND VICON25J

IF WEIGHT #-3
~Global("ViconiaRomanceActive","GLOBAL",2)
Global("SolaTalk","GLOBAL",10)
Global("SolaPCTalk","GLOBAL",0)
Global("FWViconiaNotesSolaufein","LOCALS",0)~
THEN BEGIN postsola10_1
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("FWViconiaNotesSolaufein","LOCALS",1)~ GOTO postsola10_2
IF ~~ THEN REPLY @2 DO ~SetGlobal("FWViconiaNotesSolaufein","LOCALS",1)~ GOTO postsola10_3
IF ~~ THEN REPLY @3 DO ~SetGlobal("FWViconiaNotesSolaufein","LOCALS",1)~ GOTO postsola10_4
IF ~~ THEN REPLY @4 DO ~SetGlobal("FWViconiaNotesSolaufein","LOCALS",1)~ GOTO postsola10_5
END

IF ~~ THEN BEGIN postsola10_2
SAY @5
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postsola10_3
SAY @6
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postsola10_4
SAY @7
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postsola10_5
SAY @8
IF ~~ THEN EXIT
END


IF WEIGHT #-2
~Global("ViconiaRomanceActive","GLOBAL",2)
Global("SolaTalk","GLOBAL",12)
Global("SolaPCTalk","GLOBAL",0)
Global("FWViconiaObjectsSolaufein","LOCALS",0)~
THEN BEGIN postsola12_1
SAY @9
IF ~~ THEN REPLY @10 DO ~SetGlobal("FWViconiaObjectsSolaufein","LOCALS",1)~ GOTO postsola12_2
IF ~~ THEN REPLY @11 DO ~SetGlobal("FWViconiaObjectsSolaufein","LOCALS",1)~ GOTO postsola12_3
IF ~~ THEN REPLY @12 DO ~SetGlobal("FWViconiaObjectsSolaufein","LOCALS",1)~ GOTO postsola12_4
IF ~~ THEN REPLY @13 DO ~SetGlobal("FWViconiaObjectsSolaufein","LOCALS",1)~ GOTO postsola12_2
END

IF ~~ THEN BEGIN postsola12_2
SAY @14
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postsola12_3
SAY @15
= @16
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postsola12_4
SAY @17
IF ~~ THEN REPLY @18 GOTO postsola12_2a
IF ~~ THEN REPLY @19 GOTO postsola12_2b
IF ~~ THEN REPLY @20 GOTO postsola12_2c
END

IF ~~ THEN BEGIN postsola12_2a
SAY @21
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postsola12_2b
SAY @22
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postsola12_2c
SAY @23
IF ~~ THEN EXIT
END

IF WEIGHT #-1
~Global("ViconiaRomanceActive","GLOBAL",2)
Global("SolaTalk","GLOBAL",14)
Global("SolaPCTalk","GLOBAL",0)
Global("FWViconiaObjectsSolaufein","LOCALS",2)~ THEN BEGIN postsola14_1
SAY @24
= @25
IF ~~ THEN DO ~SetGlobal("FWViconiaObjectsSolaufein","LOCALS",3)~ GOTO postsola14_3
END

IF ~~ THEN BEGIN postsola14_2
SAY @26
IF ~~ THEN DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN postsola14_3
SAY @27
IF ~~ THEN REPLY @28 GOTO postsola14_2
IF ~~ THEN REPLY @29 GOTO postsola14_4
END

IF ~~ THEN BEGIN postsola14_4
SAY @30
IF ~~ THEN DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~ EXIT
END

END

