BEGIN ~Z_2HIBIT~

IF ~Global("ZHibiTalk", "GLOBAL", 0)
!Global("ZSchlachtCut1","GLOBAL",6)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("ZHibiTalk", "GLOBAL", 1)
SetGlobal("ZSchlachtCut1","GLOBAL",0)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~ActionOverride(Player1,LeaveAreaLUA("Z2GZEL","",[314.552],10))
ActionOverride(Player2,LeaveAreaLUA("Z2GZEL","",[361.559],10))
ActionOverride(Player3,LeaveAreaLUA("Z2GZEL","",[382.584],10))
ActionOverride(Player4,LeaveAreaLUA("Z2GZEL","",[406.574],10))
ActionOverride(Player5,LeaveAreaLUA("Z2GZEL","",[439.595],10))
ActionOverride(Player6,LeaveAreaLUA("Z2GZEL","",[430.590],10))
DestroySelf()~ EXIT
END

IF ~Global("ZSchlachtCut1","GLOBAL",6)~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN DO ~SetGlobal("ZPlayerleads","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @8
  IF ~~ THEN DO ~SetGlobal("ZPlayerleads","GLOBAL",99)~ EXIT
END

IF ~Global("ZSchlachtCut1","GLOBAL",7)
Global("Z2SpielerTaktik","GLOBAL",0)~ THEN BEGIN 6
  SAY @9
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @10
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @11
  IF ~~ THEN EXTERN ~Z_2LE1~ 0
END

IF ~Global("ZSchlachtCut1","GLOBAL",7)
Global("Z2SpielerTaktik","GLOBAL",0)~ THEN BEGIN 9
  SAY @12
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @13
  IF ~~ THEN EXTERN ~Z_2LE1~ 1
END

IF ~Global("ZSchlachtCut1","GLOBAL",7)
Global("Z2SpielerTaktik","GLOBAL",0)~ THEN BEGIN 11
  SAY @14
  IF ~~ THEN EXTERN ~Z_2LE2~ 0
END

IF ~Global("ZSchlachtCut1","GLOBAL",7)
Global("Z2SpielerTaktik","GLOBAL",0)~ THEN BEGIN 12
  SAY @15
  IF ~~ THEN EXTERN ~Z_2LE3~ 0
END

IF ~Global("ZSchlachtCut1","GLOBAL",7)
Global("Z2SpielerTaktik","GLOBAL",0)~ THEN BEGIN 13
  SAY @16
  IF ~~ THEN EXTERN ~Z_2LE4~ 0
END

IF ~Global("ZSchlachtCut1","GLOBAL",7)
Global("Z2SpielerTaktik","GLOBAL",0)~ THEN BEGIN 14
  SAY @17
  IF ~~ THEN EXTERN ~Z_2LE5~ 0
END

IF ~Global("ZSchlachtCut1","GLOBAL",7)
Global("Z2SpielerTaktik","GLOBAL",0)~ THEN BEGIN 15
  SAY @18
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @19
  IF ~Global("ZPlayerleads","GLOBAL",99)~ THEN REPLY @20 GOTO 17
  IF ~Global("ZPlayerleads","GLOBAL",1)~ THEN REPLY @20 GOTO 19
END

IF ~~ THEN BEGIN 17
  SAY @21
  IF ~~ THEN DO ~SetGlobal("Z2SpielerTaktik","GLOBAL",6)~ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @22
  IF ~~ THEN DO ~SetCutSceneLite(TRUE)
Wait(6)
SetCutSceneLite(FALSE)~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @23
  IF ~!Global("Z2MagierTaktik","GLOBAL",1)
!Global("Z2BogenTaktik","GLOBAL",1)
!Global("Z2PaladinTaktik","GLOBAL",1)
!Global("Z2GardeTaktik","GLOBAL",1)
!Global("Z2KlerikerTaktik","GLOBAL",1)~ THEN REPLY @24 DO ~SetGlobal("Z2SpielerTaktik","GLOBAL",1)~ GOTO 18
  IF ~!Global("Z2MagierTaktik","GLOBAL",2)
!Global("Z2BogenTaktik","GLOBAL",2)
!Global("Z2PaladinTaktik","GLOBAL",2)
!Global("Z2GardeTaktik","GLOBAL",2)
!Global("Z2KlerikerTaktik","GLOBAL",2)~ THEN REPLY @25 DO ~SetGlobal("Z2SpielerTaktik","GLOBAL",2)~ GOTO 18
  IF ~!Global("Z2MagierTaktik","GLOBAL",3)
!Global("Z2BogenTaktik","GLOBAL",3)
!Global("Z2PaladinTaktik","GLOBAL",3)
!Global("Z2GardeTaktik","GLOBAL",3)
!Global("Z2KlerikerTaktik","GLOBAL",3)~ THEN REPLY @26 DO ~SetGlobal("Z2SpielerTaktik","GLOBAL",3)~ GOTO 18
  IF ~!Global("Z2MagierTaktik","GLOBAL",4)
!Global("Z2BogenTaktik","GLOBAL",4)
!Global("Z2PaladinTaktik","GLOBAL",4)
!Global("Z2GardeTaktik","GLOBAL",4)
!Global("Z2KlerikerTaktik","GLOBAL",4)~ THEN REPLY @27 DO ~SetGlobal("Z2SpielerTaktik","GLOBAL",4)~ GOTO 18
  IF ~!Global("Z2MagierTaktik","GLOBAL",5)
!Global("Z2BogenTaktik","GLOBAL",5)
!Global("Z2PaladinTaktik","GLOBAL",5)
!Global("Z2GardeTaktik","GLOBAL",5)
!Global("Z2KlerikerTaktik","GLOBAL",5)~ THEN REPLY @28 DO ~SetGlobal("Z2SpielerTaktik","GLOBAL",5)~ GOTO 18
  IF ~!Global("Z2MagierTaktik","GLOBAL",6)
!Global("Z2BogenTaktik","GLOBAL",6)
!Global("Z2PaladinTaktik","GLOBAL",6)
!Global("Z2GardeTaktik","GLOBAL",6)
!Global("Z2KlerikerTaktik","GLOBAL",6)~ THEN REPLY @29 DO ~SetGlobal("Z2SpielerTaktik","GLOBAL",6)~ GOTO 18
END

IF ~!Global("Z2SpielerTaktik","GLOBAL",0)
Global("Z2SchlachtStart","GLOBAL",0)~ THEN BEGIN 20
  SAY @30 
  IF ~~ THEN REPLY @31 GOTO 21
  IF ~~ THEN REPLY @32 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @33
  IF ~~ THEN DO ~SetGlobal("Z2SchlachtStart","GLOBAL",1)~ EXIT
END

IF ~Global("Z2SchlachtStart","GLOBAL",2)~ THEN BEGIN 22
  SAY @34
  IF ~~ THEN DO ~SetGlobal("Z2SchlachtStart","GLOBAL",3)~ EXIT
END
