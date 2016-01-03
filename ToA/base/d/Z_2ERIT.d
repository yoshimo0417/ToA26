BEGIN ~Z_2ERIT~

IF ~Global("Z2BergStop","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("Z2BergStop","GLOBAL",2)~ EXIT
END
