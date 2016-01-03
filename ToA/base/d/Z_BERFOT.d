BEGIN ~Z_BERFOT~

IF ~Global("ZKalakTod","GLOBAL",1)
Global("ZBerfotSpoken", "LOCALS", 0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("ZBerfotSpoken", "LOCALS", 1)
AddJournalEntry(@999991,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN EXIT
END

IF ~Global("ZBerfotSpoken", "LOCALS", 1)
Global("ZBerfotQuestDone", "LOCALS", 0)~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~PartyHasItem("Z_GHAM")~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN DO ~EraseJournalEntry(@999991)
SetGlobal("ZBerfotQuestDone", "LOCALS", 1)
TakePartyItem("Z_GHAM")
AddexperienceParty(35270)
GiveItem("Z_GOLA",Player1)~ EXIT
END

IF ~True()~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN EXIT
END
