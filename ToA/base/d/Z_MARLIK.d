BEGIN ~Z_MARLIK~

IF ~Global("ZMarlikTalk","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("ZMarlikTalk","GLOBAL",1)
Enemy()~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @9
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @10
  IF ~~ THEN DO ~RealSetGlobalTimer("ZTeleport","LOCALS",10)~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @11
  IF ~~ THEN DO ~SetGlobal("ZMarlikTalk","GLOBAL",1)
Enemy()~ GOTO 1
END

IF ~~ THEN BEGIN 9
  SAY @11
  IF ~~ THEN DO ~SetGlobal("ZMarlikTalk","GLOBAL",1)
Enemy()~ GOTO 1
END

IF ~~ THEN BEGIN 10
  SAY @11
  IF ~~ THEN DO ~SetGlobal("ZMarlikTalk","GLOBAL",1)
Enemy()~ GOTO 1
END
