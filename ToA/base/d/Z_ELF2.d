BEGIN ~Z_ELF2~

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
  IF ~~ THEN DO ~Wait(1)
CreateVisualEffect("spmonsum",[1202.993])
CreateVisualEffect("spmonsum",[1283.1015])
CreateVisualEffect("spmonsum",[1226.1082])
CreateVisualEffect("spmonsum",[1122.1078])
Wait(1)
CreateCreature("elear01",[1202.993],5)
CreateCreature("elfir01",[1283.1015],5)
CreateCreature("elair01",[1226.1082],5)
CreateCreature("wolfva01",[1122.1078],5)~ EXIT
END
