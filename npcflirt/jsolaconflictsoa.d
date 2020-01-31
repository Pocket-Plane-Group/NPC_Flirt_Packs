/* Creates Jaheira objections after Solaufein's "wizard summon" talk, #10, "Hold my hand, baby" talk, #12, and then Jaheira breaks up with the PC if
he hasn't broken up with Solaufein by the end of Solaufein's talk #14. Cheat on Jaheira with the drow no longer!
*/

APPEND JAHEIRAJ

IF WEIGHT #-3 
~OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
Global("SolaTalk","GLOBAL",10)
Global("SolaPCTalk","GLOBAL",0)
Global("FWJaheiraNotesSolaufein","LOCALS",0)~ 
THEN BEGIN postsola10_1
SAY @0 = @1
IF ~~ THEN REPLY @2 DO ~SetGlobal("FWJaheiraNotesSolaufein","LOCALS",1)~ GOTO postsola10_2
IF ~~ THEN REPLY @3 DO ~SetGlobal("FWJaheiraNotesSolaufein","LOCALS",1)~ GOTO postsola10_3
IF ~~ THEN REPLY @4 DO ~SetGlobal("FWJaheiraNotesSolaufein","LOCALS",1)~ GOTO postsola10_5
IF ~~ THEN REPLY @5 DO ~SetGlobal("FWJaheiraNotesSolaufein","LOCALS",1)~ GOTO postsola10_5
END

IF ~~ THEN BEGIN postsola10_2
SAY @6 = @7
IF ~~ THEN REPLY @8 GOTO postsola10_3
IF ~~ THEN REPLY @9 GOTO postsola10_4
IF ~~ THEN REPLY @10 GOTO postsola10_7
IF ~~ THEN REPLY @11 GOTO postsola10_8
END

IF ~~ THEN BEGIN postsola10_3
SAY @12
IF ~~ THEN GOTO postsola10_6
END

IF ~~ THEN BEGIN postsola10_4
SAY @13
IF ~~ THEN GOTO postsola10_6
END

IF ~~ THEN BEGIN postsola10_5
SAY @14
IF ~~ THEN GOTO postsola10_6
END

IF ~~ THEN BEGIN postsola10_6
SAY @15
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postsola10_7
SAY @16
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postsola10_8
SAY @17
IF ~~ THEN EXIT
END


IF WEIGHT #-2 ~OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
Global("SolaTalk","GLOBAL",12)
Global("SolaPCTalk","GLOBAL",0)
Global("FWJaheiraObjectsSolaufein","LOCALS",0)~ 
THEN BEGIN postsola12_1
SAY @18 = @19
IF ~~ THEN REPLY @20 DO ~SetGlobal("FWJaheiraObjectsSolaufein","LOCALS",1)~ GOTO postsola12_4
IF ~~ THEN REPLY @21 DO ~SetGlobal("FWJaheiraObjectsSolaufein","LOCALS",1)~ GOTO postsola12_7
IF ~~ THEN REPLY @22 DO ~SetGlobal("FWJaheiraObjectsSolaufein","LOCALS",1)~ GOTO postsola12_8
IF ~G("JaheiraRomanceActive",1)~ THEN REPLY @23 DO ~SetGlobal("FWJaheiraObjectsSolaufein","LOCALS",1)~ GOTO postsola12_3
IF ~G("JaheiraRomanceActive",2)~ THEN REPLY @23 DO ~SetGlobal("FWJaheiraObjectsSolaufein","LOCALS",1)~ GOTO postsola12_2
END

IF ~~ THEN BEGIN postsola12_2
SAY @24
IF ~G("JaheiraNookie",1)~ THEN GOTO postsola12_2a
IF ~!G("JaheiraNookie",1)~ THEN GOTO postsola12_3
END

IF ~~ THEN BEGIN postsola12_2a
SAY @25
IF ~~ THEN DO ~SG("JaheiraRomanceActive",3)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN postsola12_3
SAY @26
IF ~~ THEN DO ~SG("JaheiraRomanceActive",3)~ EXIT
END

IF ~~ THEN BEGIN postsola12_4
SAY @27
IF ~~ THEN GOTO postsola12_4a
END

IF ~~ THEN BEGIN postsola12_4a
SAY @28
IF ~~ THEN REPLY @29 GOTO postsola12_5
IF ~~ THEN REPLY @30 GOTO postsola12_6
IF ~G("JaheiraRomanceActive",1)~ THEN REPLY @31 GOTO postsola12_3
IF ~!G("JaheiraRomanceActive",1)~ THEN REPLY @31 GOTO postsola12_2
END

IF ~~ THEN BEGIN postsola12_5
SAY @32 = @33
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postsola12_6
SAY @34
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postsola12_7
SAY @35
IF ~~ THEN REPLY @36 GOTO postsola12_5
IF ~~ THEN REPLY @37 GOTO postsola12_6
IF ~G("JaheiraRomanceActive",1)~ THEN REPLY @38 GOTO postsola12_3
IF ~!G("JaheiraRomanceActive",1)~ THEN REPLY @38 GOTO postsola12_2
END

IF ~~ THEN BEGIN postsola12_8
SAY @39 = @40
IF ~~ THEN EXIT
END



IF WEIGHT #-1 ~OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
Global("SolaTalk","GLOBAL",14)
Global("SolaPCTalk","GLOBAL",0)
Global("FWJaheiraObjectsSolaufein","LOCALS",2)~ THEN BEGIN postsola14_1
SAY @41
IF ~G("JaheiraNookie",0) !GGT("FWJaheiraFlirt",24)~ THEN DO ~SetGlobal("FWJaheiraObjectsSolaufein","LOCALS",3)~ GOTO postsola14_2
IF ~G("JaheiraNookie",0) GGT("FWJaheiraFlirt",24)~ THEN DO ~SetGlobal("FWJaheiraObjectsSolaufein","LOCALS",3)~ GOTO postsola14_3
IF ~G("JaheiraNookie",1)~ THEN DO ~SetGlobal("FWJaheiraObjectsSolaufein","LOCALS",3)~ GOTO postsola14_4
END

IF ~~ THEN BEGIN postsola14_2
SAY @42 = @43
IF ~~ THEN DO ~SG("JaheiraRomanceActive",3)~ EXIT
END

IF ~~ THEN BEGIN postsola14_3
SAY @44
IF ~~ THEN DO ~SG("JaheiraRomanceActive",3)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN postsola14_4
SAY @45
IF ~~ THEN DO ~SG("JaheiraRomanceActive",3)
LeaveParty()
EscapeArea()~ EXIT
END


END


