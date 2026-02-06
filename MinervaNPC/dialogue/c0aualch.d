BEGIN C0AUALCH

IF ~True()~ THEN BEGIN alchemy
SAY @0
+ ~!Global("C0AUIN5","GLOBAL",1)~ + @1 DO ~SetGlobal("C0ArtificerAlchemy","LOCALS",1) StartStore("c0aupot1",LastTalkedToBy(Myself))~ EXIT
+ ~Global("C0AUIN5","GLOBAL",1)~ + @2 DO ~SetGlobal("C0ArtificerAlchemy","LOCALS",1) StartStore("c0aupot1",LastTalkedToBy(Myself))~ EXIT
+ ~Global("C0AUIN5","GLOBAL",1) Global("C0AdvancedAlchemy","LOCALS",0)~ + @3 DO ~SetGlobal("C0ArtificerAlchemy","LOCALS",1) StartStore("c0aupoth",LastTalkedToBy(Myself))~ EXIT
END