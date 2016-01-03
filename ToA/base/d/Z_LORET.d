BEGIN ~Z_LORET~

IF ~Global("ZSchlacht1","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~ActionOverride(Player1,LeaveAreaLUA("ZANEGH","",[2903.3553],12))
ActionOverride(Player2,LeaveAreaLUA("ZANEGH","",[2903.3553],12))
ActionOverride(Player3,LeaveAreaLUA("ZANEGH","",[2903.3553],12))
ActionOverride(Player4,LeaveAreaLUA("ZANEGH","",[2903.3553],12))
ActionOverride(Player5,LeaveAreaLUA("ZANEGH","",[2903.3553],12))
ActionOverride(Player6,LeaveAreaLUA("ZANEGH","",[2903.3553],12))~ EXIT
END

IF ~Global("ZLoretFirstSpoken","LOCALS",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("ZLoretFirstSpoken","LOCALS",1)~ GOTO 2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("ZLoretFirstSpoken","LOCALS",1)~ GOTO 3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("ZLoretFirstSpoken","LOCALS",1)~ GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 8
  IF ~~ THEN REPLY @8 GOTO 9
END

IF ~~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @7 GOTO 8
  IF ~~ THEN REPLY @8 GOTO 9
END

IF ~~ THEN BEGIN 4
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 11
END

IF ~~ THEN BEGIN 5
  SAY @12
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @14
  IF ~~ THEN REPLY @7 GOTO 8
  IF ~~ THEN REPLY @8 GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @15
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 9
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @18
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 8
  IF ~~ THEN REPLY @8 GOTO 9
END

IF ~~ THEN BEGIN 11
  SAY @19
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 8
  IF ~~ THEN REPLY @8 GOTO 9
END

IF ~~ THEN BEGIN 12
  SAY @20
  IF ~~ THEN DO ~SetGlobal("ZBesprechung","GLOBAL",1)~ EXIT
END

IF ~Global("ZLoretFirstSpoken","LOCALS",1)~ THEN BEGIN 13
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @24
  IF ~~ THEN DO ~SetGlobal("ZSecondSchlacht","GLOBAL",1)
SetGlobal("ZLoretFirstSpoken","LOCALS",2)
FadeToColor([20.0],0)
Wait(2)
ActionOverride(Player1,LeaveAreaLUA("ZANEGH","",[2803.2870],12))
ActionOverride(Player2,LeaveAreaLUA("ZANEGH","",[2800.2872],12))
ActionOverride(Player3,LeaveAreaLUA("ZANEGH","",[2803.2875],12))
ActionOverride(Player4,LeaveAreaLUA("ZANEGH","",[2805.2865],12))
ActionOverride(Player5,LeaveAreaLUA("ZANEGH","",[2810.2868],12))
ActionOverride(Player6,LeaveAreaLUA("ZANEGH","",[2800.2870],12))~ EXIT
END

IF ~Global("ZPlaeneVorhanden","GLOBAL",0)~ THEN BEGIN 15
  SAY @25
  IF ~~ THEN REPLY @26 EXIT
  IF ~PartyHasItem("Z_BER1")
PartyHasItem("Z_BER2")
PartyHasItem("Z_BER3")~ THEN REPLY @27 DO ~SetGlobal("ZPlaeneVorhanden","GLOBAL",1)
TakePartyItem("Z_BER1")
TakePartyItem("Z_BER2")
TakePartyItem("Z_BER3")~ GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @28
  IF ~~ THEN DO ~AddXPObject(Player1,58924)
AddXPObject(Player2,58924)
AddXPObject(Player3,58924)
AddXPObject(Player4,58924)
AddXPObject(Player5,58924)
AddXPObject(Player6,58924)~ GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @29
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @30
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @31
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @32
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @33
  IF ~~ THEN DO ~GivePartyGold("58100")~ EXIT
END

IF ~True()~ THEN BEGIN 22
  SAY @34
  IF ~~ THEN EXIT
END
