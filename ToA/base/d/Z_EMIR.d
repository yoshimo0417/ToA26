BEGIN ~Z_EMIR~

IF ~Global("EmirQuest","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~AddJournalEntry(@999994,QUEST)
SetGlobal("EmirQuest","LOCALS",1)~ EXIT
END

IF ~Global("EmirQuest","LOCALS",1)
!PartyHasItem("z_epfeif")
!PartyHasItem("z_ekraut")~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 DO ~StartStore("z_emir",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @4 EXIT
END

IF ~PartyHasItem("z_epfeif")~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN DO ~AddexperienceParty(12350)
TakePartyItem("z_epfeif")~ EXIT
END

IF ~PartyHasItem("z_ekraut")~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN DO ~AddexperienceParty(12350)
TakePartyItem("z_ekraut")
GiveItem("POTN41",Player1)
EraseJournalEntry(@999994)~ EXIT
END
