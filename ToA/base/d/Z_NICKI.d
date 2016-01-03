BEGIN ~Z_NICKI~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~Z_BIANCA~ 0
END

IF ~True()~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXTERN ~Z_BIANCA~ 1
END

IF ~True()~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~CreateVisualEffect("spdimndr",[1093.792])
CreateVisualEffect("spdimndr",[1045.805])
Wait(1)
DisplayStringHead("z_nicki",@99999)
DisplayStringHead("z_bianca",@99999)
SetGlobal("ZIntoPrison","GLOBAL",4)
ActionOverride("z_bianca",DestroySelf())
DestroySelf()~ EXIT
END
