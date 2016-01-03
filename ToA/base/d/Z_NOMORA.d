BEGIN ~Z_NOMORA~

IF ~Global("NomoranSpoken1","GLOBAL",0)
Global("NomoranPart1","GLOBAL",0)
!Global("ZNomoranAttacked","LOCALS",1)
!Global("ZNathCave","GLOBAL",3)
!Global("ZPortalCutscene","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("NomoranSpoken1","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 DO ~SetGlobal("NomoranSpoken1","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~Global("NomoranPart1","GLOBAL",0)~ THEN DO ~StartCutSceneMode()
CreateVisualEffectObject("spdimndr",Myself)
CreateVisualEffectObject("spdimndr",Player1)
CreateVisualEffectObject("spdimndr",Player2)
CreateVisualEffectObject("spdimndr",Player3)
CreateVisualEffectObject("spdimndr",Player4)
CreateVisualEffectObject("spdimndr",Player5)
CreateVisualEffectObject("spdimndr",Player6)
Wait(2)
FadeToColor([20.0],0)
Wait(1)
ActionOverride(Player1,LeaveAreaLUA("ZANEGH","",[608.3364],12))
ActionOverride(Player2,LeaveAreaLUA("ZANEGH","",[571.3340],12))
ActionOverride(Player3,LeaveAreaLUA("ZANEGH","",[525.3331],12))
ActionOverride(Player4,LeaveAreaLUA("ZANEGH","",[494.3368],12))
ActionOverride(Player5,LeaveAreaLUA("ZANEGH","",[545.3385],12))
ActionOverride(Player6,LeaveAreaLUA("ZANEGH","",[578.3402],12))
SetGlobal("NomoranPart1","GLOBAL",1)
DestroySelf()
FadeFromColor([20.0],0)
AddJournalEntry(@999993,QUEST)
EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN EXIT
END

IF ~Global("NomoranSpoken1","GLOBAL",1)
Global("NomoranPart1","GLOBAL",0)
!Global("ZNomoranAttacked","LOCALS",1)
!Global("ZNathCave","GLOBAL",3)
!Global("ZPortalCutscene","GLOBAL",1)~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN REPLY @4 GOTO 6
  IF ~~ THEN REPLY @5 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 1
END

IF ~~ THEN BEGIN 6
  SAY @6
  IF ~Global("NomoranPart1","GLOBAL",0)~ THEN DO ~StartCutSceneMode()
CreateVisualEffectObject("spdimndr",Myself)
CreateVisualEffectObject("spdimndr",Player1)
CreateVisualEffectObject("spdimndr",Player2)
CreateVisualEffectObject("spdimndr",Player3)
CreateVisualEffectObject("spdimndr",Player4)
CreateVisualEffectObject("spdimndr",Player5)
CreateVisualEffectObject("spdimndr",Player6)
Wait(2)
FadeToColor([20.0],0)
Wait(1)
ActionOverride(Player1,LeaveAreaLUA("ZANEGH","",[608.3364],12))
ActionOverride(Player2,LeaveAreaLUA("ZANEGH","",[571.3340],12))
ActionOverride(Player3,LeaveAreaLUA("ZANEGH","",[525.3331],12))
ActionOverride(Player4,LeaveAreaLUA("ZANEGH","",[494.3368],12))
ActionOverride(Player5,LeaveAreaLUA("ZANEGH","",[545.3385],12))
ActionOverride(Player6,LeaveAreaLUA("ZANEGH","",[578.3402],12))
SetGlobal("NomoranPart1","GLOBAL",1)
DestroySelf()
FadeFromColor([20.0],0)
AddJournalEntry(@999993,QUEST)
EndCutSceneMode()~ JOURNAL @999993 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @7 
  IF ~~ THEN EXIT
END

IF ~Global("NomoranPart1","GLOBAL",1)
Global("NomoranPart2","GLOBAL",0)
!Global("ZNomoranAttacked","LOCALS",1)
!Global("ZNathCave","GLOBAL",3)
!Global("ZPortalCutscene","GLOBAL",1)~ THEN BEGIN 8
  SAY @12 
  IF ~~ THEN REPLY @13 DO ~CreateVisualEffectObject("spdimndr",Myself)
Wait(1)
SetGlobal("NomoranPart2","GLOBAL",1)
DestroySelf()~ EXIT
END

IF ~Global("ZSchlacht1","GLOBAL",2)
Global("ZZauber1","GLOBAL",0)
!Global("ZNomoranAttacked","LOCALS",1)
!Global("ZNathCave","GLOBAL",3)
!Global("ZPortalCutscene","GLOBAL",1)~ THEN BEGIN 9
  SAY @14 
  IF ~~ THEN DO ~StartCutSceneMode()
Wait(1)
ForceSpell(SixthNearestEnemyOf([PC]),FLASHY_DEATH_YEAH)
CreateVisualEffectObject("spdeath3",SixthNearestEnemyOf([PC]))
Wait(1)
ForceSpell(FifthNearestEnemyOf([PC]),FLASHY_DEATH_2)
CreateVisualEffectObject("spdeath3",FifthNearestEnemyOf([PC]))
Wait(1)
ForceSpell(FourthNearestEnemyOf([PC]),FLASHY_DEATH_3)
CreateVisualEffectObject("spdeath3",FourthNearestEnemyOf([PC]))
Wait(1)
ForceSpell(ThirdNearestEnemyOf([PC]),FLASHY_DEATH_1)
CreateVisualEffectObject("spdeath3",ThirdNearestEnemyOf([PC]))
Wait(1)
ForceSpell(SecondNearestEnemyOf([PC]),VIEKANG_LIGHTNING)
CreateVisualEffectObject("spdeath3",SecondNearestEnemyOf([PC]))
Wait(1)
ForceSpell(NearestEnemyOf([PC]),FLASHY_DEATH_1)
CreateVisualEffectObject("spdeath3",NearestEnemyOf([PC]))
Wait(1)
SetGlobal("ZZauber1","GLOBAL",1)
Wait(2)
EndCutSceneMode()
StartDialog("z_nomora",Player1)~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @15
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~Global("ZSchlacht1","GLOBAL",2)
Global("ZZauber1","GLOBAL",1)
!Global("ZNomoranAttacked","LOCALS",1)
!Global("ZNathCave","GLOBAL",3)
!Global("ZPortalCutscene","GLOBAL",1)~ THEN BEGIN 11
  SAY @16   
  IF ~~ THEN DO ~SetGlobal("ZSchlacht1","GLOBAL",3)
SetGlobal("ZLebendSoldat","GLOBAL",0)
SetGlobal("ZLebendEXP","GLOBAL",0)
CreateCreature("z_solda2",[3200.3255],7)
CreateVisualEffectObject("spdimndr",Myself)
DestroySelf()~ EXIT
END

IF ~Global("ZNomoranAttacked","LOCALS",1)~ THEN BEGIN 12
  SAY @17 
  IF ~~ THEN DO ~ReallyForceSpell(Myself,WIZARD_IMPROVED_HASTE)
ForceSpell(Myself,WIZARD_MIRROR_IMAGE)
Wait(1)
ForceSpell(Myself,WIZARD_TIME_STOP)
MoveToOffset([-1.1])
ForceSpell(NearestEnemyOf(Myself),WIZARD_ICE_STORM)
ForceSpell(NearestEnemyOf(Myself),WIZARD_INCENDIARY_CLOUD)
MoveToOffset([-1.1])
ForceSpell(NearestEnemyOf(Myself),WIZARD_METEOR_SWARM)
MoveToOffset([-1.1])
ForceSpell(NearestEnemyOf(Myself),WIZARD_SYMBOL_DEATH)
ForceSpell(NearestEnemyOf(Myself),WIZARD_FIREBALL)
MoveToOffset([-1.1])
ForceSpell(NearestEnemyOf(Myself),WIZARD_FINGER_OF_DEATH)
MoveToOffset([-1.1])
ForceSpell(NearestEnemyOf(Myself),WIZARD_DEATH_FOG)
ForceSpell(NearestEnemyOf(Myself),WIZARD_CHAIN_LIGHTNING)
ForceSpellPoint([1.1],WIZARD_DIMENSION_DOOR)
Wait(1)
DestroySelf()~ EXIT
END

IF ~Global("ZNathCave","GLOBAL",3)
Global("ZCaveNomoTalked","GLOBAL",0)
!Global("ZNomoranAttacked","LOCALS",1)
!Global("ZPortalCutscene","GLOBAL",1)~ THEN BEGIN 13
  SAY @18
  IF ~~ THEN REPLY @19 DO ~SetGlobal("ZCaveNomoTalked","GLOBAL",1)~ GOTO 14
  IF ~~ THEN REPLY @20 DO ~SetGlobal("ZCaveNomoTalked","GLOBAL",1)~ GOTO 15
  IF ~~ THEN REPLY @21 DO ~SetGlobal("ZCaveNomoTalked","GLOBAL",1)~ GOTO 16
END

IF ~~ THEN BEGIN 14
  SAY @22
  IF ~~ THEN DO ~CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @23
  IF ~~ THEN DO ~CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @24
  IF ~~ THEN DO ~CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
DestroySelf()~ EXIT
END

IF ~Global("ZPortalCutscene","GLOBAL",1)~ THEN BEGIN 17
  SAY @25
  IF ~~ THEN REPLY @26 DO ~SetGlobal("ZPortalCutscene","GLOBAL",2)
TakePartyItem("z_scrld")~ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 19
  IF ~~ THEN REPLY @29 DO ~SetGlobal("ZPortalCutscene","GLOBAL",3)
TakePartyItem("z_scrld")~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @30
  IF ~~ THEN DO ~TakePartyItem("z_scrld")~ EXIT
END

IF ~Global("ZPortalCutscene","GLOBAL",2)~ THEN BEGIN 20
  SAY @31
  IF ~~ THEN REPLY @28 EXIT
  IF ~~ THEN REPLY @29 DO ~SetGlobal("ZPortalCutscene","GLOBAL",3)~ EXIT
END
