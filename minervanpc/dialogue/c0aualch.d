BEGIN C0AUALCH

IF ~True()~ THEN BEGIN alchemy
SAY @0 /* What do you wish to create?

(Note: Alchemy is significantly more expensive in the wild!) */
+ ~!Global("C0AUIN5","GLOBAL",1)~ + @1 /* Potions */ DO ~SetGlobal("C0ArtificerAlchemy","LOCALS",1) StartStore("c0aupot1",LastTalkedToBy(Myself))~ EXIT
+ ~Global("C0AUIN5","GLOBAL",1)~ + @2 /* Standard Potions */ DO ~SetGlobal("C0ArtificerAlchemy","LOCALS",1) StartStore("c0aupot1",LastTalkedToBy(Myself))~ EXIT
+ ~Global("C0AUIN5","GLOBAL",1) Global("C0AdvancedAlchemy","LOCALS",0)~ + @3 /* Advanced Potions */ DO ~SetGlobal("C0ArtificerAlchemy","LOCALS",1) StartStore("c0aupoth",LastTalkedToBy(Myself))~ EXIT
END