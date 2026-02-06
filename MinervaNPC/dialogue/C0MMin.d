BEGIN C0MMin

CHAIN IF WEIGHT #-1 ~Global("C0MMinBegin","GLOBAL",1)~ THEN C0MMin MINERVA-BEGIN
@0
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
@1
DO ~SetGlobal("C0MMinBegin","GLOBAL",3)~
END
++ @2 + MINERVA-1
++ @3 + MINERVA-2
++ @4 + MINERVA-1
++ @5 + MINERVA-END

CHAIN C0MMin MINERVA-1
@6
END
IF ~NumInPartyGT(1)~ EXTERN C0MMin MINERVA-3a
IF ~!NumInPartyGT(1)~ EXTERN C0MMin MINERVA-3b

CHAIN C0MMin MINERVA-2
@7
= @8
EXTERN C0MMin MINERVA-1

CHAIN C0MMin MINERVA-3a
@9
EXTERN C0MMin MINERVA-4

CHAIN C0MMin MINERVA-3b
@10
= @11
EXTERN C0MMin MINERVA-4

CHAIN C0MMin MINERVA-4
@12
= @13
END
++ @14 + MINERVA-JOIN
+ ~NumInPartyGT(5)~ + @15 + MINERVA-END
+ ~!NumInPartyGT(5)
NumInPartyGT(1)~ + @16 + MINERVA-END
+ ~!NumInPartyGT(1)~ + @17 + MINERVA-END
++ @18 + MINERVA-END

CHAIN C0MMin MINERVA-JOIN
@19
DO ~JoinParty()~ EXIT

CHAIN C0MMin MINERVA-END
@20
DO ~EscapeAreaMove("AR1008",368,520,W)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0MMinBegin","GLOBAL",3)~ THEN C0MMin MINERVA-INN
@21
END
++ @14 + MINERVA-JOIN-2
+ ~NumInPartyGT(5)~ + @15 EXIT
+ ~!NumInPartyGT(5)
NumInPartyGT(1)~ + @16 EXIT
+ ~!NumInPartyGT(1)~ + @17 EXIT

CHAIN C0MMin MINERVA-JOIN-2
@22
DO ~JoinParty()~ EXIT

BEGIN C0MMinP

CHAIN IF WEIGHT #-1 ~HappinessLT(Myself,-299)~ THEN C0MMinP MINERVA-LEAVES-LOWREP
@23
DO ~EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("KickedOut","LOCALS",0)~ THEN C0MMinP MINERVA-KICKEDOUT
@24
END
++ @25 DO ~JoinParty()~ EXIT
+ ~!AreaCheck("AR1008")
!AreaCheck("AR2114")~ + @26 DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
+ ~AreaCheck("AR1008")~ + @26 DO ~MoveToPoint([368.520]) SmallWait(1) Face(W) SetGlobal("KickedOut","LOCALS",1)~ EXIT
+ ~AreaCheck("AR2114")~ + @26 DO ~MoveToPoint([235.211]) SmallWait(1) Face(NE) SetGlobal("KickedOut","LOCALS",1)~ EXIT
+ ~!AreaCheck("AR1200")
!AreaCheck("AR1201")
!AreaCheck("AR1008")
!Global("AR2000_visited","GLOBAL",1)
!Global("AR2100_visited","GLOBAL",1)~ + @27 DO ~EscapeAreaMove("AR1008",368,520,W) SetGlobal("KickedOut","LOCALS",1)~ EXIT
+ ~OR(2)
AreaCheck("AR1200")
AreaCheck("AR1201")
!Global("AR2000_visited","GLOBAL",1)
!Global("AR2100_visited","GLOBAL",1)~ + @28 DO ~EscapeAreaMove("AR1008",368,520,W) SetGlobal("KickedOut","LOCALS",1)~ EXIT
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
Global("AR2100_visited","GLOBAL",1)~ + @29 DO ~EscapeAreaMove("AR2114",235,211,NE) SetGlobal("KickedOut","LOCALS",1)~ EXIT
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
Global("AR2100_visited","GLOBAL",1)~ + @30 DO ~EscapeAreaMove("AR2114",235,211,NE) SetGlobal("KickedOut","LOCALS",1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("KickedOut","LOCALS",1)~ THEN C0MMinP MINERVA-REJOIN
@31
END
++ @32 DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
++ @33 EXIT
++ @34 EXIT