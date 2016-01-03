BEGIN ~Z_NAUR~

IF ~Global("ZNaurandirQuest","GLOBAL",1)
~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~Z_DALMAR~ 0
END

IF ~Global("ZNaurandirQuest","GLOBAL",1)
~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXTERN ~Z_DALMAR~ 1
END

IF ~Global("ZNaurandirQuest","GLOBAL",4)
!Allegiance(Myself,ENEMY)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 7
  IF ~~ THEN REPLY @5 GOTO 8
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @12
  IF ~~ THEN DO ~SetGlobal("ZNaurandirQuest","GLOBAL",6)
AddJournalEntry(@999998,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN DO ~SetGlobal("ZNaurandirQuest","GLOBAL",5)
AddJournalEntry(@999998,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @14
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 8
  SAY @15
  IF ~~ THEN REPLY @16 DO ~Enemy()
SetGlobal("ZNaurandirQuest","GLOBAL",9)~ EXIT
  IF ~~ THEN REPLY @17 GOTO 7
END

IF ~Global("ZNaurandirQuest","GLOBAL",5)
!Allegiance(Myself,ENEMY)~ THEN BEGIN 9
  SAY @18
  IF ~Global("ZDalmaranCut","GLOBAL",2)~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @20 EXIT
  IF ~~ THEN REPLY @21 GOTO 5
  IF ~~ THEN REPLY @22 DO ~Enemy()
SetGlobal("ZNaurandirQuest","GLOBAL",9)~ EXIT
END

IF ~Global("ZNaurandirQuest","GLOBAL",6)
!Allegiance(Myself,ENEMY)~ THEN BEGIN 10
  SAY @23
  IF ~~ THEN DO ~		ForceSpell(Myself,DO_SOME_EFFECTS)
CreateVisualEffect("SPFEAREF",[654.773])
CreateVisualEffect("SPFEAREF",[655.925])
CreateVisualEffect("SPFEAREF",[761.853])
CreateVisualEffect("SPFEAREF",[580.850])
CreateVisualEffect("SPFEAREF",[602.799])
CreateVisualEffect("SPFEAREF",[790.799])
CreateVisualEffect("SPFEAREF",[736.933])
CreateVisualEffect("SPFEAREF",[602.934])
Wait(1)
ForceSpell(Myself,DO_SOME_EFFECTS)
CreateVisualEffect("SPCCWOUI",[654.773])
CreateVisualEffect("SPCCWOUI",[655.925])
CreateVisualEffect("SPCCWOUI",[761.853])
CreateVisualEffect("SPCCWOUI",[580.850])
CreateVisualEffect("SPCCWOUI",[602.799])
CreateVisualEffect("SPCCWOUI",[790.799])
CreateVisualEffect("SPCCWOUI",[736.933])
CreateVisualEffect("SPCCWOUI",[602.934])~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @24
  IF ~~ THEN DO ~SetGlobal("ZNaurandirQuest","GLOBAL",9)
EraseJournalEntry(@999998)
AddXPObject(Player1,6000)
AddXPObject(Player2,6000)
AddXPObject(Player3,6000)
AddXPObject(Player4,6000)
AddXPObject(Player5,6000)
AddXPObject(Player6,6000)
GiveItem("z_horn",[PC])
ReallyForceSpell(Myself, WIZARD_DIMENSION_DOOR)
Wait(2)
DestroySelf()~ EXIT
END

IF ~Global("ZNaurandirQuest","GLOBAL",8)~ THEN BEGIN 12
  SAY @25
  IF ~~ THEN DO ~SetGlobal("ZNaurandirQuest","GLOBAL",9)
EraseJournalEntry(@999998)
AddXPObject(Player1,10000)
AddXPObject(Player2,10000)
AddXPObject(Player3,10000)
AddXPObject(Player4,10000)
AddXPObject(Player5,10000)
AddXPObject(Player6,10000)
GiveItem("z_horn",[PC])~ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @26
  IF ~~ THEN DO ~ReallyForceSpell(Myself, WIZARD_DIMENSION_DOOR)
ActionOverride("z_dalmar",ReallyForceSpell(Myself, WIZARD_DIMENSION_DOOR))
Wait(2)
ActionOverride("z_dalmar",DestroySelf())
DestroySelf()~ EXIT
END
