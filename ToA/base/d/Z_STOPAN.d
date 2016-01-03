BEGIN ~Z_STOPAN~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~ActionOverride(Myself,DestroySelf())~ EXIT
END
