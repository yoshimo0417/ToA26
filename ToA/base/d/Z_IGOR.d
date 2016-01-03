BEGIN ~Z_IGOR~

IF ~Global("ZIgorTalk","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 DO ~SetGlobal("ZIgorTalk","GLOBAL",1)~ EXIT
  IF ~PartyHasItem("z_book1")~ THEN REPLY @5 DO ~SetGlobal("ZIgorTalk","GLOBAL",2)~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN DO ~TakePartyItem("z_book1")~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN REPLY @9 DO ~AddJournalEntry(@999997,QUEST)~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN DO ~CreateVisualEffectObject("spdimndr",Myself)
DestroySelf()~ EXIT
END

IF ~Global("ZIgorTalk","GLOBAL",1)~ THEN BEGIN 7
  SAY @12
  IF ~~ THEN REPLY @4 EXIT
  IF ~PartyHasItem("z_book1")~ THEN REPLY @13 DO ~SetGlobal("ZIgorTalk","GLOBAL",2)~ GOTO 3
END

IF ~Global("ZIgorTalk","GLOBAL",2)~ THEN BEGIN 8
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @17
  IF ~~ THEN DO ~SetGlobal("ZIgorTalk","GLOBAL",3)
CreateVisualEffect("SPPORTAL",[1174.1312])
Wait(2)
CreateCreature("z_whel1",[1174.1312],0)
CreateVisualEffectObject("spdimndr",Myself)
DestroySelf()~ EXIT
END

IF ~Global("ZIgorTalk","GLOBAL",3)
!PartyHasItem("z_free")~ THEN BEGIN 10
  SAY @18
  IF ~~ THEN DO ~SetGlobal("ZIgorTalk","GLOBAL",4)
CreateVisualEffectObject("spdimndr",Myself)
DestroySelf()~ EXIT
END

IF ~OR(2)
Global("ZIgorTalk","GLOBAL",3)
Global("ZIgorTalk","GLOBAL",4)
PartyHasItem("z_free")~ THEN BEGIN 11
  SAY @19
  IF ~~ THEN REPLY @20 EXIT
  IF ~~ THEN REPLY @21 DO ~TakePartyItem("z_free")
DestroyItem("z_free")
CreateVisualEffect("SPPORTAL",[3660.2453])
SetGlobal("ZIgorTalk","GLOBAL",5)
DestroySelf()~ EXIT
END

IF ~Global("ZIgorTalk","GLOBAL",5)~ THEN BEGIN 12
  SAY @22
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 13
  SAY @23
  IF ~~ THEN EXTERN ~Z_TANDOS~ 6
END

IF ~True()~ THEN BEGIN 14
  SAY @24
  IF ~~ THEN DO ~SetGlobal("ZDaraknorSave","GLOBAL",2)~ EXIT
END
