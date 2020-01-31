
// Jaheira summoning-in-romance dialogue

EXTEND_TOP FATESP 6 #7
  IF ~%New_ToB_Game%
!Dead("Jaheira")
!InMyArea("Jaheira")
Global("JaheiraSummoned","GLOBAL",0)
Gender(Player1,MALE)
!Race(Player1,HALFORC)
!Race(Player1,DWARF)
!Race(Player1,GNOME)
!Global("AerieRomanceActive","GLOBAL",2)
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN
   REPLY @400
    DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",2)
SetGlobal("JaheiraSummoned","GLOBAL",1)
SG("FWJaheiraSummonedInRomance",1)~ GOTO 8
END

A_S_T JAHEI25A 0 ~G("FWJaheiraSummonedInRomance",0)~

A_S_T JAHEI25A 6 ~!G("JaheiraRomanceActive",2)~


APPEND JAHEI25A
IF WEIGHT #-1 ~G("JaheiraSummoned",1)
G("FWJaheiraSummonedInRomance",1)~
THEN BEGIN summ1
SAY @401
= @402

IF ~~ THEN REPLY @403 DO ~SG("JaheiraSummoned",2)~ GOTO summ2
IF ~~ THEN REPLY @404 DO ~SG("JaheiraSummoned",2)~ GOTO summ3
IF ~~ THEN REPLY @405 DO ~SG("JaheiraSummoned",2)~ GOTO summ4
END

IF ~~ THEN BEGIN summ2
SAY @406
IF ~~ THEN REPLY @407 GOTO summ6
IF ~~ THEN REPLY @408 GOTO summ5
END

IF ~~ THEN BEGIN summ3
SAY @409 = @410
IF ~~ THEN REPLY @411 GOTO summ6
IF ~~ THEN REPLY @412 GOTO summ5
END

IF ~~ THEN BEGIN summ4
SAY @413
IF ~~ THEN REPLY @414 GOTO summ7
IF ~~ THEN REPLY @415 GOTO summ8
IF ~~ THEN REPLY @416 GOTO summ5
END

IF ~~ THEN BEGIN summ5
SAY @417
IF ~~ THEN DO ~MoveToPointNoInterrupt([1844.1211])
Face(0)~ EXIT
END

IF ~~ THEN BEGIN summ6
SAY @418
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN summ7
SAY @419
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN summ8
SAY @420
IF ~~ THEN DO ~JoinParty()~ EXIT
END


IF ~Global("JaheiraSummoned","GLOBAL",2)
G("FWJaheiraSummonedInRomance",1)~ THEN BEGIN summwait
SAY @421
IF ~~ THEN REPLY @422 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @423 EXIT
END

END


// Jaheira-initiated TOB flirts

APPEND JAHEI25J

IF
~Global("FWJaheiraStartFlirtTOB","GLOBAL",1)~
THEN BEGIN jaheirainitflirtbase1
SAY @424  

IF ~~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiraliveslinked

 IF ~RandomNum(22,1)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiraliveslinked
 IF ~RandomNum(22,2)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirasmackass
 IF ~RandomNum(22,3)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirarubneck
 IF ~RandomNum(22,4)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirahotdruidaction
 IF ~RandomNum(22,5)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirablowear
 IF ~RandomNum(22,6)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiradamnyou
 IF ~RandomNum(22,7) ReputationGT(Player1,13)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiragoodrep3
 IF ~RandomNum(22,7) ReputationLT(Player1,14)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirabadrep2
 IF ~RandomNum(22,8)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiraholdmenow
 IF ~RandomNum(22,9) HasItem("MISC5W","Jaheira")~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiralocket3
 IF ~RandomNum(22,10)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirashoulder
 IF ~RandomNum(22,11)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiralinksfingers
 IF ~RandomNum(22,12)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiramistletoe
 IF ~RandomNum(22,13)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirachanges
 IF ~RandomNum(22,14)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiraarmorfix
 IF ~RandomNum(22,15) Areatype(OUTDOOR) TimeOfDay(DAY)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiralight
 IF ~RandomNum(22,16)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiratrytosave
 IF ~RandomNum(22,17)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirasearchpack
 IF ~RandomNum(22,18)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiranevereasy
 IF ~RandomNum(22,19)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirapubslop
 IF ~RandomNum(22,20)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheiracreasesagain
 IF ~RandomNum(22,21)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirathisisright
 IF ~RandomNum(22,22)~ THEN DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)~ GOTO jaheirasuspendedkiss
 IF ~GlobalGT("ExpLoveTalk","LOCALS",11) G("FWDidJaheiraEpSetter",0)~ THEN 
DO ~IncrementGlobal("FWJaheiraRandFlirt","LOCALS",1)
SG("FWDidJaheiraEpSetter",1)~ GOTO jaheiraepset1

END

IF ~~ THEN BEGIN jaheiraepset1
SAY @425
= @426
IF ~~ THEN REPLY @427 GOTO jaheiraepset3
IF ~~ THEN REPLY @428 GOTO jaheiraepset4
IF ~~ THEN REPLY @429 GOTO jaheiraepset5
IF ~ReputationLT(Player1,13)~ THEN REPLY @430 GOTO jaheiraepset6
IF ~ReputationGT(Player1,12)~ THEN REPLY @430 GOTO jaheiraepset7
IF ~~ THEN REPLY @431 GOTO jaheiraepset8
IF ~~ THEN REPLY @432 GOTO jaheiraepset2
END

IF ~~ THEN BEGIN jaheiraepset2
SAY @433 = @434
IF ~~ THEN DO ~SG("FWJaheiraStockEp",1)~ EXIT
END

IF ~~ THEN BEGIN jaheiraepset3
SAY @435
IF ~~ THEN REPLY @436 GOTO jaheiraepset3a
IF ~~ THEN REPLY @437 GOTO jaheiraepset3b
IF ~~ THEN REPLY @438 GOTO jaheiraepset8
END

IF ~~ THEN BEGIN jaheiraepset3a
SAY @439 = @440
IF ~~ THEN DO ~SG("FWJaheiraGoodEp",1)~ EXIT
END

IF ~~ THEN BEGIN jaheiraepset3b
SAY @441
= @442
IF ~~ THEN DO ~SG("FWJaheiraEvilEp",1)~ EXIT
END

IF ~~ THEN BEGIN jaheiraepset4
SAY @443
IF ~~ THEN REPLY @444 GOTO jaheiraepset4a
IF ~~ THEN REPLY @445 GOTO jaheiraepset3a
IF ~~ THEN REPLY @446 GOTO jaheiraepset4b
END

IF ~~ THEN BEGIN jaheiraepset4a
SAY @447
= @448
IF ~~ THEN DO ~SG("FWJaheiraGoodEp",1)~ EXIT
END

IF ~~ THEN BEGIN jaheiraepset4b
SAY @449
= @450
IF ~~ THEN DO ~SG("FWJaheiraGoodEp",1)~ EXIT
END

IF ~~ THEN BEGIN jaheiraepset5
SAY @451
= @452
= @453
IF ~~ THEN DO ~SG("FWJaheiraGoodEp",1)~ EXIT
END

IF ~~ THEN BEGIN jaheiraepset6
SAY @454
= @455
IF ~~ THEN DO ~SG("FWJaheiraGoodEp",1)~ EXIT
END

IF ~~ THEN BEGIN jaheiraepset7
SAY @456
= @457
= @458
IF ~~ THEN DO ~SG("FWJaheiraGoodEp",1)~ EXIT
END

IF ~~ THEN BEGIN jaheiraepset8
SAY @459
= @460
IF ~~ THEN REPLY @461 GOTO jaheiraepset8a
IF ~~ THEN REPLY @462 GOTO jaheiraepset8b
IF ~~ THEN REPLY @463 GOTO jaheiraepset5
END

IF ~~ THEN BEGIN jaheiraepset8a
SAY @464
= @465
IF ~~ THEN GOTO jaheiraepset8c
END

IF ~~ THEN BEGIN jaheiraepset8b
SAY @466
IF ~~ THEN GOTO jaheiraepset8c
END

IF ~~ THEN BEGIN jaheiraepset8c
SAY @467
IF ~~ THEN DO ~SG("FWJaheiraHermitEp",1)~ EXIT
END


IF ~~ THEN BEGIN jaheiralocket3
SAY @468
= @469
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiracalf
SAY @470
= @471
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheirasuspendedkiss
SAY @472
= @473
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheirathisisright
SAY @474
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheirapubslop
SAY @475
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiracreasesagain
SAY @476 = @477
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN jaheirasearchpack
SAY @478
= @479
= @480
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiranevereasy
SAY @481
= @482
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN jaheiratrytosave
SAY @483
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiralight
SAY @484
= @485
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheirachanges
SAY @486
= @487
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiraarmorfix
SAY @488
= @489
= @490
IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN jaheiramistletoe
SAY @491
= @492
= @493
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheirashoulder
SAY @494
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN jaheiralinksfingers
SAY @495
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiraholdmenow
SAY @496
= @497
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheiragoodrep3
SAY @498
= @499
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN jaheirabadrep2
SAY @500
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN jaheirarubneck
SAY @501
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN jaheirablowear
SAY @502 = @503
= @504
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN jaheirahotdruidaction
SAY @505
= @506
= @507
= @508
= @509
= @510
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN jaheirasmackass
SAY @511
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN jaheiradamnyou
SAY @512
IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN jaheiraliveslinked
SAY @513
IF ~~ THEN EXIT
END




// PC-Initiated top-level

IF
~GlobalLT("FWDisableFlirtsNPC","GLOBAL",2)
IsGabber(Player1)
!ActuallyInCombat()
Global("JaheiraRomanceActive","GLOBAL",2)~
THEN BEGIN jaheiraflirtbase2
SAY @514 = @515
= @516

 IF ~RandomNum(4,1)~ THEN REPLY @517 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kisscheek4
 IF ~RandomNum(4,2)~ THEN REPLY @517 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kisscheek5
 IF ~RandomNum(4,3)~ THEN REPLY @517 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kisscheek5
 IF ~RandomNum(4,4)~ THEN REPLY @517 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kisscheek6

 IF ~RandomNum(4,1)~ THEN REPLY @518 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kissmouth2
 IF ~RandomNum(4,2)~ THEN REPLY @518 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kissmouth3
 IF ~RandomNum(4,3)~ THEN REPLY @518 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kissmouth4
 IF ~RandomNum(4,4)~ THEN REPLY @518 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO kissmouth5

 IF ~~ THEN REPLY @519 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO ogle5

 IF ~RandomNum(4,1)~ THEN REPLY @520 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO rump1
 IF ~RandomNum(4,2)~ THEN REPLY @520 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO rump2
 IF ~RandomNum(4,3)~ THEN REPLY @520 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO rump3
 IF ~RandomNum(4,4)~ THEN REPLY @520 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO rump3

 IF ~RandomNum(4,1)~ THEN REPLY @521 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO backside1
 IF ~RandomNum(4,2)~ THEN REPLY @521 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO backside4
 IF ~RandomNum(4,3)~ THEN REPLY @521 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO backside2
 IF ~RandomNum(4,4)~ THEN REPLY @521 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO backside3

 IF ~RandomNum(4,1) !HPLT(Player1,25)~ THEN REPLY @522 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO wantu2
 IF ~RandomNum(4,2) !HPLT(Player1,25)~ THEN REPLY @522 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO wantu3
 IF ~RandomNum(4,3) !HPLT(Player1,25)~ THEN REPLY @522 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO wantu4
 IF ~RandomNum(4,4) !HPLT(Player1,25)~ THEN REPLY @522 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO wantu5
IF ~HPLT(Player1,25)~ THEN REPLY @522 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO wantunosense

 IF ~RandomNum(4,1)~ THEN REPLY @523 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO memories5
 IF ~RandomNum(4,2)~ THEN REPLY @523 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO memories3
 IF ~RandomNum(4,3)~ THEN REPLY @523 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO memories4
 IF ~RandomNum(4,4)~ THEN REPLY @523 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO memories5

 IF ~RandomNum(4,1)~ THEN REPLY @524 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO loveyou4
 IF ~RandomNum(4,2)~ THEN REPLY @524 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO loveyou2
 IF ~RandomNum(4,3)~ THEN REPLY @524 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO loveyou4
 IF ~RandomNum(4,4)~ THEN REPLY @524 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO loveyou5

 IF ~RandomNum(4,1)~ THEN REPLY @525 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO touchcheek4
 IF ~RandomNum(4,2)~ THEN REPLY @525 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO touchcheek5
 IF ~RandomNum(4,3)~ THEN REPLY @525 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO touchcheek6
 IF ~RandomNum(4,4)~ THEN REPLY @525 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO touchcheek7

 IF ~RandomNum(4,1)~ THEN REPLY @526 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO playbraid3
 IF ~RandomNum(4,2)~ THEN REPLY @526 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO playbraid4
 IF ~RandomNum(4,3)~ THEN REPLY @526 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO playbraid2
 IF ~RandomNum(4,4)~ THEN REPLY @526 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO playbraid4

 IF ~RandomNum(4,1)~ THEN REPLY @527 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO hug4
 IF ~RandomNum(4,2)~ THEN REPLY @527 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO hug7
 IF ~RandomNum(4,3)~ THEN REPLY @527 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO hug5
 IF ~RandomNum(4,4)~ THEN REPLY @527 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO hug6

 IF ~RandomNum(4,1)~ THEN REPLY @528 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO thrust1
 IF ~RandomNum(4,2)~ THEN REPLY @528 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO thrust3
 IF ~RandomNum(4,3)~ THEN REPLY @528 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO thrust2
 IF ~RandomNum(4,4)~ THEN REPLY @528 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO thrust3

 IF ~RandomNum(4,1) AreaType(OUTDOOR)~ THEN REPLY @529 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO pullground1
 IF ~RandomNum(4,2) AreaType(OUTDOOR)~ THEN REPLY @529 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO pullground2
 IF ~RandomNum(4,3) AreaType(OUTDOOR)~ THEN REPLY @529 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO pullground3
 IF ~RandomNum(4,4) AreaType(OUTDOOR)~ THEN REPLY @529 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO pullground3

 IF ~RandomNum(4,1)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ THEN REPLY @530 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO innbath1
 IF ~RandomNum(4,2)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ THEN REPLY @530 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO innbath1
 IF ~RandomNum(4,3)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ THEN REPLY @530 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO innbath2
 IF ~RandomNum(4,4)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ THEN REPLY @530 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO innbath3

 IF ~RandomNum(4,1)
AreaCheck("AR6400")~ THEN REPLY @530 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO streambath1
 IF ~RandomNum(4,2)
AreaCheck("AR6400")~ THEN REPLY @530 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO streambath1
 IF ~RandomNum(4,3)
AreaCheck("AR6400")~ THEN REPLY @530 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO streambath2
 IF ~RandomNum(4,4)
AreaCheck("AR6400")~ THEN REPLY @530 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO streambath3

 IF ~RandomNum(4,1)~ THEN REPLY @531 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO thighs1
 IF ~RandomNum(4,2)~ THEN REPLY @531 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO thighs2
 IF ~RandomNum(4,3)~ THEN REPLY @531 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO thighs3
 IF ~RandomNum(4,4)~ THEN REPLY @531 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO thighs3

 IF ~RandomNum(4,1)~ THEN REPLY @532 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO earlobe1
 IF ~RandomNum(4,2)~ THEN REPLY @532 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO earlobe2
 IF ~RandomNum(4,3)~ THEN REPLY @532 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO earlobe2
 IF ~RandomNum(4,4)~ THEN REPLY @532 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO earlobe3

 IF ~RandomNum(4,1)~ THEN REPLY @533 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO burybreasts1
 IF ~RandomNum(4,2)~ THEN REPLY @533 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO burybreasts2
 IF ~RandomNum(4,3)~ THEN REPLY @533 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO burybreasts1
 IF ~RandomNum(4,4)~ THEN REPLY @533 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO burybreasts2

 IF ~RandomNum(4,1)~ THEN REPLY @534 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO tickle1
 IF ~RandomNum(4,2)~ THEN REPLY @534 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO tickle2
 IF ~RandomNum(4,3)~ THEN REPLY @534 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO tickle2
 IF ~RandomNum(4,4)~ THEN REPLY @534 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO tickle1

 IF ~RandomNum(4,1)~ THEN REPLY @535 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO molest1
 IF ~RandomNum(4,2)~ THEN REPLY @535 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO molest1
 IF ~RandomNum(4,3)~ THEN REPLY @535 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO molest2
 IF ~RandomNum(4,4)~ THEN REPLY @535 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO molest3

 IF ~RandomNum(4,1)~ THEN REPLY @536 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO crotch1
 IF ~RandomNum(4,2)~ THEN REPLY @536 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO crotch1
 IF ~RandomNum(4,3)~ THEN REPLY @536 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO crotch2
 IF ~RandomNum(4,4)~ THEN REPLY @536 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO crotch3

 IF ~RandomNum(4,1) !HPLT(Player1,25)~ THEN REPLY @537 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO urmine1
 IF ~RandomNum(4,2) !HPLT(Player1,25)~ THEN REPLY @537 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO urmine2
 IF ~RandomNum(4,3) !HPLT(Player1,25)~ THEN REPLY @537 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO urmine1
 IF ~RandomNum(4,4) !HPLT(Player1,25)~ THEN REPLY @537 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO urmine3
IF ~HPLT(Player1,25)~ THEN REPLY @537 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO urminedie

 IF ~RandomNum(4,1) G("FWJaheiraBraidFlirt",1)~ THEN REPLY @538 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO braidher2
 IF ~RandomNum(4,2) G("FWJaheiraBraidFlirt",1)~ THEN REPLY @538 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO braidher2
 IF ~RandomNum(4,3) G("FWJaheiraBraidFlirt",1)~ THEN REPLY @538 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO braidher3
 IF ~RandomNum(4,4) G("FWJaheiraBraidFlirt",1)~ THEN REPLY @538 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO braidher3
IF ~G("FWJaheiraBraidFlirt",0)~ THEN REPLY @538 DO ~SG("FWJaheiraBraidFlirt",1) IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO braidher1

 IF ~RandomNum(4,1)~ THEN REPLY @539 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO airwater1
 IF ~RandomNum(4,2)~ THEN REPLY @539 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO airwater2
 IF ~RandomNum(4,3)~ THEN REPLY @539 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO airwater2
 IF ~RandomNum(4,4)~ THEN REPLY @539 DO ~IncrementGlobal("FWJaheiraFlirt","GLOBAL",1)~ GOTO airwater3

+ ~Global("FWDisableFlirtsNPC","GLOBAL",0)~ + @2001 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",1)~ + flirting

+ ~Global("FWDisableFlirtsNPC","GLOBAL",1)~ + @2002 DO ~SetGlobal("FWDisableFlirtsNPC","GLOBAL",0)~ + flirting

IF ~~ THEN REPLY @540 EXIT

END

IF ~~ THEN flirting
SAY @2003
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN airwater1
SAY @541
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN airwater2
SAY @542
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN airwater3
SAY @543
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN braidher2
SAY @544
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN braidher3
SAY @545
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN braidher1
SAY @546
= @547
= @548
= @549
IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN urmine1
SAY @550
= @551
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN urmine2
SAY @552
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN urmine3
SAY @553
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN urminedie
SAY @554
IF ~~ THEN DO ~ReallyForceSpell(PLAYER1,CLERIC_CURE_MEDIUM_WOUNDS)~ EXIT
END

IF ~~ THEN BEGIN crotch1
SAY @555
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN crotch2
SAY @556
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN crotch3
SAY @557
IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN molest1
SAY @558
= @559
= @560
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN molest2
SAY @561
= @562
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN molest3
SAY @563
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tickle1
SAY @564
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tickle2
SAY @565
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN burybreasts1
SAY @566
= @567
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN burybreasts2
SAY @568
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN earlobe1
SAY @569
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN earlobe2
SAY @570
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN earlobe3
SAY @571
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN thighs1
SAY @572
= @573
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN thighs2
SAY @574
= @575
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN thighs3
SAY @576
= @577
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN streambath1
SAY @578
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN streambath2
SAY @579
= @580
= @581
= @582
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN streambath3
SAY @583
= @584
= @585
= @586
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN innbath1
SAY @587
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN innbath2
SAY @588
= @589
= @590
= @591
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN innbath3

SAY @592
= @593
= @594
= @595
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN pullground1
SAY @596
= @597
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN pullground2
SAY @598
= @599
= @600
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN pullground3
SAY @601
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN thrust1
SAY @602
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN thrust2
SAY @603
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN thrust3
SAY @604
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN hug4
SAY @605
= @606
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug5
SAY @607
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug6
SAY @608 
= @609
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug7
SAY @610
IF ~~ THEN EXIT
END




IF ~~ THEN BEGIN playbraid2
SAY @611
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN playbraid3
SAY @612
= @613
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN playbraid4
SAY @614
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN touchcheek4
SAY @615
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchcheek5
SAY @616
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchcheek6
SAY @617
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchcheek7
SAY @618
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN loveyou2
SAY @619
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN loveyou4
SAY @620
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN loveyou5
SAY @621
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN memories5
SAY @622
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN memories3
SAY @623
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN memories4
SAY @624
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN wantu2
SAY @625
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN wantu3
SAY @626
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN wantu4
SAY @627 = @628
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN wantu5
SAY @629
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN wantunosense
SAY @630
= @631
IF ~~ THEN DO ~ReallyForceSpell(PLAYER1,CLERIC_CURE_MEDIUM_WOUNDS)~ EXIT
END


IF ~~ THEN BEGIN backside1
SAY @632
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN backside2
SAY @633
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN backside3
SAY @634
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN backside4
SAY @635
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN rump1
SAY @636
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rump2
SAY @637
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rump3
SAY @638
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ogle1
SAY @639
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ogle2
SAY @640
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ogle4
SAY @641
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ogle5 
SAY @642
IF ~RandomNum(4,1)~ THEN GOTO ogle1
IF ~RandomNum(4,2)~ THEN GOTO ogle2
IF ~RandomNum(4,3)~ THEN GOTO ogle4
IF ~RandomNum(4,4)~ THEN GOTO ogle6
END

IF ~~ THEN BEGIN ogle6
SAY @643
IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN kissmouth5
SAY @644
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN kissmouth2
SAY @645
= @646
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kissmouth3
SAY @647
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kissmouth4
SAY @648
= @649
IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN kisscheek4
SAY @650
= @651
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kisscheek5
SAY @652
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kisscheek6
SAY @653
IF ~~ THEN EXIT
END



END

