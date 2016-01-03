BEGIN ~Z_2SPE~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~Z_2GE1~ 0
END

IF ~True()~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXTERN ~Z_2GE2~ 0
END

IF ~True()~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~CreateCreature("z_2spe2",[3691.2577],0)
CreateVisualEffectObject("SPDISPMA","z_2spe2")
SetGlobal("ZSchlachtCut1","GLOBAL",4)
DestroySelf()~ EXIT
END
