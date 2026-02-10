CHAIN IF WEIGHT #-1 ~IsGabber("C0MMin")~ THEN C0MODR a0
~This unit stands at attention.~
END 
+ ~CombatCounter(0)
HPPercentLT(Myself,100)~ + ~Repair.~ + repair
+ ~Global("Standby","LOCALS",0)~ + ~Standby.~ DO ~SetGlobal("Standby","LOCALS",1) RemoveFamiliar()~ EXIT
+ ~Global("Standby","LOCALS",1)~ + ~Follow.~ DO ~SetGlobal("Standby","LOCALS",0) AddFamiliar()~ EXIT
++ ~Dismantle.~ DO ~Kill(Myself)~ EXIT
+ ~Global("SelfDefense","LOCALS",0)~ + ~Disable self-defense protocol.~ DO ~SetGlobal("SelfDefense","LOCALS",1)~ + disableAI
+ ~Global("SelfDefense","LOCALS",1)~ + ~Enable self-defense protocol.~ DO ~SetGlobal("SelfDefense","LOCALS",0)~ + enableAI
++ ~Exit~ EXIT

CHAIN C0MODR repair
~Repairing damage...~
DO ~FadeFromColor([30.0],0)~
= ~This unit has been fully repaired.~
DO ~ApplySpellRES("c0repair",Myself)~ EXIT

CHAIN C0MODR disableAI
~Self-defense protocol deactivated. This unit will no longer take action of its own accord except for following and protecting its creator.~
EXIT

CHAIN C0MODR enableAI
~Self-defense protocol activated. This unit will defend itself and its creator from all hostiles.~
EXIT

CHAIN IF WEIGHT #-1 ~!IsGabber("C0MMin")~ THEN C0MODR b0
~This unit ignores you.~
EXIT