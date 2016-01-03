BEGIN ~Z_JAHORI~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~CheckStatGT(LastTalkedToBy(),15,CHR)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("Z_JahoriAttack","LOCALS",1)
CreateCreature ("z_hobgob",[781.579],13)
CreateCreature ("z_gnollf",[935.548],7)
CreateCreature ("z_hobgob",[996.644],0)
CreateCreature ("z_yantim",[751.796],15)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~CheckStatGT(LastTalkedToBy,12,CON)~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN DO ~AddexperienceParty(34730)
ActionOverride(Myself,GiveItem("Z_BER2",Player1))
ActionOverride(Myself,MoveToPoint([932.746]))
ActionOverride(Myself,EscapeAreaDestroy(1))~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~CheckStatGT(LastTalkedToBy,15,CON)~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~CheckStatGT(LastTalkedToBy,17,CON)~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN DO ~AddexperienceParty(64730)
ActionOverride(Myself,GiveItem("Z_BER2",Player1))
ActionOverride(Myself,CreateItem("POTN09",5,0,0))
ActionOverride(Myself,GiveItem("POTN09",Player1))
ActionOverride(Myself,CreateItem("POTN17",5,0,0))
ActionOverride(Myself,GiveItem("POTN17",Player1))
ActionOverride(Myself,MoveToPoint([932.746]))
ActionOverride(Myself,EscapeAreaDestroy(1))~ EXIT
END
