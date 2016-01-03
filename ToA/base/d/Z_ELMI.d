BEGIN ~Z_ELMI~

IF ~Global("ZElminsterTalk","GLOBAL",0)~ THEN BEGIN 0
  SAY @0   
  IF ~~ THEN REPLY @1 DO ~SetGlobal("ZElminsterTalk","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("ZElminsterTalk","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @3 DO ~SetGlobal("ZElminsterTalk","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~Global("ZStartAddAct","GLOBAL",1)~ THEN DO ~CreateVisualEffectObject("spdimndr",Myself)
CreateVisualEffectObject("spdimndr",Player1)
CreateVisualEffectObject("spdimndr",Player2)
CreateVisualEffectObject("spdimndr",Player3)
CreateVisualEffectObject("spdimndr",Player4)
CreateVisualEffectObject("spdimndr",Player5)
CreateVisualEffectObject("spdimndr",Player6)
Wait(2)
FadeToColor([20.0],0)
Wait(1)
ActionOverride(Player1,LeaveAreaLUA("AR5500","",[1944.1359],12))
ActionOverride(Player2,LeaveAreaLUA("AR5500","",[1944.1359],12))
ActionOverride(Player3,LeaveAreaLUA("AR5500","",[1944.1359],12))
ActionOverride(Player4,LeaveAreaLUA("AR5500","",[1944.1359],12))
ActionOverride(Player5,LeaveAreaLUA("AR5500","",[1944.1359],12))
ActionOverride(Player6,LeaveAreaLUA("AR5500","",[1944.1359],12))
AddJournalEntry(@999992,QUEST_DONE)
EraseJournalEntry(@999993)
EraseJournalEntry(@999994)
EraseJournalEntry(@999995)
EraseJournalEntry(@999991)
EraseJournalEntry(@999996)
EraseJournalEntry(@999990)
EraseJournalEntry(@999997)
EraseJournalEntry(@999998)
EraseJournalEntry(@999999)
DestroySelf()
FadeFromColor([20.0],0)
SetGlobal("ZElminsterTalk","GLOBAL",2)~ EXIT
  IF ~!Global("ZStartAddAct","GLOBAL",1)~ THEN DO ~CreateVisualEffectObject("spdimndr",Myself)
CreateVisualEffectObject("spdimndr",Player1)
CreateVisualEffectObject("spdimndr",Player2)
CreateVisualEffectObject("spdimndr",Player3)
CreateVisualEffectObject("spdimndr",Player4)
CreateVisualEffectObject("spdimndr",Player5)
CreateVisualEffectObject("spdimndr",Player6)
Wait(2)
FadeToColor([20.0],0)
Wait(1)
ActionOverride(Player1,LeaveAreaLUA("AR0700","",[3362.3464],12))
ActionOverride(Player2,LeaveAreaLUA("AR0700","",[3313.3483],12))
ActionOverride(Player3,LeaveAreaLUA("AR0700","",[3325.3441],12))
ActionOverride(Player4,LeaveAreaLUA("AR0700","",[3319.3509],12))
ActionOverride(Player5,LeaveAreaLUA("AR0700","",[3358.3507],12))
ActionOverride(Player6,LeaveAreaLUA("AR0700","",[3399.3491],12))
AddJournalEntry(@999992,QUEST_DONE)
EraseJournalEntry(@999993)
EraseJournalEntry(@999994)
EraseJournalEntry(@999995)
EraseJournalEntry(@999991)
EraseJournalEntry(@999996)
EraseJournalEntry(@999990)
EraseJournalEntry(@999997)
EraseJournalEntry(@999998)
EraseJournalEntry(@999999)
DestroySelf()
FadeFromColor([20.0],0)
SetGlobal("ZElminsterTalk","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~Global("ZElminsterTalk","GLOBAL",3)~ THEN BEGIN 5
  SAY @9
  IF ~!Global("ZStartAddAct","GLOBAL",1)~ THEN REPLY @10 DO ~AddXPObject(Player1,152000)
AddXPObject(Player2,152000)
AddXPObject(Player3,152000)
AddXPObject(Player4,152000)
AddXPObject(Player5,152000)
AddXPObject(Player6,152000)~ GOTO 6
  IF ~Global("ZStartAddAct","GLOBAL",1)~ THEN DO ~AddXPObject(Player1,152000)
AddXPObject(Player2,152000)
AddXPObject(Player3,152000)
AddXPObject(Player4,152000)
AddXPObject(Player5,152000)
AddXPObject(Player6,152000)~ GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @12
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @13
  IF ~~ THEN DO ~SetGlobal("ZElminsterTalk","GLOBAL",4)
CreateVisualEffectObject("spdimndr",Myself)
GiveItem("z_ssw2h",Player1)
Wait(2)
DestroySelf()~ EXIT
END
