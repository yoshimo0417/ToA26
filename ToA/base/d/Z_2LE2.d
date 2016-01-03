BEGIN ~Z_2LE2~

IF ~Global("ZSchlachtCut1","GLOBAL",7)
Global("Z2BogenTaktik","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~Global("ZPlayerleads","GLOBAL",1)
!Global("Z2MagierTaktik","GLOBAL",1)~ THEN REPLY @1 DO ~SetGlobal("Z2BogenTaktik","GLOBAL",1)~ EXTERN ~Z_2HIBIT~ 12
  IF ~Global("ZPlayerleads","GLOBAL",1)
!Global("Z2MagierTaktik","GLOBAL",2)~ THEN REPLY @2 DO ~SetGlobal("Z2BogenTaktik","GLOBAL",2)~ EXTERN ~Z_2HIBIT~ 12
  IF ~Global("ZPlayerleads","GLOBAL",1)
!Global("Z2MagierTaktik","GLOBAL",3)~ THEN REPLY @3 DO ~SetGlobal("Z2BogenTaktik","GLOBAL",3)~ EXTERN ~Z_2HIBIT~ 12
  IF ~Global("ZPlayerleads","GLOBAL",1)
!Global("Z2MagierTaktik","GLOBAL",4)~ THEN REPLY @4 DO ~SetGlobal("Z2BogenTaktik","GLOBAL",4)~ EXTERN ~Z_2HIBIT~ 12
  IF ~Global("ZPlayerleads","GLOBAL",1)
!Global("Z2MagierTaktik","GLOBAL",5)~ THEN REPLY @5 DO ~SetGlobal("Z2BogenTaktik","GLOBAL",5)~ EXTERN ~Z_2HIBIT~ 12
  IF ~Global("ZPlayerleads","GLOBAL",1)
!Global("Z2MagierTaktik","GLOBAL",6)~ THEN REPLY @6 DO ~SetGlobal("Z2BogenTaktik","GLOBAL",6)~ EXTERN ~Z_2HIBIT~ 12
  IF ~Global("ZPlayerleads","GLOBAL",99)~ THEN DO ~SetGlobal("Z2BogenTaktik","GLOBAL",3)~ EXTERN ~Z_2HIBIT~ 12
END
