BEGIN ~Z_2BIBLI~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 EXIT
  IF ~Global("ZHibiTalk","GLOBAL",1)~ THEN REPLY @2 DO ~StartStore("z_2bibli",LastTalkedToBy(Myself))~ EXIT
  IF ~Global("ZHibiTalk","GLOBAL",1)~ THEN REPLY @3 GOTO 1
  IF ~!Global("ZHibiTalk","GLOBAL",1)~ THEN REPLY @2 DO ~StartStore("z_bibli",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN EXIT
END
