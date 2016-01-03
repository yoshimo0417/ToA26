BEGIN ~Z_GALA4~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~CreateVisualEffectObject("spdimndr","z_galf3")
CreateVisualEffectObject("spdimndr","z_gala3")
DisplayStringHead("z_galf3",@99999)
DisplayStringHead("z_gala3",@99999)
ActionOverride("z_galf3",DestroySelf())
DestroySelf()~ EXIT
END
