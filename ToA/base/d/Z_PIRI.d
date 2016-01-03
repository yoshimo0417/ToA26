BEGIN ~Z_PIRI~

IF ~Global("ZKalakTod","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("ZKalakTod","GLOBAL",1)
Global("ZGerettetCave","GLOBAL",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("ZGerettetCave","GLOBAL",1)
SetGlobal("ZPirinFriend","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY @3 DO ~SetGlobal("ZGerettetCave","GLOBAL",1)
SetGlobal("ZPirinFriend","GLOBAL",0)~ EXIT
END

IF ~Global("ZPirinFriend","GLOBAL",1)
Global("ZGerettetCave","GLOBAL",1)
Global("ZPirinQuest","GLOBAL",0)~ THEN BEGIN 2
  SAY @4
  IF ~Global("BG1Pantaloons","GLOBAL",0)~ THEN REPLY @5 EXIT
  IF ~Global("BG1Pantaloons","GLOBAL",0)~ THEN REPLY @6  DO ~SetGlobal("ZPirinQuest","GLOBAL",1)~ GOTO 4
END

IF ~Global("ZPirinFriend","GLOBAL",0)
Global("ZGerettetCave","GLOBAL",1)~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN DO ~CreateVisualEffectObject("spdimndr",Myself)
DestroySelf()~ EXIT
END

IF ~Global("ZPirinQuest","GLOBAL",1)
Global("ZPirinFriend","GLOBAL",1)
Global("BG1Pantaloons","GLOBAL",0)~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN DO ~SetGlobal("ZPirinQuest","GLOBAL",2)
CreateCreature("z_wmage",[636.347],0)
CreateVisualEffectObject("spdimndr",Myself)
DestroySelf()~ EXIT
END

IF ~Global("ZPirinQuest","GLOBAL",2)
Global("ZPirinFriend","GLOBAL",1)
Global("BG1Pantaloons","GLOBAL",0)~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN DO ~SetGlobal("ZPirinQuest","GLOBAL",3)
CreateCreature("z_smage",[586.436],0)
CreateVisualEffectObject("spdimndr",Myself)
DestroySelf()~ EXIT
END

IF ~Global("ZPirinQuest","GLOBAL",3)
Global("ZPirinFriend","GLOBAL",1)
Global("BG1Pantaloons","GLOBAL",0)~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN DO ~SetGlobal("ZPirinQuest","GLOBAL",4)
SetGlobal("BG1Pantaloons","GLOBAL",1)
AddexperienceParty(32450)
GiveItem("misc47",Player1)
CreateVisualEffectObject("spdimndr",Myself)
DestroySelf()~ EXIT
END

IF ~Global("ZPirinQuest","GLOBAL",4)
Global("ZPirinFriend","GLOBAL",1)~ THEN BEGIN 8
  SAY @12
  IF ~~ THEN DO ~SetGlobal("ZPiriBrother","GLOBAL",1)~ EXIT
END
