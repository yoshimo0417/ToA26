BEGIN ~Z_2BDRA~

IF ~Global("ZLastFightToB", "GLOBAL", 0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~SetGlobal("ZLastFightToB", "GLOBAL", 1)
SetGlobal("ZDragonDead", "GLOBAL", 0)
Enemy()~ EXIT
END
