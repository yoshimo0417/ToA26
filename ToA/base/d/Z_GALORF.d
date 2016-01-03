BEGIN ~Z_GALORF~

IF ~Global("ZGalorFollows","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~Z_GALORA~ 1
END

IF ~Global("ZGalorFollows","GLOBAL",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXTERN ~Z_DROW1~ 0
END

IF ~Global("ZGalorSchlacht","GLOBAL",2)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXTERN ~Z_GALORA~ 3
END

IF ~Global("ZGalorSchlacht","GLOBAL",2)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN REPLY @4 EXTERN ~Z_GALORA~ 9
  IF ~~ THEN REPLY @5 EXTERN ~Z_GALORA~ 5
  IF ~Global("ZGalorGasthaus", "GLOBAL", 1)~ THEN REPLY @6 GOTO 7
END

IF ~Global("ZGalorSchlacht","GLOBAL",2)~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN REPLY @8 EXTERN ~Z_GALORA~ 5
END

IF ~Global("ZGalorSchlacht","GLOBAL",2)~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN DO ~SetGlobal("ZGalorFollows","GLOBAL",2)
SetGlobal("ZGalorSchlacht","GLOBAL",3)~ EXIT
END

IF ~Global("ZGalorSchlacht","GLOBAL",2)~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN EXTERN ~Z_GALORA~ 5
END

IF ~Global("ZGalorSchlacht","GLOBAL",2)~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN EXTERN ~Z_GALORA~ 8
END

IF ~Global("ZGalorSchlacht","GLOBAL",4)~ THEN BEGIN 8
  SAY @12
  IF ~~ THEN DO ~
ActionOverride("z_galora",ForceSpell("z_goliat",FLASHY_DEATH_1)
ActionOverride("z_galorf",ForceSpell("z_goliat",FLASHY_DEATH_2))
SetGlobal("ZGalorSchlacht","GLOBAL",5)~ EXIT
END

IF ~Global("ZGalorSchlacht","GLOBAL",5)~ THEN BEGIN 9
  SAY @13
  IF ~~ THEN DO ~SetGlobal("ZGalorSchlacht","GLOBAL",6)
CreateVisualEffectObject("spdimndr","z_galora")
CreateVisualEffectObject("spdimndr","z_galorf")
AddexperienceParty(15930)
ActionOverride(Myself,GiveItem("Z_SOPAM",Player1))
Wait(2)
ActionOverride("z_galora",DestroySelf())
DestroySelf()~ EXIT
END
