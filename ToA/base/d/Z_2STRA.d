BEGIN ~Z_2STRA~

IF ~Global("ZStaroTalk", "LOCALS", 0)
Global("ZStaroAnathZMake", "LOCALS", 0)~ THEN BEGIN 0
  SAY @0
  IF ~Or(4)
PartyHasItem("Z_ANATH1")
PartyHasItem("Z_ANATH2")
PartyHasItem("Z_ANATH3")
PartyHasItem("Z_ANATH4")~ THEN REPLY @1 DO ~SetGlobal("ZStaroTalk", "LOCALS", 1)~ GOTO 1
  IF ~!PartyHasItem("Z_ANATH1")
!PartyHasItem("Z_ANATH2")
!PartyHasItem("Z_ANATH3")
!PartyHasItem("Z_ANATH4")~ THEN REPLY @1 DO ~SetGlobal("ZStaroTalk", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~PartyHasItem("Z_ANATH1")
PartyHasItem("Z_ANATH2")
PartyHasItem("Z_ANATH3")~ THEN GOTO 3
  IF ~Or(3)
!PartyHasItem("Z_ANATH1")
!PartyHasItem("Z_ANATH2")
!PartyHasItem("Z_ANATH3")~ THEN DO ~SetGlobal("ZStaroAnathMake", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~SetGlobal("ZStaroAnath", "LOCALS", 1)
TakePartyItem("Z_ANATH1")
TakePartyItem("Z_ANATH2")
TakePartyItem("Z_ANATH3")
StartDialog("z_2stra",[PC])~ EXIT
END

IF ~Global("ZStaroAnath", "LOCALS", 1)
Global("ZStaroAnathZMake", "LOCALS", 0)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN DO ~SetGlobal("ZStaroAnath", "LOCALS", 2)
GiveItemCreate("z_anath",Player1,1,0,0)~ EXIT
END

IF ~Global("ZStaroAnathMake", "LOCALS", 1)
!Global("ZStaroAnath", "LOCALS", 2)
Global("ZStaroAnathZMake", "LOCALS", 0)
Or(3)
!PartyHasItem("Z_ANATH1")
!PartyHasItem("Z_ANATH2")
!PartyHasItem("Z_ANATH3")~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN EXIT
END

IF ~Global("ZStaroAnath", "LOCALS", 2)
Global("ZStaroAnathZMake", "LOCALS", 0)
Or(2)
!PartyHasItem("Z_ANATH4")
!PartyHasItem("Z_ANATH")~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN EXIT
END

IF ~Global("ZStaroAnathMake", "LOCALS", 1)
!Global("ZStaroAnath", "LOCALS", 2)
Global("ZStaroAnathZMake", "LOCALS", 0)
PartyHasItem("Z_ANATH1")
PartyHasItem("Z_ANATH2")
PartyHasItem("Z_ANATH3")~ THEN BEGIN 7
  SAY @4
  IF ~~ THEN DO ~SetGlobal("ZStaroAnath", "LOCALS", 1)
TakePartyItem("Z_ANATH1")
TakePartyItem("Z_ANATH2")
TakePartyItem("Z_ANATH3")~ EXIT
END

IF ~Global("ZStaroAnathZMake", "LOCALS", 0)
PartyHasItem("Z_ANATH4")
PartyHasItem("Z_ANATH")~ THEN BEGIN 8
  SAY @8
  IF ~~ THEN DO ~SetGlobal("ZStaroAnathZMake", "LOCALS", 1)
TakePartyItem("Z_ANATH4")
TakePartyItem("Z_ANATH")~ EXIT
END

IF ~Global("ZStaroAnathZMake", "LOCALS", 1)~ THEN BEGIN 9
  SAY @9
  IF ~~ THEN DO ~SetGlobal("ZStaroAnathZMake", "LOCALS", 2)
GiveItemCreate("z_anathz",Player1,1,0,0)
StartDialog("z_2stra",[PC])~ EXIT
END

IF ~True()~ THEN BEGIN 10
  SAY @10
  IF ~~ THEN EXIT
END
