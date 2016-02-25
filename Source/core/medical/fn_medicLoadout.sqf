/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	Description:
	Loads the medic out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default medic gear.
player addUniform "rds_uniform_doctor";
player addVest "TRYK_V_Bulletproof";
player addHeadgear "H_Cap_marshal";
player addBackpack "TRYK_B_Medbag_BK";
player addGoggles "G_Spectacles_Tinted";

//Medic Gear
player addItem "Medikit";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "tf_anprc148jem";
player assignItem "tf_anprc148jem";

[] call life_fnc_saveGear;
