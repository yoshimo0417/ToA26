BEGIN ~Z_NOMO4~

IF ~Global("ZCaveNomoTalked","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN DO ~CreateVisualEffectObject("spdimndr",Myself)
SetGlobal("ZCaveNomoTalked","GLOBAL",1)
Wait(1)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN DO ~CreateVisualEffectObject("spdimndr",Myself)
SetGlobal("ZCaveNomoTalked","GLOBAL",1)
Wait(1)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN DO ~CreateVisualEffectObject("spdimndr",Myself)
SetGlobal("ZCaveNomoTalked","GLOBAL",1)
Wait(1)
DestroySelf()~ EXIT
END
