#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Cop Initialization file.
*/
// TFR Variables API
tf_no_auto_long_range_radio = true;

TF_terrain_interception_coefficient = 0.1;

private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if((__GETC__(life_coplevel) < 1) && (__GETC__(life_adminlevel) == 0)) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
	};
	// Pay increase for NATO Ranks
switch (__GETC__(life_coplevel)) do
		{
	    case 9: {life_paycheck = life_paycheck + 10000;}; // NATO RANK 1
	    case 10: {life_paycheck = life_paycheck + 10000;}; // NATO RANK 2
	    case 11: {life_paycheck = life_paycheck + 10000;}; // NATO RANK 3
	    case 12: {life_paycheck = life_paycheck + 10000;}; // NATO RANK 4
	    case 13: {life_paycheck = life_paycheck + 10000;}; // NATO RANK 5
	    case 14: {life_paycheck = life_paycheck + 10000;}; // NATO RANK 6
	    case 15: {life_paycheck = life_paycheck + 10000;}; // NATO RANK 7
	    case 16: {life_paycheck = life_paycheck + 10000;}; // NATO RANK 8
    };


player setVariable["rank",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500) }; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
