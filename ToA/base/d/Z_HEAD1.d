BEGIN ~Z_HEAD1~

IF ~Global("ZHead1Text","GLOBAL",0)
Global("ZSchlachtCut1","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~Global("ZBorotEndFight","LOCALS",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("ZBorotEndFight","LOCALS",1)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~ReallyForceSpell(NearestEnemyOf(Myself),CLERIC_UNHOLY_WORD)
ReallyForceSpell(NearestEnemyOf(Myself),WIZARD_FIREBALL)
Kill(Myself)
AddexperienceParty(50000)~ EXIT
END

IF ~True()~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END
