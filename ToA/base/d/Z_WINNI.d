BEGIN ~Z_WINNI~

IF ~Global("ZWinniQuest","LOCALS",0)
!PartyHasItem("Z_AAMU")
!PartyHasItem("Z_BAMU")
!PartyHasItem("Z_EAMU")
!PartyHasItem("Z_RAMU")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~RealSetGlobalTimer("ZWinniWalk","LOCALS",5)~ EXIT
END

IF ~Global("ZWinniQuest","LOCALS",0)
~ THEN BEGIN 1
  SAY @0
  IF ~~ THEN DO ~SetGlobal("ZWinniQuest","LOCALS",1)~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @1
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN REPLY @5 DO ~RealSetGlobalTimer("ZWinniWalk","LOCALS",5)
AddJournalEntry(@999999,QUEST)~ EXIT
END

IF ~Global("ZWinniQuest","LOCALS",1)~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~PartyHasItem("Z_AAMU")
PartyHasItem("Z_BAMU")
PartyHasItem("Z_EAMU")
PartyHasItem("Z_RAMU")~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 9
END

IF ~~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN DO ~RealSetGlobalTimer("ZWinniWalk","LOCALS",5)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @13
  IF ~~ THEN DO ~EraseJournalEntry(@999999)
TakePartyItem("Z_AAMU")
TakePartyItem("Z_BAMU")
TakePartyItem("Z_EAMU")
TakePartyItem("Z_RAMU")
AddXPObject(Player1,8300)
AddXPObject(Player2,8300)
AddXPObject(Player3,8300)
AddXPObject(Player4,8300)
AddXPObject(Player5,8300)
AddXPObject(Player6,8300)
SetGlobal("ZWinniQuest","LOCALS",2)
SetGlobal("ZRitualWinni","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @14
  IF ~~ THEN DO ~RealSetGlobalTimer("ZWinniWalk","LOCALS",5)~ EXIT
END

IF ~Global("ZWinniQuest","LOCALS",2)
Global("ZBeredDead","GLOBAL",1)~ THEN BEGIN 10
  SAY @15
  IF ~~ THEN EXIT
END
