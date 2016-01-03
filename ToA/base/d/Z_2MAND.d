BEGIN ~Z_2MAND~

IF ~Global("ZMandrellTalk","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("ZMandrellNaurandir","LOCALS",1)~ GOTO 1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("ZMandrellErwartet","LOCALS",1)~ GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~Global("ZMandrellErwartet","LOCALS",0)~ THEN REPLY @2 GOTO 5
  IF ~Global("ZMandrellErwartet","LOCALS",1)~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN DO ~SetGlobal("ZMandrellTalk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @8
  IF ~Global("ZMandrellNaurandir","LOCALS",0)~ THEN REPLY @1 GOTO 1
  IF ~Global("ZMandrellNaurandir","LOCALS",1)~ THEN GOTO 2
END
