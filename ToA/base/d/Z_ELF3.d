BEGIN ~Z_ELF3~

IF ~~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1
  SAY @0
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 2
  SAY @1
  IF ~~ THEN DO ~Wait(2)
CreateVisualEffect("spmonsum",[914.617])
CreateVisualEffect("spmonsum",[1069.611])
CreateVisualEffect("spmonsum",[1057.690])
CreateVisualEffect("spmonsum",[1001.631])
Wait(1)
CreateCreature("elear01",[914.617],5)
CreateCreature("elfir01",[1069.611],5)
CreateCreature("elair01",[1057.690],5)
CreateCreature("wolfva01",[1001.631],5)~ EXIT
END
