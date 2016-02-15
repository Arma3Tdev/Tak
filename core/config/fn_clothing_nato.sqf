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
ctrlSetText[3103,"NATO Clothing Shop"];

_ret = [];
switch (_filter) do
{
    //Uniforms
    case 0:
    {
        _ret =
        [
            ["TRYK_U_B_MARPAT_Desert2",nil,25],
			["TRYK_U_B_TANTAN_CombatUniform",nil,25],
            ["TRYK_U_B_ACU",nil,25],
            ["TRYK_U_B_ACUTshirt",nil,25],
            ["TRYK_U_B_MARPAT_Desert2_Tshirt",nil,25],
            ["TRYK_U_B_MARPAT_Desert_Tshirt",nil,25],
			["TRYK_HRP_UCP",nil,25],
            ["TRYK_U_B_ARO1_CBR_CombatUniform",nil,25],
            ["TRYK_U_B_ARO1R_CombatUniform",nil,20],
			["CUP_U_O_SLA_Officer",nil,20],
			["CUP_U_B_GER_Ghillie",nil,20],
			["U_B_FullGhillie_ard",nil,20]
        ];
    };

    //Hats
    case 1:

    {
            _ret pushBack ["TRYK_R_CAP_BLK",nil,25];
			_ret pushBack ["TRYK_H_PASGT_OD",nil,25];
			_ret pushBack ["H_MilCap_gry",nil,25];
			_ret pushBack ["H_PilotHelmetHeli_B",nil,25];
			_ret pushBack ["H_Cap_tan",nil,25];
            _ret pushBack ["TRYK_H_Helmet_ACU",nil,25];
            _ret pushBack ["TRYK_H_PASGT_TAN",nil,25];
            _ret pushBack ["TRYK_H_Helmet_ACU",nil,25];
            _ret pushBack ["TRYK_H_Booniehat_MARPAT_Desert",nil,25];
            _ret pushBack ["TRYK_H_Booniehat_AOR1",nil,25];
            _ret pushBack ["TRYK_H_Helmet_3C",nil,25];
            _ret pushBack ["TRYK_H_woolhat_tan",nil,25];
            _ret pushBack ["TRYK_H_AOR1",nil,25];
            _ret pushBack ["TRYK_H_Helmet_MARPAT_Desert2",nil,25];
            if(__GETC__(life_coplevel) > 13) then
            {
                _ret pushBack ["H_Beret_Colonel",nil,550];
                _ret pushBack ["H_Beret_02",nil,550];
            };
    };

    //Glasses
    case 2:
    {
        _ret =
        [
            ["G_Bandanna_khk",nil,25],
			["G_Balaclava_blk",nil,25],
			["G_Balaclava_combat",nil,25],
			["G_Bandanna_beast",nil,25],
            ["TRYK_kio_balaclava_ESS",nil,25],
            ["T_HoodACUO",nil,25],
            ["G_Bandanna_aviator",nil,20],
            ["T_HoodMDBLK",nil,20],
            ["T_HoodMDO",nil,20],
            ["NeckTight_DMBLK",nil,20],
            ["LCG_Shemagh_Tan",nil,20],
            ["Mask_M50",nil,20],
            ["Mask_M40_OD",nil,20],
            ["LBG_Shemagh_Gry",nil,20],
            ["Mask_M40",nil,20]
        ];
    };

    //Vest
    case 3:
    {
        _ret =
        [
            ["V_TacVest_khk",nil,25],
			["TRYK_V_ArmorVest_Ranger2",nil,25],
            ["TRYK_V_PlateCarrier_ACU",nil,25],
            ["CUP_V_B_MTV_Mine",nil,25],
            ["TRYK_V_ArmorVest_AOR1_2",nil,20],
            ["TRYK_V_tacv10_BK",nil,20],
            ["V_PlateCarrierH_CTRG",nil,20],
            ["CUP_V_B_RRV_DA2",nil,20],
            ["TRYK_V_ArmorVest_tan2",nil,20],
            ["V_PlateCarrierGL_blk",nil,20]
        ];
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
            ["B_Carryall_cbr",nil,3500],
            ["B_UAV_01_backpack_F",nil,3500]
        ];
    };
};

_ret;
