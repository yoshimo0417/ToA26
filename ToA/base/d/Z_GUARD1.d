BEGIN ~Z_GUARD1~

IF ~Global("ZGuardSpoken", "LOCALS", 0)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN REPLY @1 DO ~SetGlobal("ZGuardSpoken", "LOCALS", 1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Global("ZGuardSpoken", "LOCALS", 1)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END
