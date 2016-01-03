BEGIN ~Z_DOMP~

IF ~Global("ZDompteurtalk","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("ZDompteurtalk","LOCALS",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~CreateVisualEffectObject("SPPORTAL",Player1)
Wait(2)
CreateCreatureObject("z_lind",Player1,5,0,0)
ActionOverride("z_lind",ReallyForceSpell(Myself,WIZARD_STINKING_CLOUD))~ EXIT
END

IF ~Global("ZDompteurtalk","LOCALS",2)
RandomNum(6,1)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~ActionOverride("z_lind",ReallyForceSpell(NearestEnemyOf(Myself),WIZARD_FIREBALL))~ EXIT
END

IF ~Global("ZDompteurtalk","LOCALS",2)
RandomNum(6,2)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~ActionOverride("z_lind",ReallyForceSpell(Myself,WIZARD_PROTECTION_FROM_NORMAL_WEAPONS))
ActionOverride("z_lind",ReallyForceSpell(Myself,WIZARD_MIRROR_IMAGE))
ActionOverride("z_lind",ReallyForceSpell(Myself,WIZARD_STONE_SKIN))
ActionOverride("z_lind",ReallyForceSpell(Myself,WIZARD_MINOR_SPELL_DEFLECTION))~ EXIT
END

IF ~Global("ZDompteurtalk","LOCALS",2)
RandomNum(6,3)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN DO ~ActionOverride("z_lind",ReallyForceSpell(NearestEnemyOf(Myself),SHADOW_DRAGON_BREATH))~ EXIT
END

IF ~Global("ZDompteurtalk","LOCALS",2)
RandomNum(6,4)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN DO ~ActionOverride("z_lind",ReallyForceSpell(Myself,CLERIC_CURE_SERIOUS_WOUNDS))~ EXIT
END

IF ~Global("ZDompteurtalk","LOCALS",2)
RandomNum(6,5)~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN DO ~ActionOverride("z_lind",ReallyForceSpell(Myself,WIZARD_STINKING_CLOUD))~ EXIT
END

IF ~Global("ZDompteurtalk","LOCALS",2)
RandomNum(6,6)~ THEN BEGIN 7
  SAY @7
  IF ~~ THEN DO ~ActionOverride("z_lind",ReallyForceSpell(NearestEnemyOf(Myself),CLERIC_POISON))
ActionOverride("z_lind",ReallyForceSpell(NearestEnemyOf(Myself),CLERIC_DOLOROUS_DECAY))~ EXIT
END
