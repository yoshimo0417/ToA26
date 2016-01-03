BEGIN ~Z_SARAH~

IF ~Global("ZSarahKissed", "GLOBAL", 0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(1)
ActionOverride(Player1,LeaveAreaLUA("ZHHAUS","",[999.243],0))
ActionOverride(Player2,LeaveAreaLUA("ZHHAUS","",[1064.294],0))
ActionOverride(Player3,LeaveAreaLUA("ZHHAUS","",[1103.323],0))
ActionOverride(Player4,LeaveAreaLUA("ZHHAUS","",[1167.366],0))
ActionOverride(Player5,LeaveAreaLUA("ZHHAUS","",[867.214],0))
ActionOverride(Player6,LeaveAreaLUA("ZHHAUS","",[1294.442],0))
FadeFromColor([20.0],0)
SetGlobal("ZSarahKissed", "GLOBAL", 1)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(1)
ActionOverride(Player1,LeaveAreaLUA("ZHHAUS","",[999.243],0))
ActionOverride(Player2,LeaveAreaLUA("ZHHAUS","",[1064.294],0))
ActionOverride(Player3,LeaveAreaLUA("ZHHAUS","",[1103.323],0))
ActionOverride(Player4,LeaveAreaLUA("ZHHAUS","",[1167.366],0))
ActionOverride(Player5,LeaveAreaLUA("ZHHAUS","",[867.214],0))
ActionOverride(Player6,LeaveAreaLUA("ZHHAUS","",[1294.442],0))
FadeFromColor([20.0],0)
SetGlobal("ZSarahKissed", "GLOBAL", 1)
DestroySelf()~ EXIT
END

IF ~Global("ZSarahTook2", "GLOBAL", 0)~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN DO ~SetGlobal("ZSarahTook2", "GLOBAL", 1)
~ EXIT
END

IF ~Global("ZHexenTalk", "GLOBAL", 0)~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN EXTERN ~Z_MARY~ 0
END

IF ~Global("ZHexenTalk", "GLOBAL", 0)~ THEN BEGIN 5
  SAY @7
  IF ~~ THEN EXTERN ~Z_WINIF~ 1
END

IF ~Global("ZHexenTalk", "GLOBAL", 0)~ THEN BEGIN 6
  SAY @8
  IF ~~ THEN EXTERN ~Z_MARY~ 2
END

IF ~Global("ZHexenTalk", "GLOBAL", 0)~ THEN BEGIN 7
  SAY @9
  IF ~~ THEN EXTERN ~Z_WINIF~ 3
END

IF ~Global("ZHexenTalk", "GLOBAL", 0)~ THEN BEGIN 8
  SAY @10
  IF ~~ THEN EXTERN ~Z_MARY~ 3
END
