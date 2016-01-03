BEGIN ~Z_MAHAN~

IF ~Global("ZMAHANSee","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("ZMAHANSee","LOCALS",1)~ GOTO 1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("ZMAHANSee","LOCALS",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN REPLY @5 DO ~SetGlobal("ZMAHANSee","LOCALS",2)
Enemy()~ EXIT
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN REPLY @9 DO ~SetGlobal("ZMAHANSee","LOCALS",2)
Enemy()~ EXIT
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @13
  IF ~~ THEN DO ~TakePartyGold(500)
AddexperienceParty(2935)
ActionOverride(Myself,GiveItem("Z_Key1",Player1))
ActionOverride(Myself,MoveToPoint([467.559]))
ActionOverride(Myself,DestroySelf())~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @14
  IF ~~ THEN DO ~SetGlobal("ZMAHANSee","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @15
  IF ~~ THEN DO ~TakePartyGold(1000)
AddexperienceParty(3935)
ActionOverride(Myself,GiveItem("Z_Key1",Player1))
ActionOverride(Myself,MoveToPoint([467.559]))
ActionOverride(Myself,DestroySelf())~ EXIT
END

IF ~Global("ZMAHANSee","LOCALS",1)~ THEN BEGIN 8
  SAY @16
  IF ~~ THEN REPLY @9 DO ~SetGlobal("ZMAHANSee","LOCALS",2)
Enemy()~ EXIT
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 7
END
