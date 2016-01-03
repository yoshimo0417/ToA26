BEGIN ~Z_2MAG1~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartCutSceneMode()
MultiPlayerSync()
CreateVisualEffectObject("ICCSWOUI",Player1)
CreateVisualEffectObject("ICCSWOUI",Player2)
CreateVisualEffectObject("ICCSWOUI",Player3)
CreateVisualEffectObject("ICCSWOUI",Player4)
CreateVisualEffectObject("ICCSWOUI",Player5)
CreateVisualEffectObject("ICCSWOUI",Player6)
Wait(1)
MoveViewPoint([4123.2598],VERY_FAST)
ActionOverride(Player1,JumpToPoint([4124.2576]))
ActionOverride(Player2,JumpToPoint([4169.2603]))
ActionOverride(Player3,JumpToPoint([4130.2619]))
ActionOverride(Player4,JumpToPoint([4084.2595]))
ActionOverride(Player5,JumpToPoint([4090.2592]))
ActionOverride(Player6,JumpToPoint([4067.2499]))
EndCutSceneMode()
DestroySelf()~ EXIT
  IF ~~ THEN REPLY @2 EXIT
END
