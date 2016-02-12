#include <macro.h>
/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration for available spawn points depending on the units side.

	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_3","TPF Rasman LAC",""]
		];

		if(__GETC__(life_coplevel) > 8) then {
			_return = [
				["cop_spawn_1","NATO HQ",""],
				["cop_spawn_4","NATO Air Unit",""]
			];
		};
	};

	case civilian:
	{
		_return = [
				["civ_spawn_1","Rasman",""],
				["civ_spawn_2","North Karachinar",""],
				["civ_spawn_3","Chaman",""],
				["civ_spawn_4","Nagara",""]
		];

		if(license_civ_rebel && playerSide == civilian) then {
			_return = [
				["civ_spawn_2","North Karachinar",""],
				["civ_spawn_3","Chaman",""],
				["terrorist_spawn","Terrorist Area",""]
			];
		};
	};

	case independent: {
		_return = [
			["medic_spawn_2","Rasman Medical",""]
		];
	};
};

_return;
