BEGIN ~Z_MALAK~

IF ~~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("MalakAttacks","LOCALS",1)~ EXIT
END

IF ~Global("MalakAttacks","LOCALS",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("MalakAttacks","LOCALS",1)~ EXIT
END
