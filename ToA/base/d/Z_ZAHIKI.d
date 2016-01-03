BEGIN ~Z_ZAHIKI~

IF ~Global("Z_ZahikiAttack","LOCALS",0)~ THEN BEGIN 0 
  SAY @0 
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN DO ~SetGlobal("Z_ZahikiAttack","LOCALS",1)
CreateCreature ("z_hobgob",[170.276],13)
CreateCreature ("z_hobgob",[203.350],9)
CreateCreature ("z_hobgob",[368.233],0)~ EXIT
END

IF ~~ THEN BEGIN 2 
  SAY @4 
  IF ~PartyHasItem("Z_RWEIN")~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN DO ~AddexperienceParty(34580)
ActionOverride(Myself,GiveItem("Z_BER1",Player1))
ActionOverride(Myself,TakePartyItem("Z_RWEIN"))
ActionOverride(Myself,MoveToPoint([230.438]))
ActionOverride(Myself,EscapeAreaDestroy(1))
~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN DO ~SetGlobal("Z_ZahikiAttack","LOCALS",1)
CreateCreature ("z_hobgob",[170.276],13)
CreateCreature ("z_hobgob",[203.350],9)
CreateCreature ("z_hobgob",[368.233],0)~ EXIT
END
