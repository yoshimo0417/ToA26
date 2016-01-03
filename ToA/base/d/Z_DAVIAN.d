BEGIN ~Z_DAVIAN~

IF ~Global("ZDavianSpoken", "LOCALS", 0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN DO ~SetGlobal("ZDavianSpoken", "LOCALS", 1)~ EXIT
END

IF ~Global("ZDavianSpoken", "LOCALS", 1)~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN REPLY @6 DO ~StartStore("z_davian",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @7 EXIT
END
