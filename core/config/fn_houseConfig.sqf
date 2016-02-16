/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Master config file for buyable houses?
*/
private["_house"];
_house = [_this,0,"",[""]] call BIS_fnc_param;
if(_house == "") exitWith {[]};

/*
	Return Format:
	[price,# of containers allowed]
*/
switch (true) do {
	case (_house in ["Land_House_K_1_EP1"]): {[1550000,1]};
	case (_house in ["Land_House_K_5_EP1"]): {[2200000,1]};
	case (_house in ["Land_House_K_6_EP1","Land_House_K_6_EP1","Land_House_K_3_EP1"]): {[2800000,2]};
	default {[]};
};
