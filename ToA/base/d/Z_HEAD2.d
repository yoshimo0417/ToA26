BEGIN ~Z_HEAD2~

IF ~Global("ZHorothSpoken","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("ZHorothSpoken","LOCALS",2)
Enemy()~ EXIT
  IF ~~ THEN REPLY @3 DO ~SetGlobal("ZHorothSpoken","LOCALS",2)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN DO ~SetGlobal("ZHorothSpoken","LOCALS",1)~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN REPLY @6 EXIT
  IF ~~ THEN REPLY @7 DO ~SetGlobal("ZHorothSpoken","LOCALS",2)
Enemy()~ EXIT
  IF ~PartyHasItem("z_tafel1")~ THEN REPLY @8 GOTO 4
END

IF ~Global("ZHorothSpoken","LOCALS",1)~ THEN BEGIN 3
  SAY @9
  IF ~PartyHasItem("z_tafel1")~ THEN REPLY @10 DO ~SetGlobal("ZHorothSpoken","LOCALS",2)~ GOTO 4
  IF ~~ THEN REPLY @11 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @14
  IF ~~ THEN DO ~SetGlobal("ZHorothSpoken","LOCALS",2)
ActionOverride(Myself,GiveItem("Z_tafel2",Player1))
AddexperienceParty(8250)~ EXIT
END
