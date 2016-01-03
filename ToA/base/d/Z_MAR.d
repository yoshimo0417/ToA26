BEGIN ~Z_MAR~

IF ~Global("ZMarlikStrongAttack","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("ZMarlikStrongAttack","GLOBAL",1)
ForceSpell(Player1,CLERIC_FLAME_STRIKE)
ReallyForceSpell(Player1,CLERIC_FLAME_STRIKE)
ReallyForceSpell(Player2,CLERIC_FLAME_STRIKE)
ReallyForceSpell(Player3,CLERIC_FLAME_STRIKE)
ReallyForceSpell(Player4,CLERIC_FLAME_STRIKE)
ReallyForceSpell(Player5,CLERIC_FLAME_STRIKE)
ReallyForceSpell(Player6,CLERIC_FLAME_STRIKE)~ EXIT
END

IF ~Global("ZMarlikStrongAttack","GLOBAL",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("ZMarlikStrongAttack","GLOBAL",2)
ReallyForceSpell(Myself,WIZARD_TIME_STOP)
ForceSpell(NearestEnemyOf(Myself),WIZARD_SPELL_STRIKE)
ForceSpell(SecondNearestEnemyOf(Myself),WIZARD_POWER_WORD_KILL)
ForceSpell(ThirdNearestEnemyOf(Myself),WIZARD_WAIL_OF_THE_BANSHEE)
ForceSpell(FourthNearestEnemyOf(Myself),WIZARD_FINGER_OF_DEATH)~ EXIT
END

IF ~Global("ZMarlikStrongAttack","GLOBAL",2)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("ZMarlikStrongAttack","GLOBAL",3)
CreateVisualEffectObject("SPPOLYMP",Myself)
Polymorph(SLAYER)
CreateItem("z_mars",0,0,0)
DestroyItem("HELM04")
DestroyItem("SHLD20")
DestroyItem("AMUL21")
DestroyItem("BOOT07")
DestroyItem("POTN08")~ EXIT
END

IF ~Global("ZMarlikStrongAttack","GLOBAL",3)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~SetGlobal("ZMarlikStrongAttack","GLOBAL",4)
SetGlobal("ZMarlikFlee","GLOBAL",1)
DestroySelf()~ EXIT
END
