BEGIN ~Z_2MYST~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("ZPortalAdd","GLOBAL",1)
DestroySelf()~ EXIT
END
