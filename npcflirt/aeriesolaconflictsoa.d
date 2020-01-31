/* Creates Aerie objections after Solaufein's "Hold my hand, baby" talk, #12, and then Aerie breaks up with the PC if
he hasn't broken up with Solaufein by the end of Solaufein's talk #14. Cheat on Aerie with the drow no longer!
*/

APPEND AERIEJ

IF WEIGHT #-2 ~OR(2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
Global("SolaTalk","GLOBAL",12)
Global("SolaPCTalk","GLOBAL",0)
Global("FWAerieObjectsSolaufein","LOCALS",0)~ 
THEN BEGIN postsola12_1
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("FWAerieObjectsSolaufein","LOCALS",1)~ GOTO postsola12_2
IF ~~ THEN REPLY @2 DO ~SetGlobal("FWAerieObjectsSolaufein","LOCALS",1)~ GOTO postsola12_2
IF ~~ THEN REPLY @3 DO ~SetGlobal("FWAerieObjectsSolaufein","LOCALS",1)~ GOTO postsola12_3
IF ~Global("AerieRomanceActive","GLOBAL",1)~ THEN REPLY @4 DO ~SetGlobal("FWAerieObjectsSolaufein","LOCALS",1)~ GOTO postsola12_6
IF ~Global("AerieRomanceActive","GLOBAL",2)~ THEN REPLY @4 DO ~SetGlobal("FWAerieObjectsSolaufein","LOCALS",1)~ GOTO postsola12_7
IF ~Global("AerieRomanceActive","GLOBAL",1)~ THEN REPLY @5 DO ~SetGlobal("FWAerieObjectsSolaufein","LOCALS",1)~ GOTO postsola12_4
IF ~Global("AerieRomanceActive","GLOBAL",2)~ THEN REPLY @5 DO ~SetGlobal("FWAerieObjectsSolaufein","LOCALS",1)~ GOTO postsola12_5

END

IF ~~ THEN BEGIN postsola12_2
SAY @6 = @7
IF ~~ THEN REPLY @8 GOTO postsola12_8
IF ~~ THEN REPLY @9 GOTO postsola12_10
IF ~~ THEN REPLY @10 GOTO postsola12_9
END

IF ~~ THEN BEGIN postsola12_3
SAY @11 = @12
IF ~Global("AerieRomanceActive","GLOBAL",1)~ THEN REPLY @13 GOTO postsola12_6
IF ~Global("AerieRomanceActive","GLOBAL",2)~ THEN REPLY @13 GOTO postsola12_7
IF ~~ THEN REPLY @14 GOTO postsola12_8
IF ~~ THEN REPLY @15 GOTO postsola12_9
END

IF ~~ THEN BEGIN postsola12_4
SAY @16
IF ~~ THEN DO ~SG("AerieRomanceActive",3)~ EXIT
END

IF ~~ THEN BEGIN postsola12_5
SAY @17
IF ~~ THEN DO ~SG("AerieRomanceActive",3)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN postsola12_6
SAY @18
IF ~~ THEN DO ~SG("AerieRomanceActive",3)~ EXIT
END

IF ~~ THEN BEGIN postsola12_7
SAY @19 = @20
IF ~~ THEN DO ~SG("AerieRomanceActive",3)~ EXIT
END

IF ~~ THEN BEGIN postsola12_8
SAY @21
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postsola12_9
SAY @22
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postsola12_10
SAY @23
IF ~G("AerieRomanceActive",1)~ THEN GOTO postsola12_10_1
IF ~G("AerieRomanceActive",2)~ THEN GOTO postsola12_10_2
END

IF ~~ THEN BEGIN postsola12_10_1
SAY @24
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postsola12_10_2
SAY @25 = @26
IF ~~ THEN EXIT
END



IF WEIGHT #-1 ~OR(2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
Global("SolaTalk","GLOBAL",14)
Global("SolaPCTalk","GLOBAL",0)
Global("FWAerieObjectsSolaufein","LOCALS",2)~ THEN BEGIN postsola14_1
SAY @27
IF ~G("SleptAerie",0) !GGT("FWAerieFlirt",23)~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
SetGlobal("FWAerieObjectsSolaufein","LOCALS",3)~ GOTO postsola14_2
IF ~G("SleptAerie",0) GGT("FWAerieFlirt",23)~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
SetGlobal("FWAerieObjectsSolaufein","LOCALS",3)~ GOTO postsola14_4
IF ~G("SleptAerie",1)~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
SetGlobal("FWAerieObjectsSolaufein","LOCALS",3)~ GOTO postsola14_3
END

IF ~~ THEN BEGIN postsola14_2
SAY @28
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postsola14_3
SAY @29
IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN postsola14_4
SAY @30
IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END


END


