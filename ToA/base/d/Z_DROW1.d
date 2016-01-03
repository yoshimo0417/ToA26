BEGIN ~Z_DROW1~

IF ~Global("ZGalorFollows","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("ZGalorFollows","GLOBAL",1)
SetGlobal("ZGalorSchlacht","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END
