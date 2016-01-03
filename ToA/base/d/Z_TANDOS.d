BEGIN ~Z_TANDOS~

IF ~Global("ZDaraknorSave","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN REPLY @7 DO ~SetGlobal("ZDaraknorSave","GLOBAL",1)
GiveItem("z_anath1",[PC])
EraseJournalEntry(@999997)
AddXPObject(Player1,15000)
AddXPObject(Player2,15000)
AddXPObject(Player3,15000)
AddXPObject(Player4,15000)
AddXPObject(Player5,15000)
AddXPObject(Player6,15000)
ActionOverride("z_igor",JumpToPoint([1702.1195]))
ActionOverride(Player1,JumpToPoint([1815.1171]))
ActionOverride(Player6,JumpToPoint([1831.1189]))
ActionOverride(Player5,JumpToPoint([1831.1216]))
ActionOverride(Player4,JumpToPoint([1825.1245]))
ActionOverride(Player3,JumpToPoint([1862.1232]))
ActionOverride(Player2,JumpToPoint([1868.1198]))
CreateVisualEffectObject("SPFLSRIN",Myself)
ScreenShake([20.20],5)
Wait(2)
CreateCreature("z_darak",[1649.1177],10)
SetGlobal("ZIgorTalk","GLOBAL",6)
DestroySelf()~ EXIT
  IF ~~ THEN REPLY @8 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN REPLY @7 DO ~SetGlobal("ZDaraknorSave","GLOBAL",1)
GiveItem("z_anath1",[PC])
EraseJournalEntry(@999997)
AddXPObject(Player1,15000)
AddXPObject(Player2,15000)
AddXPObject(Player3,15000)
AddXPObject(Player4,15000)
AddXPObject(Player5,15000)
AddXPObject(Player6,15000)
ActionOverride("z_igor",JumpToPoint([1702.1195]))
ActionOverride(Player1,JumpToPoint([1815.1171]))
ActionOverride(Player6,JumpToPoint([1831.1189]))
ActionOverride(Player5,JumpToPoint([1831.1216]))
ActionOverride(Player4,JumpToPoint([1825.1245]))
ActionOverride(Player3,JumpToPoint([1862.1232]))
ActionOverride(Player2,JumpToPoint([1868.1198]))
CreateVisualEffectObject("SPFLSRIN",Myself)
ScreenShake([20.20],5)
Wait(2)
CreateCreature("z_darak",[1649.1177],10)
SetGlobal("ZIgorTalk","GLOBAL",6)
DestroySelf()~ EXIT
  IF ~~ THEN REPLY @8 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN REPLY @7 DO ~SetGlobal("ZDaraknorSave","GLOBAL",1)
GiveItem("z_anath1",[PC])
EraseJournalEntry(@999997)
AddXPObject(Player1,15000)
AddXPObject(Player2,15000)
AddXPObject(Player3,15000)
AddXPObject(Player4,15000)
AddXPObject(Player5,15000)
AddXPObject(Player6,15000)
ActionOverride("z_igor",JumpToPoint([1702.1195]))
ActionOverride(Player1,JumpToPoint([1815.1171]))
ActionOverride(Player6,JumpToPoint([1831.1189]))
ActionOverride(Player5,JumpToPoint([1831.1216]))
ActionOverride(Player4,JumpToPoint([1825.1245]))
ActionOverride(Player3,JumpToPoint([1862.1232]))
ActionOverride(Player2,JumpToPoint([1868.1198]))
CreateVisualEffectObject("SPFLSRIN",Myself)
ScreenShake([20.20],5)
Wait(2)
CreateCreature("z_darak",[1649.1177],10)
SetGlobal("ZIgorTalk","GLOBAL",6)
DestroySelf()~ EXIT
  IF ~~ THEN REPLY @8 EXIT
END

IF ~Global("ZDaraknorSave","GLOBAL",1)~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN DO ~SetGlobal("ZDaraknorSave","GLOBAL",2)~ EXTERN ~Z_IGOR~ 14
END
