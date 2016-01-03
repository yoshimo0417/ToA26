BEGIN ~Z_ZANAI~

IF ~Global("ZDrowSzene1","GLOBAL",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~Z_DORE~ 1
END

IF ~Global("ZDrowSzene1","GLOBAL",2)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("ZDrowSzene1","GLOBAL",3)~ EXIT
END
