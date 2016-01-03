BEGIN ~Z_MAGTER~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~EquipMostDamagingMelee()
CreateCreature ("z_hobgob",[300.474],10)
CreateCreature ("z_gnollf",[297.539],5)
CreateCreature ("z_yantim",[363.524],14)
Attack("z_buergermeister")~ EXIT
END
