BEGIN ~Z_JUNG1~

IF ~Global("ZJungfrau1","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1  GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @3 
  IF ~~ THEN DO ~ActionOverride("z_jung3",MoveToPoint([1002.592]))
ActionOverride("z_jung2",MoveToPoint([1002.592]))
ActionOverride("z_jung1",MoveToPoint([1002.592]))
SetGlobal("ZJungfrau1","GLOBAL",1)
ActionOverride("z_jung3",DestroySelf())
ActionOverride("z_jung2",DestroySelf())
ActionOverride("z_jung1",DestroySelf())~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4 
  IF ~~ THEN DO ~ActionOverride("z_jung3",MoveToPoint([1002.592]))
ActionOverride("z_jung2",MoveToPoint([1002.592]))
ActionOverride("z_jung1",MoveToPoint([1002.592]))
SetGlobal("ZJungfrau1","GLOBAL",1)
ActionOverride("z_jung3",DestroySelf())
ActionOverride("z_jung2",DestroySelf())
ActionOverride("z_jung1",DestroySelf())~ EXIT
END
