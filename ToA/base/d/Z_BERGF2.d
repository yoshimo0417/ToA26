BEGIN ~Z_BERGF2~

IF ~Global("zFirstSpoken","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("zFirstSpoken","GLOBAL",1)
Global("ZBergfSeePC","GLOBAL",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN REPLY @3 DO ~ActionOverride(Player1,LeaveAreaLUA("ZANEGH","",[886.266],0))
ActionOverride(Player2,LeaveAreaLUA("ZANEGH","",[876.256],0))
ActionOverride(Player3,LeaveAreaLUA("ZANEGH","",[896.276],0))
ActionOverride(Player4,LeaveAreaLUA("ZANEGH","",[856.286],0))
ActionOverride(Player5,LeaveAreaLUA("ZANEGH","",[880.260],0))
ActionOverride(Player6,LeaveAreaLUA("ZANEGH","",[870.270],0))
SetGlobal("ZBergfSeePC","GLOBAL",0)~ EXIT
  IF ~~ THEN REPLY @4 EXIT
END
