BEGIN ~Z_2VAMP~

IF ~Global("Zvampirtalking","GLOBAL",0)
Global("ZAllreadyTalked","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("Zvampirtalking","GLOBAL",1)
SetGlobal("ZAllreadyTalked","LOCALS",1)~ EXIT
END

IF ~Global("Zvampirtalking","GLOBAL",1)
Global("ZAllreadyTalked","LOCALS",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("Zvampirtalking","GLOBAL",2)
SetGlobal("ZAllreadyTalked","LOCALS",1)~ EXIT
END

IF ~Global("Zvampirtalking","GLOBAL",2)
Global("ZAllreadyTalked","LOCALS",0)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("Zvampirtalking","GLOBAL",3)
SetGlobal("ZAllreadyTalked","LOCALS",1)~ EXIT
END

IF ~Global("Zvampirtalking","GLOBAL",3)
Global("ZAllreadyTalked","LOCALS",0)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~SetGlobal("Zvampirtalking","GLOBAL",4)
SetGlobal("ZAllreadyTalked","LOCALS",1)~ EXIT
END

IF ~Global("Zvampirtalking","GLOBAL",4)
Global("ZAllreadyTalked","LOCALS",0)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN DO ~SetGlobal("Zvampirtalking","GLOBAL",5)
SetGlobal("ZAllreadyTalked","LOCALS",1)~ EXIT
END

IF ~Global("Zvampirtalking","GLOBAL",5)
Global("ZAllreadyTalked","LOCALS",0)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN DO ~SetGlobal("Zvampirtalking","GLOBAL",6)
SetGlobal("ZAllreadyTalked","LOCALS",1)~ EXIT
END
