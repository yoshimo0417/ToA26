BEGIN ~Z_BERGF~

IF ~Global("ZBergTalk","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~FadeToColor([20.0],0)
SetGlobal("ZBergTalk","GLOBAL",1)
ActionOverride(Player1,LeaveAreaLUA("ZDREAM","",[1779.1583],0))
ActionOverride(Player2,LeaveAreaLUA("ZDREAM","",[1825.1594],0))
ActionOverride(Player3,LeaveAreaLUA("ZDREAM","",[1849.1566],0))
ActionOverride(Player4,LeaveAreaLUA("ZDREAM","",[1879.1570],0))
ActionOverride(Player5,LeaveAreaLUA("ZDREAM","",[1895.1540],0))
ActionOverride(Player6,LeaveAreaLUA("ZDREAM","",[1935.1543],0))
TextScreen("ZSCENE1")~ EXIT
  IF ~~ THEN REPLY @2 EXIT
END

IF ~Global("ZBergTalk","GLOBAL",1)~ THEN BEGIN 1
  SAY @0
  IF ~~ THEN REPLY @1 DO ~		ActionOverride(Player1,LeaveAreaLUA("ZBERGE","",[1531.3506],0))
ActionOverride(Player2,LeaveAreaLUA("ZBERGE","",[1564.3507],0))
ActionOverride(Player3,LeaveAreaLUA("ZBERGE","",[1570.3559],0))
ActionOverride(Player4,LeaveAreaLUA("ZBERGE","",[1586.3458],0))
ActionOverride(Player5,LeaveAreaLUA("ZBERGE","",[1473.3502],0))
ActionOverride(Player6,LeaveAreaLUA("ZBERGE","",[1626.3500],0))~ EXIT
  IF ~~ THEN REPLY @2 EXIT
END
