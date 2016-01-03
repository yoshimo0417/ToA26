BEGIN ~Z_MARY~

IF ~Global("ZHexenTalk", "GLOBAL", 0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~Z_WINIF~ 0
END

IF ~Global("ZHexenTalk", "GLOBAL", 0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXTERN ~Z_SARAH~ 5
END

IF ~Global("ZHexenTalk", "GLOBAL", 0)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXTERN ~Z_SARAH~ 7
END

IF ~Global("ZHexenTalk", "GLOBAL", 0)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~SetGlobal("ZHexenTalk", "GLOBAL", 1)~ EXIT
END
