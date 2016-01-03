BEGIN ~Z_BERED~

IF ~OR(2)
Global("ZBeredTalk","GLOBAL",0)
Global("ZBeredTalk","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("ZBeredTalk","GLOBAL",2)~ EXIT
END
