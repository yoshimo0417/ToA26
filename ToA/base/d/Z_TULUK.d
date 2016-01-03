BEGIN ~Z_TULUK~

IF ~~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("MalakAttacks","LOCALS",1)
ReallyForceSpell(Myself,WIZARD_MINOR_GLOBE_OF_INVULNERABILITY)
CreateVisualEffect("spportal",[556.246])
CreateVisualEffect("spportal",[401.290])
CreateVisualEffect("spportal",[502.353])
CreateCreature("elairsuw",[556.246],4)
CreateCreature("elairsuw",[401.290],4)
CreateCreature("elairsuw",[502.353],4)
ReallyForceSpell(Myself,WIZARD_CLOUDKILL)~ EXIT
END

IF ~Global("TulukAttacks","LOCALS",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("TulukAttacks","LOCALS",1)~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("MalakAttacks","LOCALS",1)
ReallyForceSpell(Myself,WIZARD_MINOR_GLOBE_OF_INVULNERABILITY)
CreateVisualEffect("spportal",[556.246])
CreateVisualEffect("spportal",[401.290])
CreateVisualEffect("spportal",[502.353])
CreateCreature("elair01",[556.246],4)
CreateCreature("elair01",[401.290],4)
CreateCreature("elair01",[502.353],4)~ EXIT
END
