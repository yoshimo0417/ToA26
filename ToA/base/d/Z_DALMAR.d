BEGIN ~Z_DALMAR~

IF ~Global("ZNaurandirQuest","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~Z_NAUR~ 1
END

IF ~Global("ZNaurandirQuest","GLOBAL",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("ZNaurandirQuest","GLOBAL",2)~ EXIT
END

IF ~Global("ZDalmaranCut","GLOBAL",1)~ THEN BEGIN 2
  SAY @2
  IF ~Global("ZNaurandirQuest","GLOBAL",6)~ THEN REPLY @3 DO ~SetGlobal("ZDalmaranCut","GLOBAL",2)~ GOTO 3
  IF ~Global("ZNaurandirQuest","GLOBAL",5)~ THEN REPLY @4 DO ~SetGlobal("ZDalmaranCut","GLOBAL",2)~ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN DO ~SetGlobal("ZNaurandirQuest","GLOBAL",7)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN EXIT
END

IF ~HPPercentLT(Myself,60)
Or(2)
Global("ZNaurandirQuest","GLOBAL",7)
Global("ZNaurandirQuest","GLOBAL",8)~ THEN BEGIN 5
  SAY @7
  IF ~~ THEN DO ~ReallyForceSpell(Myself, WIZARD_DIMENSION_DOOR)
SetGlobal("ZNaurandirQuest","GLOBAL",8)
Wait(1)
DestroySelf()~ EXIT
END
