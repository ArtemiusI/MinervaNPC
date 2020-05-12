BEGIN C0MMin

CHAIN IF WEIGHT #-1 ~Global("C0MMinBegin","GLOBAL",1)~ THEN C0MMin MINERVA-BEGIN
~Nice to see some faces that look like they've a hankering for some action! Just give me a moment to get down from here...~ [C0BLANK]
DO ~StartCutSceneMode()
CutSceneId("C0MMin")
SetGlobal("C0MMinBegin","GLOBAL",2)
FadeToColor([30.0],0)
Wait(2)
JumpToObject([PC])
Wait(2)
FaceObject([PC])
ActionOverride(Player1,FaceObject("C0MMin"))
ActionOverride(Player2,FaceObject("C0MMin"))
ActionOverride(Player3,FaceObject("C0MMin"))
ActionOverride(Player4,FaceObject("C0MMin"))
ActionOverride(Player5,FaceObject("C0MMin"))
ActionOverride(Player6,FaceObject("C0MMin"))
FadeFromColor([30.0],0)
Wait(4)
StartDialogueNoSet([PC])~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0MMinBegin","GLOBAL",2)~ THEN C0MMin MINERVA-BEGIN
~Ha ha, did you like my little display of acrobatics? I apologize if my presence on the roof shocked you.~ [C0BLANK]
DO ~SetGlobal("C0MMinBegin","GLOBAL",3)~
END
++ ~That's alright. Might I know your name, though?~ + MINERVA-1
++ ~Quite a singing voice you have.~ + MINERVA-2
++ ~Who are you, gnome, and why should I care?~ + MINERVA-1
++ ~I'm sorry, but I really don't have the time to talk to you.~ + MINERVA-END

CHAIN C0MMin MINERVA-1
~Minerva. Minerva Glimmershine, wandering artificer and thrill-seeker extraordinaire, all the way from Lantan. Occasionally, I dabble in a little bit of rooftop performance, as you've seen.~
END
IF ~NumInPartyGT(1)~ EXTERN C0MMin MINERVA-3a
IF ~!NumInPartyGT(1)~ EXTERN C0MMin MINERVA-3b

CHAIN C0MMin MINERVA-2
~Well, thank you! You're certainly a more appreciative audience than the folk I've met on the road. Of course, most of those were orcs and goblins.~
= ~That aside, however, allow me to introduce myself.~
EXTERN C0MMin MINERVA-1

CHAIN C0MMin MINERVA-3a
~Now then, let's have a look at you... you're the adventurers who arrived recently, yep? If I'm not mistaken—and rarely I am, that long-legged Hrothgar who just left the tavern asked something that only someone with a little bit of experience in the wild can handle. Whatever it is—and if it's not too much trouble, that is, I'd like to join in.~
EXTERN C0MMin MINERVA-4

CHAIN C0MMin MINERVA-3b
~Now then, let's have a look at you... you're the adventurer that arrived recently, yep? Hmm, wow... just the one of you? I didn't think I'd find another lone wanderer in these parts.~
= ~If I'm not mistaken—and rarely I am, that long-legged Hrothgar who just left the tavern asked something that only someone with a little bit of experience in the wild can handle. Whatever it is—and if it's not too much trouble, that is, I'd like to join in.~
EXTERN C0MMin MINERVA-4

CHAIN C0MMin MINERVA-4
~I'm a good hand with knives, traps, potions... standard fare for any student of Lantanese arts. Well, minus the knife-throwing. I picked that one up on my own. And I'm good... very good. If you don't believe me, I can demonstrate right—well, perhaps not right now.~
= ~But suffice to say, I've got more than enough skill to make my company worth your while. That being said, you can do as you please.~
END
++ ~I'd be happy to have you join me, Minerva.~ + MINERVA-JOIN
+ ~NumInPartyGT(5)~ + ~I've got no more room for new companions, sadly.~ + MINERVA-END
+ ~!NumInPartyGT(5)
NumInPartyGT(1)~ + ~I've got all the company I need at the moment.~ + MINERVA-END
+ ~!NumInPartyGT(1)~ + ~I'd rather travel alone for the time being.~ + MINERVA-END
++ ~No way. Beat it, gnome.~ + MINERVA-END

CHAIN C0MMin MINERVA-JOIN
~Oh, splendiferous! A picnic of trout and cheese on a rooftop is well and good, but hardly a loss when great adventures await! You won't regret this.~
DO ~JoinParty()~ EXIT

CHAIN C0MMin MINERVA-END
~Oh well, it is what it is, I suppose. I suppose I can't keep on talking if no one's listening. Tell you what, though, if you're ever interested in some more company, I'll be at the Snowdrift inn for the time being.~
DO ~EscapeAreaMove("AR1008",368,520,W)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0MMinBegin","GLOBAL",3)~ THEN C0MMin MINERVA-INN
~Hello there! Is this just a friendly visit, or do you need something from me? I'm itching for an adventure.~ [C0BLANK]
END
++ ~I'd be happy to have you join me, Minerva.~ + MINERVA-JOIN-2
+ ~NumInPartyGT(5)~ + ~I've got no more room for new companions, sadly.~ EXIT
+ ~!NumInPartyGT(5)
NumInPartyGT(1)~ + ~I've got all the company I need at the moment.~ EXIT
+ ~!NumInPartyGT(1)~ + ~I'd rather travel alone for the time being.~ EXIT

CHAIN C0MMin MINERVA-JOIN-2
~Gladly!~
DO ~JoinParty()~ EXIT

BEGIN C0MMinP

CHAIN IF WEIGHT #-1 ~HappinessLT(Myself,-299)~ THEN C0MMinP MINERVA-LEAVES-LOWREP
~And I thought travelling alone was bad! I'd be happier on my own.~
DO ~EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("KickedOut","LOCALS",0)~ THEN C0MMinP MINERVA-KICKEDOUT
~Oh, is that it? Do you need me to take a break for a while?~
END
++ ~No, I made a mistake. Stay.~ DO ~JoinParty()~ EXIT
+ ~!AreaCheck("AR1008")
!AreaCheck("AR2114")~ + ~Wait here for now.~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
+ ~AreaCheck("AR1008")~ + ~Wait here for now.~ DO ~MoveToPoint([368.520]) SmallWait(1) Face(W) SetGlobal("KickedOut","LOCALS",1)~ EXIT
+ ~AreaCheck("AR2114")~ + ~Wait here for now.~ DO ~MoveToPoint([235.211]) SmallWait(1) Face(NE) SetGlobal("KickedOut","LOCALS",1)~ EXIT
+ ~!AreaCheck("AR1200")
!AreaCheck("AR1201")
!AreaCheck("AR1008")
!Global("AR2000_visited","GLOBAL",1)
!Global("AR2100_visited","GLOBAL",1)~ + ~I'll meet you at the Snowdrift Inn.~ DO ~EscapeAreaMove("AR1008",368,520,W) SetGlobal("KickedOut","LOCALS",1)~ EXIT
+ ~OR(2)
AreaCheck("AR1200")
AreaCheck("AR1201")
!Global("AR2000_visited","GLOBAL",1)
!Global("AR2100_visited","GLOBAL",1)~ + ~Go back to Easthaven for now. I'll meet you at the Snowdrift Inn.~ DO ~EscapeAreaMove("AR1008",368,520,W) SetGlobal("KickedOut","LOCALS",1)~ EXIT
+ ~!Global("Master_Quest","GLOBAL",1)
!Global("Master_Quest","GLOBAL",2)
!Global("Master_Quest","GLOBAL",3)
!Global("Master_Quest","GLOBAL",4)
!Global("Master_Quest","GLOBAL",5)
!Global("Master_Quest","GLOBAL",6)
!Global("Master_Quest","GLOBAL",7)
OR(3)
!GlobalGT("Hjollder_Quest","GLOBAL",2)
Global("HOW_COMPLETED","GLOBAL",1)
Global("Exp_Pause","GLOBAL",1)
OR(16)
AreaCheck("AR2100")
AreaCheck("AR2101")
AreaCheck("AR2102")
AreaCheck("AR2103")
AreaCheck("AR2104")
AreaCheck("AR2105")
AreaCheck("AR2106")
AreaCheck("AR2107")
AreaCheck("AR2108")
AreaCheck("AR2109")
AreaCheck("AR2110")
AreaCheck("AR2111")
AreaCheck("AR2112")
AreaCheck("AR2113")
AreaCheck("AR2115")
AreaCheck("AR2116")
Global("AR2100_visited","GLOBAL",1)~ + ~I'll meet you at the Evening Shade.~ DO ~EscapeAreaMove("AR2114",235,211,NE) SetGlobal("KickedOut","LOCALS",1)~ EXIT
+ ~!Global("Master_Quest","GLOBAL",1)
!Global("Master_Quest","GLOBAL",2)
!Global("Master_Quest","GLOBAL",3)
!Global("Master_Quest","GLOBAL",4)
!Global("Master_Quest","GLOBAL",5)
!Global("Master_Quest","GLOBAL",6)
!Global("Master_Quest","GLOBAL",7)
OR(3)
!GlobalGT("Hjollder_Quest","GLOBAL",2)
Global("HOW_COMPLETED","GLOBAL",1)
Global("Exp_Pause","GLOBAL",1)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2103")
!AreaCheck("AR2104")
!AreaCheck("AR2105")
!AreaCheck("AR2106")
!AreaCheck("AR2107")
!AreaCheck("AR2108")
!AreaCheck("AR2109")
!AreaCheck("AR2110")
!AreaCheck("AR2111")
!AreaCheck("AR2112")
!AreaCheck("AR2113")
!AreaCheck("AR2114")
!AreaCheck("AR2115")
!AreaCheck("AR2116")
Global("AR2100_visited","GLOBAL",1)~ + ~Go back to Kuldahar for now. I'll meet you at the Evening Shade.~ DO ~EscapeAreaMove("AR2114",235,211,NE) SetGlobal("KickedOut","LOCALS",1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("KickedOut","LOCALS",1)~ THEN C0MMinP MINERVA-REJOIN
~Oh, hello there! Have you come to pick me up?~
END
++ ~Yes, join me.~ DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
++ ~No, not yet.~ EXIT
++ ~I'll be back for you later.~ EXIT