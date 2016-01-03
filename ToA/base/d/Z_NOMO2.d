BEGIN ~Z_NOMO2~

IF ~Global("ZMarlikFlee","GLOBAL",1)
Global("ZMarlikCutscene","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~Z_MARL2~ 0
END

IF ~Global("ZMarlikFlee","GLOBAL",1)
Global("ZMarlikCutscene","GLOBAL",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXTERN ~Z_MARL2~ 2
END

IF ~Global("ZMarlikFlee","GLOBAL",2)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~AddXPObject(Player1,25924)
AddXPObject(Player2,25924)
AddXPObject(Player3,25924)
AddXPObject(Player4,25924)
AddXPObject(Player5,25924)
AddXPObject(Player6,25924)~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN DO ~SetGlobal("ZMarlikFlee","GLOBAL",3)~ EXIT
END

IF ~Global("ZMarlikFlee","GLOBAL",3)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @8
  IF ~~ THEN DO ~SetGlobal("ZMarlikFlee","GLOBAL",4)~ EXIT
END
