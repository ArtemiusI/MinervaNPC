CHAIN IF WEIGHT #-1 ~IsGabber("C0MMin")~ THEN C0MODR a0
@0
END 
+ ~CombatCounter(0)
HPPercentLT(Myself,100)~ + @1 + repair
+ ~Global("Standby","LOCALS",0)~ + @2 DO ~SetGlobal("Standby","LOCALS",1) RemoveFamiliar()~ EXIT
+ ~Global("Standby","LOCALS",1)~ + @3 DO ~SetGlobal("Standby","LOCALS",0) AddFamiliar()~ EXIT
++ @4 DO ~Kill(Myself)~ EXIT
+ ~Global("SelfDefense","LOCALS",0)~ + @5 DO ~SetGlobal("SelfDefense","LOCALS",1)~ + disableAI
+ ~Global("SelfDefense","LOCALS",1)~ + @6 DO ~SetGlobal("SelfDefense","LOCALS",0)~ + enableAI
++ @7 EXIT

CHAIN C0MODR repair
@8
DO ~FadeFromColor([30.0],0)~
= @9
DO ~ApplySpellRES("c0repair",Myself)~ EXIT

CHAIN C0MODR disableAI
@10
EXIT

CHAIN C0MODR enableAI
@11
EXIT

CHAIN IF WEIGHT #-1 ~!IsGabber("C0MMin")~ THEN C0MODR b0
@12
EXIT