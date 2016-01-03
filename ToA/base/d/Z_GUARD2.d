BEGIN ~Z_GUARD2~

IF ~Global("ZGuardSpoken2", "LOCALS", 0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("ZGuardSpoken2", "LOCALS", 1)~ GOTO 3
  IF ~~ THEN REPLY @2 DO ~SetGlobal("ZGuardSpoken2", "LOCALS", 1)~ GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @1 DO ~SetGlobal("ZGuardSpoken2", "LOCALS", 1)~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN REPLY @1 DO ~SetGlobal("ZGuardSpoken2", "LOCALS", 1)~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~StartCutSceneMode()
FadeToColor([20.0],0)
Wait(1)
MoveViewPoint([316.357],INSTANT)
ActionOverride(Player1,JumpToPoint([355.291]))
ActionOverride(Player2,JumpToPoint([380.281]))
ActionOverride(Player3,JumpToPoint([383.299]))
ActionOverride(Player4,JumpToPoint([415.296]))
ActionOverride(Player5,JumpToPoint([422.320]))
ActionOverride(Player6,JumpToPoint([422.308]))
Wait(1)
FadeFromColor([20.0],0)
EndCutSceneMode()
ActionOverride("z_dono",StartDialog("z_dono",[PC]))~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN DO ~StartCutSceneMode()
FadeToColor([20.0],0)
Wait(1)
MoveViewPoint([316.357],INSTANT)
ActionOverride(Player1,JumpToPoint([355.291]))
ActionOverride(Player2,JumpToPoint([380.281]))
ActionOverride(Player3,JumpToPoint([383.299]))
ActionOverride(Player4,JumpToPoint([415.296]))
ActionOverride(Player5,JumpToPoint([422.320]))
ActionOverride(Player6,JumpToPoint([422.308]))
Wait(1)
FadeFromColor([20.0],0)
EndCutSceneMode()
ActionOverride("z_dono",StartDialog("z_dono",[PC]))~ EXIT
END

IF ~Global("ZGuardSpoken2", "LOCALS", 1)
Global("ZNathCave","GLOBAL",0)
Global("ZTafeln","GLOBAL",0)~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN EXIT
END

IF ~Global("ZNathCave","GLOBAL",0)
Global("ZIbarTalked","GLOBAL",0)
Global("ZTafeln","GLOBAL",1)~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN EXIT
END

IF ~Global("ZNathCave","GLOBAL",1)
Global("ZIbarTalked","GLOBAL",1)
Global("ZTafeln","GLOBAL",1)~ THEN BEGIN 7
  SAY @8
  IF ~~ THEN REPLY @9 DO ~SetGlobal("ZNathCave","GLOBAL",2)
ActionOverride(Player1,LeaveAreaLUA("ZBERGE","",[900.489],10))
ActionOverride(Player2,LeaveAreaLUA("ZBERGE","",[866.506],10))
ActionOverride(Player3,LeaveAreaLUA("ZBERGE","",[842.492],10))
ActionOverride(Player4,LeaveAreaLUA("ZBERGE","",[814.506],10))
ActionOverride(Player5,LeaveAreaLUA("ZBERGE","",[789.491],10))
ActionOverride(Player6,LeaveAreaLUA("ZBERGE","",[759.506],10))
SetGlobal("ZCaveScene","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @10 EXIT
END

IF ~Global("ZNathCave","GLOBAL",2)
Global("ZIbarTalked","GLOBAL",1)
Global("ZTafeln","GLOBAL",1)~ THEN BEGIN 8
  SAY @11
  IF ~~ THEN EXIT
END
