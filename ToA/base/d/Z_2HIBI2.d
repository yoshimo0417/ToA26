BEGIN ~Z_2HIBI2~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~AddXPObject(Player1,82000)
AddXPObject(Player2,82000)
AddXPObject(Player3,82000)
AddXPObject(Player4,82000)
AddXPObject(Player5,82000)
AddXPObject(Player6,82000)
ReputationInc(2)
DestroySelf()~ EXIT
END
