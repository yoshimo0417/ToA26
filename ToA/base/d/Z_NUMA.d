BEGIN ~Z_NUMA~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~SetGlobal("ZTriadPriest","LOCALS",1)
ReallyForceSpell(Myself,CLERIC_HOLY_POWER)
ApplySpell(Myself,CLERIC_REGENERATE)
CreateVisualEffect("spholmig",[729.621])
CreateVisualEffect("spholmig",[795.586])
Wait(1)
CreateCreature("z_slat",[729.621],11)
CreateCreature("z_slat",[795.586],11)~ EXIT
END
