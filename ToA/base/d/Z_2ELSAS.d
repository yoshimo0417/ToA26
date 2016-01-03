BEGIN ~Z_2ELSAS~

IF ~Global("ZElsasTalk", "GLOBAL", 0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("ZElsasTalk", "GLOBAL", 1)~ GOTO 1
  IF ~~ THEN REPLY @2 DO ~CreateVisualEffectObject("spdimndr",Myself)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN REPLY @5 DO ~DestroySelf()~ EXIT
  IF ~~ THEN REPLY @6 EXIT
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN DO ~SetGlobal("ZElsasTalk", "GLOBAL", 2)
StartCutSceneMode()
CreateVisualEffectObject("spdimndr",Myself)
CreateVisualEffectObject("spdimndr",Player1)
CreateVisualEffectObject("spdimndr",Player2)
CreateVisualEffectObject("spdimndr",Player3)
CreateVisualEffectObject("spdimndr",Player4)
CreateVisualEffectObject("spdimndr",Player5)
CreateVisualEffectObject("spdimndr",Player6)
Wait(2)
FadeToColor([20.0],0)
Wait(1)
ActionOverride(Player1,LeaveAreaLUA("Z2VCAV","",[1722.1619],12))
ActionOverride(Player2,LeaveAreaLUA("Z2VCAV","",[1751.1589],12))
ActionOverride(Player3,LeaveAreaLUA("Z2VCAV","",[1690.1591],12))
ActionOverride(Player4,LeaveAreaLUA("Z2VCAV","",[1668.1639],12))
ActionOverride(Player5,LeaveAreaLUA("Z2VCAV","",[1771.1604],12))
ActionOverride(Player6,LeaveAreaLUA("Z2VCAV","",[1747.1651],12))
DestroySelf()
FadeFromColor([20.0],0)
EndCutSceneMode()~ EXIT
END

IF ~Global("ZElsasTalk", "GLOBAL", 1)~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN REPLY @5 DO ~CreateVisualEffectObject("spdimndr",Myself)
DestroySelf()~ EXIT
  IF ~~ THEN REPLY @6 EXIT
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~Global("ZElsasTalk", "GLOBAL", 2)~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN DO ~SetGlobal("ZElsasTalk", "GLOBAL", 3)
RealSetGlobalTimer("ZHealingPC","LOCALS",5)~ EXIT
END
