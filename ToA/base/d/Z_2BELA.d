BEGIN ~Z_2BELA~

IF ~Global("Z2SchutzWeg","GLOBAL",0)
Global("Z2BelaTalk","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("Z2BelaTalk","GLOBAL",1)~ EXIT
END

IF ~Global("Z2SchutzWeg","GLOBAL",1)
Global("Z2BelaTalk","GLOBAL",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("Z2BelaTalk","GLOBAL",2)~ EXIT
END
