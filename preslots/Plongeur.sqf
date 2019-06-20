comment "Exported from Arsenal by [-GSRI-] Lisitius";

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
player forceAddUniform "U_B_Wetsuit";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_tourniquet";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 15 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_Chemlight_White";};
player addItemToUniform "ACE_M84";
player addItemToUniform "HandGrenade";
player addItemToUniform "SmokeShellBlue";
player addItemToUniform "ACE_HandFlare_White";
player addItemToUniform "16Rnd_9x21_Mag";
player addVest "V_RebreatherB";
player addBackpack "KIT_BAG_od";
player addItemToBackpack "VSM_G2_camo_MultiCam";
player addItemToBackpack "VSM_MBSS_PACA_BattleBelt_operator";
player addItemToBackpack "Booniehat_CE_hs";
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_salineIV_500";};
player addItemToBackpack "SMA_30Rnd_556x45_M855A1";
for "_i" from 1 to 2 do {player addItemToBackpack "SMA_30Rnd_556x45_Mk318";};
for "_i" from 1 to 6 do {player addItemToBackpack "SMA_30Rnd_556x45_Mk262";};
player addItemToBackpack "B_IR_Grenade";
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShell";};
player addGoggles "G_B_Diving";

comment "Add weapons";
player addWeapon "SMA_MK18MOEBLKTAN_SM";
player addPrimaryWeaponItem "SMA_rotex_blk";
player addPrimaryWeaponItem "SMA_SFFL_BLK";
player addPrimaryWeaponItem "optic_ERCO_blk_F";
player addPrimaryWeaponItem "SMA_Gripod_01";
player addWeapon "hgun_Rook40_F";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
