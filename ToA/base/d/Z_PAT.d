BEGIN ~Z_PAT~

IF ~Global("ZBesprechung","GLOBAL",1)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("ZBewohnerHilfe","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN REPLY @6 DO ~SetGlobal("ZBewohnerHilfe","GLOBAL",1)
SetGlobal("ZBesprechung","GLOBAL",2)
AddJournalEntry(@999995,QUEST)~ EXIT
END

IF ~Global("ZBewohnerHilfe","GLOBAL",1)~ THEN BEGIN 3
  SAY @7
  IF ~Global("ZGerettetCave","GLOBAL",1)~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @10
  IF ~~ THEN DO ~SetGlobal("ZBewohnerHilfe","GLOBAL",2)
EraseJournalEntry(@999995)
AddexperienceParty(29750)
ActionOverride(Myself,CreateItem("HAMM08",0,0,0))
ActionOverride(Myself,GiveItem("HAMM08",Player1))~ EXIT
END

IF ~True()~ THEN BEGIN 5
  SAY @11
  IF ~~ THEN EXIT
END
