BEGIN ~Z_2LE1~

IF ~Global("ZSchlachtCut1","GLOBAL",7)
Global("Z2MagierTaktik","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~Z_2HIBIT~ 9
END

IF ~Global("ZSchlachtCut1","GLOBAL",7)
Global("Z2MagierTaktik","GLOBAL",0)~ THEN BEGIN 1
  SAY @1
  IF ~Global("ZPlayerleads","GLOBAL",1)~ THEN REPLY @2 DO ~SetGlobal("Z2MagierTaktik","GLOBAL",1)~ EXTERN ~Z_2HIBIT~ 11
  IF ~Global("ZPlayerleads","GLOBAL",1)~ THEN REPLY @3 DO ~SetGlobal("Z2MagierTaktik","GLOBAL",2)~ EXTERN ~Z_2HIBIT~ 11
  IF ~Global("ZPlayerleads","GLOBAL",1)~ THEN REPLY @4 DO ~SetGlobal("Z2MagierTaktik","GLOBAL",3)~ EXTERN ~Z_2HIBIT~ 11
  IF ~Global("ZPlayerleads","GLOBAL",1)~ THEN REPLY @5 DO ~SetGlobal("Z2MagierTaktik","GLOBAL",4)~ EXTERN ~Z_2HIBIT~ 11
  IF ~Global("ZPlayerleads","GLOBAL",1)~ THEN REPLY @6 DO ~SetGlobal("Z2MagierTaktik","GLOBAL",5)~ EXTERN ~Z_2HIBIT~ 11
  IF ~Global("ZPlayerleads","GLOBAL",1)~ THEN REPLY @7 DO ~SetGlobal("Z2MagierTaktik","GLOBAL",6)~ EXTERN ~Z_2HIBIT~ 11
  IF ~Global("ZPlayerleads","GLOBAL",99)~ THEN DO ~SetGlobal("Z2MagierTaktik","GLOBAL",2)~ EXTERN ~Z_2HIBIT~ 11
END
