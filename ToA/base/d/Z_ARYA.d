BEGIN ~Z_ARYA~

IF ~Global("ZAryaSpoken", "GLOBAL", 0)
Global("ZKalakTod","GLOBAL",1)
Global("z_BuergSpoken","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN DO ~SetGlobal("ZAryaSpoken", "GLOBAL", 1)
AddJournalEntry(@999996,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN DO ~SetGlobal("ZAryaSpoken", "GLOBAL", 2)
AddJournalEntry(@999990,QUEST)~ EXIT
END

IF ~Global("ZAryaSpoken", "GLOBAL", 1)
Global("z_BuergSpoken","GLOBAL",0)~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN EXIT
END

IF ~Global("ZAryaSpoken", "GLOBAL", 2)
Global("z_BuergSpoken","GLOBAL",0)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN EXIT
END

IF ~Global("ZAryaSpoken", "GLOBAL", 1)
Global("z_BuergSpoken","GLOBAL",2)
Global("ZAryaQuestDone", "GLOBAL", 0)~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN DO ~EraseJournalEntry(@999990)
EraseJournalEntry(@999996)
AddexperienceParty(24390)
SetGlobal("ZAryaSpoken", "GLOBAL", 3)
SetGlobal("ZAryaQuestDone", "GLOBAL", 1)~ EXIT
END

IF ~Global("ZAryaSpoken", "GLOBAL", 0)
Global("z_BuergSpoken","GLOBAL",2)
Global("ZAryaQuestDone", "GLOBAL", 0)~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN DO ~EraseJournalEntry(@999990)
EraseJournalEntry(@999996)
AddexperienceParty(24390)
SetGlobal("ZAryaSpoken", "GLOBAL", 3)
SetGlobal("ZAryaQuestDone", "GLOBAL", 1)~ EXIT
END

IF ~Global("ZAryaSpoken", "GLOBAL",3)
Global("z_BuergSpoken","GLOBAL",2)
Global("ZAryaQuestDone", "GLOBAL", 1)~ THEN BEGIN 7
  SAY @6
  IF ~~ THEN EXIT
END
