BEGIN ~Z_WHEL3~

IF ~Global("ZHellTalk1","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("ZHellTalk1","LOCALS",1)
ApplySpell(Myself,WIZARD_STONE_SKIN)
ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS)
ApplySpell(Myself,WIZARD_MINOR_SPELL_TURNING)
ApplySpell(Myself,WIZARD_FIRE_SHIELD_RED)
RealSetGlobalTimer("ZFireMagic","LOCALS",5)
Enemy()~ EXIT
END
