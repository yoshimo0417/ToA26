BEGIN ~Z_SOLDA0~

IF ~Global("ZSchlacht1","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~StartCutSceneMode()
CutSceneId(Player1)
FadeToColor([20.0],0)
Wait(1)
ActionOverride(Player1,JumpToPoint([3286.3016]))
ActionOverride(Player2,JumpToPoint([3350.3041]))
ActionOverride(Player3,JumpToPoint([3394.3059]))
ActionOverride(Player4,JumpToPoint([3452.3050]))
ActionOverride(Player5,JumpToPoint([3504.3066]))
ActionOverride(Player6,JumpToPoint([3558.3078]))
MoveViewPoint([3510.2938],INSTANT)
FadeFromColor([20.0],0)
Wait(1)
DisplayStringHead("z_generalkorod",@99998)
Wait(1)
DisplayStringHead("Z_Soldat1",@99997)
DisplayStringHead("z_cleric1",@99997)
DisplayStringHead("z_magier1",@99997)
Wait(1)
DisplayStringHead("z_generalkorod",@99996)
PlaySong(57)
Wait(1)
ActionOverride("z_generalkorod",MoveToPoint([3607.2672]))
EndCutSceneMode()
SetGlobal("ZSchlacht1","GLOBAL",1)~ EXIT
END

IF ~Global("ZPlaeneVorhanden","GLOBAL",0)
Global("ZSchlacht1","GLOBAL",3)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("ZPlaeneVorhanden","GLOBAL",1)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END
