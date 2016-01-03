BEGIN ~Z_2ELSA2~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~Z_2NAUR2~ 1
END

IF ~True()~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~GiveItem("z_elbow",Player1)
SetGlobal("ZElsasundNaurRaus","GLOBAL",1)~ EXIT
END
