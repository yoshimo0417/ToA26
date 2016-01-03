BEGIN ~Z_2DYRI~

IF ~Global("DyrianneTalk", "GLOBAL", 0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("DyrianneTalk", "GLOBAL", 1)
ActionOverride("z_2tara",MoveToPoint([2072.536]))
ActionOverride("z_2tara",DestroySelf())~ EXIT
END
