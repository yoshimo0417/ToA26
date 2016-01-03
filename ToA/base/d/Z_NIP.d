BEGIN ~Z_NIP~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~CreateVisualEffect("spholmig",[1184.1492])
CreateVisualEffect("spholmig",[1348.1433])
Wait(1)
CreateCreature("z_slat",[1184.1492],11)
CreateCreature("z_slat",[1348.1433],11)
ReallyForceSpell(Myself,CLERIC_HOLY_POWER)
~ EXIT
END
