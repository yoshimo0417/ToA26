BEGIN ~Z_NOMO5~

IF ~Global("ZPortalCutscene","GLOBAL",1)
Global("ZPortalTalkno","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("ZPortalTalkno","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @4 DO ~SetGlobal("ZPortalCutscene","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN EXIT
END

IF ~Global("ZPortalTalkno","GLOBAL",1)~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN REPLY @3 EXIT
  IF ~~ THEN REPLY @4 DO ~SetGlobal("ZPortalCutscene","GLOBAL",3)~ EXIT
END
