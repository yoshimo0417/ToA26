BEGIN ~Z_2NEKER~

IF ~Global("ZNekeTalk","LOCALS",0)
Global("Z2GeneralTod","GLOBAL",0)
Global("ZSchlachtCut1","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("ZNekeTalk","LOCALS",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @8
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @9
  IF ~~ THEN DO ~SetGlobal("ZNekeTalk","LOCALS",1)~ EXIT
END

IF ~Global("ZNekeTalk","LOCALS",1)
Global("Z2GeneralTod","GLOBAL",0)
Global("ZSchlachtCut1","GLOBAL",0)~ THEN BEGIN 8
  SAY @10
  IF ~~ THEN REPLY @11 EXIT
  IF ~~ THEN REPLY @12 DO ~SetGlobal("ZNekeTalk","LOCALS",2)
SetGlobal("Z2StopGeneral","GLOBAL",1)
ActionOverride(Player1,LeaveAreaLUA("Z2BERG","",[4131.2579],10))
ActionOverride(Player2,LeaveAreaLUA("Z2BERG","",[4162.2567],10))
ActionOverride(Player3,LeaveAreaLUA("Z2BERG","",[4101.2563],10))
ActionOverride(Player4,LeaveAreaLUA("Z2BERG","",[4059.2594],10))
ActionOverride(Player5,LeaveAreaLUA("Z2BERG","",[4080.2635],10))
ActionOverride(Player6,LeaveAreaLUA("Z2BERG","",[4170.2623],10))~ EXIT
END

IF ~Global("Z2GeneralTod","GLOBAL",1)
Global("ZSchlachtCut1","GLOBAL",0)~ THEN BEGIN 9
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @16
  IF ~~ THEN DO ~FadeToColor([10.0],0)
Wait(1)
ActionOverride(Player1,LeaveAreaLUA("Z2SCHL","",[2844.3110],10))
ActionOverride(Player2,LeaveAreaLUA("Z2SCHL","",[2791.3094],10))
ActionOverride(Player3,LeaveAreaLUA("Z2SCHL","",[2807.3130],10))
ActionOverride(Player4,LeaveAreaLUA("Z2SCHL","",[2856.3133],10))
ActionOverride(Player5,LeaveAreaLUA("Z2SCHL","",[2852.3166],10))
ActionOverride(Player6,LeaveAreaLUA("Z2SCHL","",[2799.3158],10))~ EXIT
END

IF ~Global("ZSchlachtCut1","GLOBAL",1)~ THEN BEGIN 11
  SAY @17
  IF ~~ THEN DO ~SetGlobal("ZSchlachtCut1","GLOBAL",2)~ EXIT
END

IF ~Global("ZSchlachtCut1","GLOBAL",3)~ THEN BEGIN 12
  SAY @18
  IF ~~ THEN EXTERN ~Z_2SPE~ 0
END
