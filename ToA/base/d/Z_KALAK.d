BEGIN ~Z_KALAK~

IF ~Global("ZStopPlayer1Cave","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("ZStopPlayer1Cave","GLOBAL",1)~ EXIT
END
