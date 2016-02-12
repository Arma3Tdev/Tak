#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"TPF Clothing Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["TRYK_U_B_BLK_T_BK",nil,25];
		_ret pushBack ["TRYK_U_B_3c",nil,25];
		if(__GETC__(life_coplevel) > 1) then
		{
		_ret pushBack ["TRYK_U_B_PCUGs_BLK",nil,350];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["TRYK_U_B_TANTAN_CombatUniform",nil,550];
			_ret pushBack ["TRYK_U_B_BLKBLK_CombatUniform",nil,550];
			_ret pushBack ["CUP_U_O_TK_Ghillie_Top",nil,550];
		};
	};

	//Hats
	case 1:
	{
		_ret pushBack ["H_Cap_police",nil,25];
		_ret pushBack ["TRYK_H_Booniehat_AOR1",nil,25];
		_ret pushBack ["TRYK_H_Helmet_3C",nil,25];
		_ret pushBack ["TRYK_H_woolhat_tan",nil,25];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["TRYK_R_CAP_BLK",nil,350];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["TRYK_H_woolhat",nil,550];
			_ret pushBack ["TRYK_R_CAP_BLK",nil,550];
			_ret pushBack ["CUP_H_USMC_Helmet_Pilot",nil,550];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["TRYK_H_PASGT_BLK",nil,550];
			_ret pushBack ["H_Beret_blk",nil,550];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["CUP_H_TK_Beret",nil,550];
		};
	};

	//Glasses
	case 2:
	{
		_ret =
		[
			["TRYK_headset_Glasses",nil,25],
			["TRYK_US_ESS_Glasses_TAN_BLK",nil,20],
			["TRYK_kio_balaclava_BLK",nil,20],
			["TRYK_Shemagh_mesh",nil,20],
			["Mask_M50",nil,20],
			["T_HoodMDO",nil,20],
			["NeckTight_DMBLK",nil,20],
			["LCG_Shemagh_Tan",nil,20],
			["PU_shemagh_GryO",nil,20],
			["Mask_M50",nil,20],
			["Mask_M40_OD",nil,20],
			["Mask_M40",nil,20]
		];
	};

	//Vest
	case 3:
	{
		_ret pushBack ["TRYK_V_Bulletproof_BL",nil,25];
		_ret pushBack ["TRYK_V_tacv1LP_BK",nil,25];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["V_TacVest_blk",nil,350];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["TRYK_V_tacv1_P_BK",nil,550];
			_ret pushBack ["TRYK_V_tacv1LP_BK",nil,550];
			_ret pushBack ["TRYK_V_tacv1LP_BK",nil,550];
			_ret pushBack ["TRYK_V_ArmorVest_tan2",nil,550];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["TRYK_V_tacv1LC_P_BK",nil,550];
			_ret pushBack ["V_PlateCarrierGL_blk",nil,550];
			_ret pushBack ["TRYK_V_PlateCarrier_blk",nil,550];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["TRYK_V_PlateCarrier_blk",nil,550];
		};
	};

	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_cbr",nil,3500]
		];
	};
};

_ret;
