BEGIN ~Z_BURGM~

IF ~Global("z_BuergSpoken","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("z_BuergSpoken","GLOBAL",1)
MoveViewObject("z_magter",INSTANT)
ActionOverride("z_magter",StartDialog("z_magter",[PC]))~ EXIT
END

IF ~Global("z_BuergSpoken","GLOBAL",1)
Global("ZBuergGerettet","GLOBAL",1)~ THEN BEGIN 1
  SAY @1
  IF ~Global("AryaSpawn","GLOBAL",1)~ THEN REPLY @2 DO ~SetGlobal("z_BuergSpoken","GLOBAL",2)
ActionOverride(Myself,MoveToPoint([460.550]))
ActionOverride(Myself,DestroySelf())~ EXIT
  IF ~Global("AryaSpawn","GLOBAL",0)~ THEN REPLY @3 DO ~SetGlobal("z_BuergSpoken","GLOBAL",2)
ActionOverride(Myself,MoveToPoint([460.550]))
ActionOverride(Myself,DestroySelf())~ EXIT
END

IF ~Global("ZAryaSpoken", "GLOBAL", 0)
Global("ZGerettetCave","GLOBAL",0)
Global("ZBuergGerettet","GLOBAL",1)
~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN EXIT
END

IF ~Global("ZGerettetCave","GLOBAL",1)
Global("ZBuergBel","GLOBAL",0)
Global("ZBuergGerettet","GLOBAL",1)
~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN DO ~SetGlobal("ZBuergBel","GLOBAL",1)
EraseJournalEntry(@999990)
AddexperienceParty(12320)~ EXIT
END

IF ~Global("ZGerettetCave","GLOBAL",1)
Global("ZBuergBel","GLOBAL",1)
Global("ZBuergGerettet","GLOBAL",1)
~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN EXIT
END
