BEGIN ~Z_SOLDA2~

IF ~~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~ActionOverride(Myself,CreateItem("POTN52",0,0,0))
GiveItemCreate("POTN52",LastTalkedToBy(),1,1,0)
AddexperienceParty(1000)
SetGlobal("SoldatenDank","LOCALS",1)
DestroySelf()~ EXIT
END

IF ~Global("ZSchlacht1","GLOBAL",3)
Global("ZSchlachtBelohnung","GLOBAL",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~ActionOverride(Myself,CreateItemGlobal("ZLebendSoldat","GLOBAL","POTN52"))
AddExperiencePartyGlobal("ZLebendEXP","GLOBAL")
SetGlobal("ZSchlachtBelohnung","GLOBAL",1)~ EXIT
END
