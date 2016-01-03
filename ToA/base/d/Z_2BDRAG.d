BEGIN ~Z_2BDRAG~

IF ~Global("Z2SchlachtLost","GLOBAL",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~StartCutSceneMode()
MultiPlayerSync()
ReallyForceSpell(Player1,RED_DRAGON_BREATH)
SmallWait(8)
EndCutSceneMode()
Kill(Player6)
Kill(Player5)
Kill(Player4)
Kill(Player3)
Kill(Player2)
Kill(Player1)~ EXIT
END
