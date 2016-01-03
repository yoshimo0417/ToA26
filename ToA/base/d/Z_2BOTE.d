BEGIN ~Z_2BOTE~

IF ~Global("Z2LE1Dead","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("Z2LE1Dead","GLOBAL",2)
DestroySelf()~ EXIT
END

IF ~Global("Z2LE2Dead","GLOBAL",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("Z2LE2Dead","GLOBAL",2)
DestroySelf()~ EXIT
END

IF ~Global("Z2LE3Dead","GLOBAL",1)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("Z2LE3Dead","GLOBAL",2)
DestroySelf()~ EXIT
END

IF ~Global("Z2LE4Dead","GLOBAL",1)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~SetGlobal("Z2LE4Dead","GLOBAL",2)
DestroySelf()~ EXIT
END

IF ~Global("Z2LE5Dead","GLOBAL",1)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN DO ~SetGlobal("Z2LE5Dead","GLOBAL",2)
DestroySelf()~ EXIT
END

IF ~Global("Z2SLE1Dead","GLOBAL",1)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN DO ~SetGlobal("Z2SLE1Dead","GLOBAL",2)
DestroySelf()~ EXIT
END

IF ~Global("Z2SLE2Dead","GLOBAL",1)~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN DO ~SetGlobal("Z2SLE2Dead","GLOBAL",2)
DestroySelf()~ EXIT
END

IF ~Global("Z2SLE3Dead","GLOBAL",1)~ THEN BEGIN 7
  SAY @7
  IF ~~ THEN DO ~SetGlobal("Z2SLE3Dead","GLOBAL",2)
DestroySelf()~ EXIT
END

IF ~Global("Z2SLE4Dead","GLOBAL",1)~ THEN BEGIN 8
  SAY @8
  IF ~~ THEN DO ~SetGlobal("Z2SLE4Dead","GLOBAL",2)
DestroySelf()~ EXIT
END

IF ~Global("Z2SLE5Dead","GLOBAL",1)~ THEN BEGIN 9
  SAY @9
  IF ~~ THEN DO ~SetGlobal("Z2SLE5Dead","GLOBAL",2)
DestroySelf()~ EXIT
END

IF ~Global("Z2SLE6Dead","GLOBAL",1)~ THEN BEGIN 10
  SAY @10
  IF ~~ THEN DO ~SetGlobal("Z2SLE6Dead","GLOBAL",2)
DestroySelf()~ EXIT
END

IF ~Global("Z2LE6Dead","GLOBAL",1)~ THEN BEGIN 11
  SAY @11
  IF ~~ THEN DO ~SetGlobal("Z2LE6Dead","GLOBAL",2)
DestroySelf()~ EXIT
END
