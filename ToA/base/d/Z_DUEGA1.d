BEGIN ~Z_DUEGA1~

IF ~Global("ZDuegaTalk","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~Z_DUEGA2~ 1
END

IF ~Global("ZDuegaTalk","GLOBAL",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXTERN ~Z_DUEGA2~ 2
END

IF ~Global("ZDuegaTalk","GLOBAL",0)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("ZDuegaTalk","GLOBAL",1)~ EXIT
END
