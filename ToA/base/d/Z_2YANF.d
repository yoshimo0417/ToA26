BEGIN ~Z_2YANF~

IF ~Global("Z2StopPC", "GLOBAL", 0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("Z2StopPC", "GLOBAL", 1)~ EXIT
END
