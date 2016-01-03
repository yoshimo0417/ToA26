BEGIN ~Z_ZAH~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN DO ~EraseJournalEntry(@999992)
TakePartyItem("Z_2PLATB")
DestroyItem("Z_2PLATB")
TakePartyItem("Z_anath")
DestroyItem("Z_anath")
TakePartyItem("Z_anath1")
DestroyItem("Z_anath1")
TakePartyItem("Z_anath2")
DestroyItem("Z_anath2")
TakePartyItem("Z_anath3")
DestroyItem("Z_anath3")
TakePartyItem("Z_anath4")
DestroyItem("Z_anath4")
TakePartyItem("Z_anathz")
DestroyItem("Z_anathz")
TakePartyItem("Z_AAMU")
DestroyItem("Z_AAMU")
TakePartyItem("Z_BAMU")
DestroyItem("Z_BAMU")
TakePartyItem("Z_bblade")
DestroyItem("Z_bblade")
TakePartyItem("Z_belwb")
DestroyItem("Z_belwb")
TakePartyItem("Z_BER1")
DestroyItem("Z_BER1")
TakePartyItem("Z_BER2")
DestroyItem("Z_BER2")
TakePartyItem("Z_BER3")
DestroyItem("Z_BER3")
TakePartyItem("Z_book1")
DestroyItem("Z_book1")
TakePartyItem("Z_dksw")
DestroyItem("Z_dksw")
TakePartyItem("Z_eamu")
DestroyItem("Z_eamu")
TakePartyItem("Z_ekraut")
DestroyItem("Z_ekraut")
TakePartyItem("Z_epfeif")
DestroyItem("Z_epfeif")
TakePartyItem("Z_elbow")
DestroyItem("Z_elbow")
TakePartyItem("Z_free")
DestroyItem("Z_free")
TakePartyItem("Z_free1")
DestroyItem("Z_free1")
TakePartyItem("Z_free2")
DestroyItem("Z_free2")
TakePartyItem("Z_free3")
DestroyItem("Z_free3")
TakePartyItem("Z_free4")
DestroyItem("Z_free4")
TakePartyItem("Z_gham")
DestroyItem("Z_gham")
TakePartyItem("Z_ghp1")
DestroyItem("Z_ghp1")
TakePartyItem("Z_ghp2")
DestroyItem("Z_ghp2")
TakePartyItem("Z_gola")
DestroyItem("Z_gola")
TakePartyItem("Z_hack")
DestroyItem("Z_hack")
TakePartyItem("Z_horn")
DestroyItem("Z_horn")
TakePartyItem("Z_key1")
DestroyItem("Z_key1")
TakePartyItem("Z_mars")
DestroyItem("Z_mars")
TakePartyItem("Z_pkey")
DestroyItem("Z_pkey")
TakePartyItem("Z_platm")
DestroyItem("Z_platm")
TakePartyItem("Z_ramu")
DestroyItem("Z_ramu")
TakePartyItem("Z_rwein")
DestroyItem("Z_rwein")
TakePartyItem("Z_scl1")
DestroyItem("Z_scl1")
TakePartyItem("Z_scrld")
DestroyItem("Z_scrld")
TakePartyItem("Z_sopam")
DestroyItem("Z_sopam")
TakePartyItem("Z_spe1")
DestroyItem("Z_spe1")
TakePartyItem("Z_speku")
DestroyItem("Z_speku")
TakePartyItem("Z_ssw2h")
DestroyItem("Z_ssw2h")
TakePartyItem("Z_spot")
DestroyItem("Z_spot")
TakePartyItem("Z_swthf")
DestroyItem("Z_swthf")
TakePartyItem("Z_tafel1")
DestroyItem("Z_tafel1")
TakePartyItem("Z_tafel2")
DestroyItem("Z_tafel2")~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN REPLY @5 EXIT
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN DO ~CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
DestroySelf()~ EXIT
END
