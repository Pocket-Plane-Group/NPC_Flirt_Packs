ADULT CONTENT WARNING: The Bioware NPC Flirt Packs are a
continuation and enhancement of the Bioware romances. Our writing, at
times, is more explicit than the original Bioware content.

So, if you live with an adult who might object to this sort of thing,
consider yourself warned.

			Bioware NPC Flirt Packs
                              VERSION 1.07
              A Pocket Plane Group Project for Baldur's Gate 2
	              http://www.pocketplane.net


CREDITS


Jason Compton						Flirt Author
                                                        WeiDU Ninja

Wynne Lurty						Flirt Author


Margot Koval						Flirt Author


Jennifer Limon                                          Flirt Author


Sarah Finnimore                                         Flirt Author


Victoria Joyner                                         Flirt Author


Cynthia Crise                                           Flirt Author


Amy Johnston                                            Flirt Author


Lady Alustriel                                          Epilogue Researcher


Wendy Yung                                              Portrait Wizardry


Mongoose                                                Flirty Suggestions


Beta testers: Kish, Sorschana, Silverose, Gorrister, Gurty, Pirotess,
Kismet, Queen Akasha, Mia, Immortality, Lady Caetlyn, Trite

Spanish translation: Alberto "Dufroise" Ballestero (Aerie, Jaheira, Viconia),
Analia "Immortality" Dobarro (Anomen and Jaheira), Fernando "Valn" Soto
(Jaheira), Hezequiel "Bhasbuto" Castelli (Aerie, Anomen, Jaheria), Carsomyr
(Anomen), Sunkdevifull (Anomen), Aragorn (Anomen) of CLAN DLAN.

German Translation: Beate "Beaz" Jones, Helene "Beyshaliban" Schurz

French Translation: Emmanuel "Thot" Teyssier

Flirting Technology originally developed for Kelsey NPC by Jason Compton
and Jesse Meyers

--------------------------------------------------------------------------



It just doesn't make SENSE.

It doesn't make sense that the BG2 romance NPCs call all of the shots in
the relationship, right down to when it is and is not appropriate to show
a little affection. Besides, who among you can say that you've never felt
Aerie, Anomen, Jaheira, or Viconia just needed a hug?

So now things are different. Now your PC can show his/her fondness any
time. And the NPCs will flirt back, meaning the romance doesn't have to
end after the last LOVETALK. And just to spice things up further, there is at 
least one new epilogue opportunity for each romance NPC... although they're not 
all happy endings...

We developed flirting for Kelsey when we decided to close this gap. Now,
it's time for the original Bioware romance NPCs to have their turn.


INSTALLING THE FLIRT PACKS

1. Run the NPCFlirt.exe you downloaded, and accept the default
directory.

2. Setup-NPCFlirt.exe should run automatically. You will be asked about
installing modules for each NPC: first all the options for Aerie, then Jaheira,
then Viconia, then Anomen. You can safely install all of them, although
installing the TOB components will fail if you do not have TOB installed, and
installing the optional Solaufein conflicts will mean you cannot have a long-
term simultaneous romance with him any longer.

3. Load up your game and enjoy the romance. You do NOT need to start a
new game, although you may want to do so to see all of the flirting if
your romance is already fairly well along.

4. To uninstall a component, run Setup-NPCFlirt.exe again and ask to
uninstall.


FLIRTING

There are two types of flirts: PC-initiated flirts, and NPC-intiated
flirts.

To have your PC initiate a flirt, use your PC to click-to-talk on your
love interest. You will see a number of dialogue/action options. Pick
one.

The other flirting is intiated by the romance NPC in question. Every so
often, they will "initiate dialogue" and give you a word, a look, a
kiss... you'll find out.

Note that flirting is disabled at appropriate times, such as after
certain fights have taken place between the PC and his/her lover.
Flirting will largely be off during Chapter 5, since it would blow your
cover. Flirting is also meant to be disabled during combat.

You will see new flirts in SOA as the relationship becomes more serious,
and then after it is completed, so do not rush to the end of the game if
you have had your final LOVETALK.

The TOB flirt packs include an extra bonus: the ability to start a
romance via summoning through the Fate Spirit. Note that summoning "Anomen,
Priest of Helm" means you get the Chaotic Neutral variant, summoning "Sir
Anomen, Knight of the Order" gets you the Lawful Good variant.


TECHNICAL/COMPATIBILITY NOTES

Flirt packs should be compatible with most mods. As usual, install all
non-WeiDU mods before the flirt packs. We take no responsibility for any
conflicts multi-romance patches might cause, however. One flirty romance
partner should be sufficient.

For safety's sake, try to install the flirt packs AFTER as many
mods as possible, unless otherwise specified. In particular, please install the
Anomen-SOA flirt pack AFTER you install Kelsey-SOA. (If you don't, due to a bug
in Kelsey-SOA 1.5 and earlier, you will likely get the Kelsey/Anomen final
fight the first time you try to flirt with Anomen, even if you aren't romancing
Kelsey or Anomen! Flirting will work normally after that, but it's best to
avoid the whole thing by installing the flirt pack after Kelsey.)

There may also be issues with Ascension overriding epilogues introduced
in a TOB flirt pack. Therefore, install WeiDU-Ascension BEFORE the TOB
flirt pack for your favorite NPC(s).

Also, a mod that introduces a similar "click to talk" feature would NOT
be directly compatible. This is simply a limitation of the game's dialogue
engine. So if, for instance, someone adds PST-style NPC conversations, one
will end up "blocking" the other. Reports indicate that this is true for older
versions of Mirrabbo's Imoen Romance.

If you are having a problem with a game dialogue that seems to be trying
to run but keeps bringing up the PID flirt menu instead, use the console or
a saved game editor to set the global variable FWDisableFlirtsNPC = 2 (Note: 
this changed in v1.04. Before, setting FWDisableFlirts to "1" sufficed to
shut off ALL FOUR Bioware NPC flirt packs, plus the flirting in
Kelsey-TOB and Kelsey-SOA versions 1.5 and greater. (earlier versions of Kelsey-
SOA don't have the kill switch.) Now, NPC flirtpack is independent to whether the 
player asks Kelsey to stop flirting.) Set it back to 0 when the game dialogue in
question has happened.

From a technical standpoint, the "problem" with PC-initiated flirting is
that we create a dialogue condition in each NPC's J dialogue file that,
provided the romance is active, is basically always "true." So anything
that gets APPENDed below that won't show up. We will always ensure that
the flirt packs are weighted to the bottom. There are workarounds but we see no
reason to use them.

Modders can work around this problem with some careful use of WEIGHT in
their dialogue additions, such as specifying that it be weighted no
lower than the number of states in the NPC's stock J files. Alternately, they
can have their dialogue-initiating mods use the SetDialogue command to change to
a different dialogue file.




FAQ

Q: I have the Concurrent Romance/Multiromance patch installed, and--

A: I don't care. Multiromance scripts tend to be fraught with problems and run
totally counter to the purpose of the flirt packs anyway, which is to make the
romances individually satisfying.


Q: Hey! They're not flirting in SOA! What's wrong?

A: Probably nothing. Aerie and Viconia will not flirt until after their fourth
LOVETALK (LoveTalk=8). Jaheira will not flirt until just before or just after
her sixth LOVETALK (LoveTalk=12). Anomen won't flirt until after his fifth
LOVETALK, and then has a series of crabby conversations with the PC, so he
doesn't pick up again until after LT 16. They also will not flirt in the
Underdark, or after cross words have been exchanged, or they're obsessing over
some really heavy issues (Jaheira and the Harpers, late in her romance, between
LoveTalk=59 and =62, or Viconia at the various times she gets angry and
conflicted.)


Q: Hey! They aren't flirting in TOB! What's wrong?

A: Aerie won't flirt in TOB until after her second LOVETALK. Otherwise her
initial LOVETALKs didn't make a ton of sense. As of V0.81, we've added a
new response for her that makes this more clear. Similarly, Viconia won't flirt
in TOB until after her first LOVETALK.


Q: Hey, why does NPC X have more/more interesting flirts than NPC Y?

A: It's not a conspiracy. We wrote what we thought of, that seemed fun and
reasonable, for each NPC. We were not and are not trying to meet any sort
of "equality" for word count or flirt choices.


Q: But I really want to do XYZ to my favorite love interest! Why can't I?

A: Well, it's possible that we thought of it but didn't write it for
whatever reason--thought it was inappropriate, couldn't think of enough
interesting responses, felt we had plenty of other choices already. But you
can always make suggestions on the NPC Flirt forums at
http://forums.pocketplane.net and we will, at least, read your request.


Q: Is there a difference between evil and neutral Viconia in the flirt pack?

A: Yes, some of the flirt responses will be different if you "redeem" her. There
is also the prospect of getting a new epilogue for evil Viconia.


Q: Hey, I did ABC to my love interest and he/she responded in a manner that
is TOTALLY OUT OF CHARACTER for them! What gives?

A: Hmmm. Well, we do try our best to capture what we see as the spirit of
each NPC and their romance, but of course the nature of the flirt packs are
to put them in situations that aren't explicitly explored in Bioware's
writing. So you may not ALWAYS agree. If you still think something is
grievously out of character, you can always let us know and we may
address it in a future release.


Q: Hey, I liked the original Jaheira romance epilogue/the Jaheira romance
epilogue that comes with Ascension just fine. How can I still get it?

A: In the new conversation about your future, simply tell her that
"Things will work out as they always have." (get it? The way they always
have in the game thus far!)


Q: Hey! Anomen is saying lines I don't remember him saying in SOA!

A: We added a bit of script so that Anomen, immediately after he falls from the
Order, gets the new select/confirm lines that he normally gets in TOB if he's 
not a knight.


Q: Hey! I don't think Anomen needs a new epilogue! How can I prevent it?

A: At present, Anomen has only one new epilogue available to him--if he is CN
and the PC chooses to ascend to godhood. Late in the game CN Anomen will
initiate a discussion about the future. If you wish to avoid the dialogue path 
that could give him a new epilogue, tell him "The future will be what it always
has been." This will ensure that you see the Bioware (or Ascension) epilogue.


Q: Hey! I didn't get a new Jaheira romance epilogue at all! I got the old
one! Why?

A: Well, either you chose to ascend (we've left that epilogue alone), told
Jaheira that "Things will work out as they always have," or it's a bug.


Q: Hey! In your stupid new epilogue, Jaheira broke up with me! What gives?

A: Well, either your PC was a jerk when she asked about the future, or he
is an evil man, not the kind she wanted to spend the rest of her life with.


Q: Hey! I can't get this new Viconia epilogue! What's the problem?

A: You're probably not evil enough. You need to be REALLY bad news. You'll need
an evil or CN protagonist. You'll need to be a bad example--so, don't try to
redeem Viconia or anybody else, and don't help old ladies across the street. And
tell Viconia that you want to spend the rest of your mortality being bad news.


Q: Hey! My character had slept with Anomen before I installed the flirt pack but
the flirt options make it look like I turned him down! What happened?

A: Unlike with Aerie and Jaheira, the optional sex with Anomen is not tracked
by a variable. We had to add that variable. So in a saved game where you've
ALREADY reached that conversation with Anomen, the flirt pack assumes you didn't
take him up on his offer. This is a bit of a shame but it's the decision that
ensures nobody really misses anything.


Q: Hey! Wait a sec! Where's a new epilogue for a neutral Viconia?

A: Sorry, but there isn't one. Viconia's end may be sad but it is fitting.


Q: Hey! I'm getting this "One approaches" dialogue from Anomen, but nothing 
happens!

A: This is actually a bug that can appear in an unmodified game. Use the console
to do
CLUAConsole:CreateCreature("Terl")
and press CTRL+I with Anomen standing close to Terl. (this may trigger other
party banters first, so be patient.)


Q: You can shave Anomen?

A: Yes, late in the SOA romance, in an inn.


Q: Anomen without the beard? Huh. Is it going to grow back or is it stuck this
way?

A: It'll grow back after a week of game-time.


Q: The Anomen flirt pack makes me like Anomen way more than Kelsey. Should I
tell Jason this, or say it aloud anywhere Jason might hear?

A: No.


Q: Y'all are pretty dirty-minded, it seems to me.

A: That's not a question.



Version History:

V1.07 (packed by jastey):
-added .ini files with mod info for ALIEN's Project Infinity.

V1.06 (packed by jastey):
-(SoA-game) Anomen SoA Flirts component installs on BGII without ToB
-corrected in tp2: infer_charset -> infer_charsets; reading of english setup.tra as fall back for Russian version.
-updated links in readme (WeiDU, Near Infinity)
-updated to WeiDU v246.

V1.05 (packed by Kulyok)
-added Russian translation by Arcanecoast & AERIE TEAM (Austin, Staylos, Aldark, Alina, Accolon, Vit MG, Toxeus)

V1.04 (packed by jastey): 
-Compatibility with BGII:EE and EET, 
-typo corrections,
-added "CombatCounter(0) !See([ENEMY])" to most of the NPC scriptblocks
-added InParty(Myself) to the flirt timer script blocks
-added "!StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck(Player1,CD_STATE_NOTVALID)" to all script blocks initiating dialogues
-removed overdefining (i.e. unnecessary) triggers from dialogue states (NPC-initiated flirts)
-Solarom conflicts: split script blocks for dialogues into "initiation" / "activation" block pairs
-made Anomen's changed hell arrival dialogue more compatible (using COPY_TRANS)
-changed "EXTEND_BOTTOM BANOMEN 432 434 366" to "ADD_TRANS_ACTION BANOMEN BEGIN 432 434 366" (for morning after dialogue variable setting)
-changed fate-spirit summoning to EET continuous compatibility
-changed variable "FWDisableFlirts" to "FWDisableFlirtsNPC" to make it independent on Kelsey's flirts (because there is no reason Anomen should stop flirting if the player wanted Kelsey to stop)
-changed killing of PID flirt dialogue states to GlobalLT("FWDisableFlirtsNPC","GLOBAL",2) to make it possible to disable NPC-initiated flirts without killing the PID flirt menue.
-corrected tra string number mixup of German translation 
-split "EXTEND_BOTTOM FINSOL01 29 30 31" for Aerie into three individual EXTEND_BOTTOM to be able to COPY_TRANS for every one individually
-added an "I'm not flirting" line for Jaheira's temporary romance-dependend silence. French translation by Isaya, Spanish by Saemon.
-added PID options to switch off / on NPC-initiated flirting: sets "FWDisableFlirtsNPC" to "1" and will deactivate the NPC-initiated flirts. (For "2", "FWDisableFlirtsNPC" would also deactivate the PID flirts, but this is only available by cheating). French translation by Isaya, Spanish by Saemon.
-updated readme description about the changed "disable flirts" variable and value
-deleted folder script-backup as it contained depleted scripts.
-(all BWPFixpack fixes integrated)
-updated to WeiDU v242.

V1.03: Full BG2 compatibility

V1.02: Updated French translation.

V1.01: Added Anomen translations in Spanish and German.
Eliminated redundant Aerie handholding.

V1.0: Added Anomen flirt pack.
Added a few new Aerie flirts.
Added "breakup flirts" for all flirt packs so you can turn away someone's
affections without waiting for the romance conflicts. Not really what I think
the flirt packs are for, but...

V0.91: Added German, French, and Spanish translations for Viconia.
Added "I'm not flirting now" disclaimers to Aerie and Jaheira for the
Underdark.

V0.9: Added German and French translations for Aerie and Jaheira, added Viconia
flirt pack, added Aerie wingification epilogues and a bit of new flirt content.
Fixed a bug with Aerie's SOA flirts where she would still try to flirt after
you slept with her. Added a short Jaheira dialogue after Dermin tells her she
is targeted for execution, to correct a Bioware omission that creates an
unexpected flirting session. Added full Jaheira translation.

V0.81: Added Aerie and partial Jaheira translations into Spanish, thanks
to CLAN DLAN (Dufroise/Immortality.) Added minor new content, such as a few
cleanups to lines that should have had line breaks between them, and made
Aerie's reluctance to flirt early in TOB more clear.

V0.8: Released Aerie and Jaheira Flirt Packs



Flirt Packs were brought to life with WeiDU and Near Infinity.

Special thanks for thankless grunt work go to Bex and INeedTheNet[InMyRoom/
OnMyCPU]


NPC technical elements, including scripts, are Copyright © 2002-2003 Jesse
Meyers and Jason Compton. NPC audiovisual elements are Copyright © 2001-
2003 Jason Compton, Wynne Lurty, Margot Koval, and Jennifer Limon

NPC Flirt Packs were not developed, supported, or endorsed by BioWare or
Interplay/Black Isle.


REDISTRIBUTION NOTE: NPC Flirt Packs were created to be freely enjoyed by
all Baldur's Gate 2 players. However, this program may not be sold,
published, compiled or redistributed in any form without the consent of
its authors.


LINKS

https://github.com/WeiDUorg/weidu/releases/latest:  		Home of WeiDU
								(formerly: 											http://www.weidu.org)

http://www.pocketplane.net:           				Home of Kelsey, and other fine
                                      				projects!

https://github.com/Argent77/NearInfinity/releases/latest: 	Home of Near Infinity
								(formerly:
								http://www.idi.ntnu.no/~joh/ni)

http://infexp.sourceforge.net:        				Home of Infinity Explorer

