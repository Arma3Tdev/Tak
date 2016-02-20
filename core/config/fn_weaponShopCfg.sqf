#include <macro.h>
/*
    File: fn_weaponShopCfg.sqf
    Author: Bryan "Tonic" Boardwine
    Description:
    Master configuration file for the weapon shops.
    Return:
    String: Close the menu
    Array:
    [Shop Name,
    [ //Array of items to add to the store
        [classname,Custom Name (set nil for default),price]
    ]
*/
private["_shop","_donator","_Percentage","_discount"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.
_donator = __GETC__(life_donatorlvl);
_Percentage = 7;
_discount = 1 / 100 * (100 - _donator * _Percentage);

switch(_shop) do
{
    case "tpf_equipment":
    {
        switch(true) do
        {
            case (playerside !=west):{"You are not a TPF Member"};
            case (__GETC__(life_coplevel) >= 9): {"You are not a TPF Member"
            case (__GETC__(life_coplevel) <= 8):
            {
                ["TPF Equipment",
                    [
                        ["Binocular",nil,150 * _discount],
                        ["ItemGPS",nil,100 * _discount],
                        ["ToolKit",nil,250 * _discount],
                        ["muzzle_snds_L",nil,650 * _discount],
                        ["FirstAidKit",nil,150 * _discount],
                        ["Medikit",nil,1000 * _discount],
                        ["NVGoggles",nil,2000 * _discount],
						            ["CUP_NVG_PVS7",nil,2000 * _discount],
                        ["Rangefinder",nil,2000 * _discount],
                        ["tf_anprc152","AN/PRC-152 Radio (5km)",50 * _discount],
                        ["tf_rt1523g","RT-1523G Long Range Radio (20km)",100 * _discount]
                    ]
                ];
            };
        };
    };

    case "nato_equipment":
    {
        switch(true) do
        {
            case (playerside !=west):{"You are not a NATO Member"};
            case (__GETC__(life_coplevel) <= 8): {"You are not a NATO Member"};
            case (__GETC__(life_coplevel) >= 9):
            {
                ["NATO Equipment",
                    [
                        ["ItemGPS",nil,100 * _discount],
                        ["ToolKit",nil,250 * _discount],
                        ["FirstAidKit",nil,150 * _discount],
                        ["Medikit",nil,1000 * _discount],
                        ["NVGoggles_OPFOR",nil,2000 * _discount],
						            ["CUP_NVG_PVS7",nil,2000 * _discount],
                        ["Laserdesignator",nil,2000 * _discount],
                        ["tf_anprc152","AN/PRC-152 Radio (5km)",50 * _discount],
                        ["tf_rt1523g","RT-1523G Long Range Radio (20km)",100 * _discount],
                        ["B_UavTerminal",nil,500 * _discount]
                    ]
                ];
            };
        };
    };

    case "med_basic":
    {
        switch (true) do
        {
            case (playerSide != independent): {"You are not an EMS Medic"};
            default {
                ["Hospital EMS Shop",
                    [
                        ["ItemGPS",nil,100 * _discount],
                        ["Binocular",nil,150 * _discount],
                        ["ToolKit",nil,250 * _discount],
                        ["FirstAidKit",nil,150 * _discount],
                        ["Medikit",nil,500 * _discount],
                        ["NVGoggles",nil,1200 * _discount],
						            ["CUP_NVG_PVS7",nil,2000 * _discount],
                        ["tf_anprc148jem","AN/PRC148-JEM Radio (5km)",50 * _discount],
                        ["tf_anprc155","AN/PRC-155 Long Range Radio (20km)",100 * _discount]
                    ]
                ];
            };
        };
    };

    case "tpf_loadout":
    {
        switch(true) do
        {
            case (playerSide != west): {"You are not a TPF Member!"};
            case (__GETC__(life_coplevel) >= 9): {"You are not a TPF Member"};
            case (__GETC__(life_coplevel) == 1):
            {
                ["TSF Private Loadout",
                    [
                            ["arifle_sdar_F","Taser Rifle",1500 * _discount],
                            ["hgun_P07_snds_F","Stun Pistol",500 * _discount],
                            ["hgun_P07_F",nil,1000 * _discount],
                            ["CUP_hgun_TaurusTracker455",nil,1000 * _discount],
                            ["CUP_6Rnd_45ACP_M",nil,100 * _discount],
                            ["CUP_smg_MP5A5",nil,3000 * _discount],
                            ["16Rnd_9x21_Mag","Stun Magazine",50 * _discount],
                            ["20Rnd_556x45_UW_mag","Taser Magazine",50 * _discount],
                            ["CUP_30Rnd_9x19_MP5",nil,125 * _discount]
                    ]
                ];
            };
            case (__GETC__(life_coplevel) == 2):
            {
                ["TSF Corporal Loadout",
                    [
                            ["arifle_sdar_F","Taser Rifle",1500 * _discount],
                            ["hgun_P07_snds_F","Stun Pistol",500 * _discount],
                            ["hgun_P07_F",nil,1000 * _discount],
                            ["CUP_hgun_TaurusTracker455",nil,1000 * _discount],
                            ["CUP_6Rnd_45ACP_M",nil,100 * _discount],
                            ["CUP_smg_MP5A5",nil,3000 * _discount],
                            ["16Rnd_9x21_Mag","Stun Magazine",50 * _discount],
                            ["20Rnd_556x45_UW_mag","Taser Magazine",50 * _discount],
                            ["CUP_30Rnd_9x19_MP5",nil,125 * _discount],
                            ["CUP_arifle_M4A1_black",nil,3000 * _discount],
                            ["CUP_arifle_M4A1_desert",nil,3000 * _discount],
                            ["CUP_arifle_M16A4_Base",nil,3000 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,250 * _discount],
                            ["optic_MRCO",nil,500 * _discount],
                            ["CUP_optic_CompM2_Black",nil,500 * _discount],
                            ["CUP_optic_CompM2_Desert",nil,500 * _discount],
                            ["CUP_muzzle_snds_M16",nil,500 * _discount],
                            ["CUP_muzzle_snds_M16_camo",nil,500 * _discount],
							              ["bipod_01_F_blk",nil,2500 * _discount],
                            ["CUP_optic_AN_PVS_10",nil,250 * _discount],
                            ["CUP_optic_AN_PVS_4",nil,250 * _discount],
                            ["CUP_optic_NSPU",nil,250 * _discount],
                            ["CUP_optic_MRad",nil,500 * _discount],
                            ["CUP_optic_Eotech533Grey",nil,125 * _discount],
                            ["CUP_optic_Kobra",nil,125 * _discount],
                            ["optic_Arco",nil,125 * _discount],
                            ["optic_Hamr",nil,125 * _discount],
                            ["optic_DMS",nil,125 * _discount]

                    ]
                ];
            };
            case (__GETC__(life_coplevel) == 3):
            {
                ["TSF Sergeant Loadout",
                    [
                            ["arifle_sdar_F","Taser Rifle",1500 * _discount],
                            ["hgun_P07_snds_F","Stun Pistol",500 * _discount],
                            ["hgun_P07_F",nil,1000 * _discount],
                            ["CUP_hgun_TaurusTracker455",nil,1000 * _discount],
                            ["CUP_6Rnd_45ACP_M",nil,100 * _discount],
                            ["CUP_smg_MP5A5",nil,3000 * _discount],
                            ["CUP_arifle_M4A1_black",nil,3000 * _discount],
                            ["CUP_arifle_M4A1_desert",nil,3000 * _discount],
                            ["CUP_arifle_M16A4_Base",nil,3000 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,250 * _discount],
							              ["CUP_arifle_G36C",nil,500 * _discount],
							              ["CUP_30Rnd_556x45_G36",nil,250 * _discount],
                            ["optic_MRCO",nil,500 * _discount],
                            ["CUP_optic_CompM2_Black",nil,500 * _discount],
                            ["CUP_optic_CompM2_Desert",nil,500 * _discount],
                            ["CUP_muzzle_snds_M16",nil,500 * _discount],
                            ["CUP_muzzle_snds_M16_camo",nil,500 * _discount],
                            ["CUP_arifle_G36A",nil,3000 * _discount],
                            ["CUP_arifle_XM8_Carbine",nil,3000 * _discount],
                            ["CUP_arifle_FNFAL_railed",nil,3000 * _discount],
                            ["srifle_DMR_03_tan_F",nil,500 * _discount],
                            ["srifle_DMR_03_F",nil,500 * _discount],
                            ["srifle_EBR_F",nil,500 * _discount],
                            ["muzzle_snds_B",nil,500 * _discount],
                            ["20Rnd_762x51_Mag",nil,500 * _discount],
                            ["10Rnd_93x64_DMR_05_Mag",nil,500 * _discount],
                            ["16Rnd_9x21_Mag","Stun Magazine",50 * _discount],
                            ["20Rnd_556x45_UW_mag","Taser Magazine",50 * _discount],
                            ["CUP_30Rnd_9x19_MP5",nil,125 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,125 * _discount],
                            ["CUP_30Rnd_556x45_G36",nil,125 * _discount],
                            ["CUP_20Rnd_762x51_FNFAL_M",nil,125 * _discount],
                            ["CUP_optic_AN_PVS_10",nil,250 * _discount],
                            ["CUP_optic_AN_PVS_4",nil,250 * _discount],
                            ["CUP_optic_NSPU",nil,250 * _discount],
                            ["CUP_optic_MRad",nil,500 * _discount],
                            ["CUP_optic_Eotech533Grey",nil,125 * _discount],
                            ["CUP_optic_LeupoldMk4_10x40_LRT_Woodland",nil,125 * _discount],
                            ["CUP_optic_Kobra",nil,125 * _discount],
                            ["CUP_srifle_M24_wdl",nil,500 * _discount],
                            ["CUP_5Rnd_762x51_M24",nil,50 * _discount],
                            ["CUP_launch_FIM92Stinger",nil,7500 * _discount],
                            ["CUP_Stinger_M",nil,2500 * _discount],
							              ["CUP_launch_RPG7V",nil,7500 * _discount],
							              ["CUP_PG7V_M",nil,2500 * _discount],
							              ["bipod_01_F_blk",nil,2500 * _discount],
                            ["optic_Arco",nil,125 * _discount],
                            ["optic_Hamr",nil,125 * _discount],
                            ["optic_DMS",nil,125 * _discount]

                    ]
                ];
            };
            case (__GETC__(life_coplevel) == 4):
            {
                ["TSF Staff Segeant Loadout",
                    [
                            ["arifle_sdar_F","Taser Rifle",1500 * _discount],
                            ["hgun_P07_snds_F","Stun Pistol",500 * _discount],
                            ["hgun_P07_F",nil,1000 * _discount],
                            ["CUP_hgun_TaurusTracker455",nil,1000 * _discount],
                            ["CUP_6Rnd_45ACP_M",nil,100 * _discount],
                            ["CUP_smg_MP5A5",nil,3000 * _discount],
                            ["CUP_arifle_M4A1_black",nil,3000 * _discount],
                            ["CUP_arifle_M4A1_desert",nil,3000 * _discount],
                            ["CUP_arifle_M16A4_Base",nil,3000 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,250 * _discount],
              							["CUP_arifle_G36C",nil,500 * _discount],
              							["CUP_30Rnd_556x45_G36",nil,250 * _discount],
                            ["optic_MRCO",nil,500 * _discount],
                            ["CUP_optic_CompM2_Black",nil,500 * _discount],
                            ["CUP_optic_CompM2_Desert",nil,500 * _discount],
                            ["CUP_muzzle_snds_M16",nil,500 * _discount],
                            ["CUP_muzzle_snds_M16_camo",nil,500 * _discount],
                            ["CUP_arifle_G36A",nil,3000 * _discount],
                            ["CUP_arifle_XM8_Carbine",nil,3000 * _discount],
                            ["CUP_arifle_FNFAL_railed",nil,3000 * _discount],
                            ["srifle_DMR_03_tan_F",nil,500 * _discount],
                            ["srifle_DMR_03_F",nil,500 * _discount],
                            ["srifle_EBR_F",nil,500 * _discount],
                            ["muzzle_snds_B",nil,500 * _discount],
                            ["20Rnd_762x51_Mag",nil,500 * _discount],
                            ["10Rnd_93x64_DMR_05_Mag",nil,500 * _discount],
                            ["CUP_arifle_Mk16_CQC",nil,3000 * _discount],
                            ["CUP_arifle_CZ805_A1",nil,3000 * _discount],
                            ["CUP_srifle_M14",nil,3000 * _discount],
                            ["16Rnd_9x21_Mag","Stun Magazine",50 * _discount],
                            ["20Rnd_556x45_UW_mag","Taser Magazine",50 * _discount],
                            ["CUP_30Rnd_9x19_MP5",nil,125 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,125 * _discount],
                            ["CUP_30Rnd_556x45_G36",nil,125 * _discount],
                            ["CUP_20Rnd_762x51_FNFAL_M",nil,125 * _discount],
                            ["CUP_20Rnd_762x51_DMR",nil,125 * _discount],
                            ["SmokeShellBlue","TearGas",50 * _discount],
                            ["CUP_srifle_M24_wdl",nil,500 * _discount],
                            ["CUP_5Rnd_762x51_M24",nil,50 * _discount],
                            ["CUP_launch_FIM92Stinger",nil,7500 * _discount],
                            ["CUP_Stinger_M",nil,2500 * _discount],
              							["CUP_launch_RPG7V",nil,15000 * _discount],
              							["CUP_PG7V_M",nil,5000 * _discount],
              							["bipod_01_F_blk",nil,2500 * _discount],
                            ["CUP_optic_AN_PVS_10",nil,250 * _discount],
                            ["CUP_optic_AN_PVS_4",nil,250 * _discount],
                            ["CUP_optic_NSPU",nil,250 * _discount],
                            ["CUP_optic_MRad",nil,500 * _discount],
                            ["CUP_optic_Eotech533Grey",nil,125 * _discount],
                            ["CUP_optic_LeupoldMk4_10x40_LRT_Woodland",nil,125 * _discount],
                            ["CUP_optic_Kobra",nil,125 * _discount],
                            ["optic_Arco",nil,125 * _discount],
                            ["optic_Hamr",nil,125 * _discount],
                            ["optic_DMS",nil,125 * _discount]

                    ]
                ];
            };
            case (__GETC__(life_coplevel) == 5):
            {
                ["TPF 1st Lieutenant Loadout",
                    [
                            ["arifle_sdar_F","Taser Rifle",1500 * _discount],
                            ["hgun_P07_snds_F","Stun Pistol",500 * _discount],
                            ["hgun_P07_F",nil,1000 * _discount],
                            ["CUP_hgun_TaurusTracker455",nil,1000 * _discount],
                            ["CUP_6Rnd_45ACP_M",nil,100 * _discount],
                            ["CUP_smg_MP5A5",nil,3000 * _discount],
                            ["CUP_arifle_M4A1_black",nil,3000 * _discount],
                            ["CUP_arifle_M4A1_desert",nil,3000 * _discount],
                            ["CUP_arifle_M16A4_Base",nil,3000 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,250 * _discount],
              							["CUP_arifle_G36C",nil,500 * _discount],
              							["CUP_30Rnd_556x45_G36",nil,250 * _discount],
                            ["optic_MRCO",nil,500 * _discount],
                            ["CUP_optic_CompM2_Black",nil,500 * _discount],
                            ["CUP_optic_CompM2_Desert",nil,500 * _discount],
                            ["CUP_muzzle_snds_M16",nil,500 * _discount],
                            ["CUP_muzzle_snds_M16_camo",nil,500 * _discount],
                            ["CUP_arifle_G36A",nil,3000 * _discount],
                            ["CUP_arifle_XM8_Carbine",nil,3000 * _discount],
                            ["CUP_arifle_FNFAL_railed",nil,3000 * _discount],
                            ["srifle_DMR_03_tan_F",nil,500 * _discount],
                            ["srifle_DMR_03_F",nil,500 * _discount],
                            ["srifle_EBR_F",nil,500 * _discount],
                            ["muzzle_snds_B",nil,500 * _discount],
                            ["20Rnd_762x51_Mag",nil,500 * _discount],
                            ["10Rnd_93x64_DMR_05_Mag",nil,500 * _discount],
                            ["CUP_arifle_Mk16_CQC",nil,3000 * _discount],
                            ["CUP_arifle_CZ805_A1",nil,3000 * _discount],
                            ["CUP_srifle_M14",nil,3000 * _discount],
                            ["CUP_arifle_L85A2_Holo_laser",nil,3000 * _discount],
                            ["CUP_launch_RPG7V",nil,15000 * _discount],
                            ["CUP_30Rnd_556x45_G36",nil,125 * _discount],
                            ["CUP_30Rnd_9x19_MP5",nil,125 * _discount],
                            ["CUP_20Rnd_762x51_FNFAL_M",nil,125 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,125 * _discount],
                            ["CUP_20Rnd_762x51_DMR",nil,125 * _discount],
                            ["CUP_5Rnd_762x51_M24",nil,125 * _discount],
                            ["CUP_PG7V_M",nil,5000 * _discount],
                            ["30Rnd_9x21_Mag","Stun Magazine",50 * _discount],
                            ["20Rnd_556x45_UW_mag","Taser Magazine",50 * _discount],
                            ["SmokeShellBlue","TearGas",50 * _discount],
                            ["CUP_srifle_M24_wdl",nil,500 * _discount],
                            ["CUP_5Rnd_762x51_M24",nil,50 * _discount],
                            ["CUP_launch_FIM92Stinger",nil,7500 * _discount],
                            ["CUP_Stinger_M",nil,2500 * _discount],
							              ["bipod_01_F_blk",nil,2500 * _discount],
                            ["CUP_optic_AN_PVS_10",nil,250 * _discount],
                            ["CUP_optic_AN_PVS_4",nil,250 * _discount],
                            ["CUP_optic_NSPU",nil,250 * _discount],
                            ["CUP_optic_MRad",nil,500 * _discount],
                            ["CUP_optic_Eotech533Grey",nil,125 * _discount],
                            ["CUP_optic_LeupoldMk4_10x40_LRT_Woodland",nil,125 * _discount],
                            ["CUP_optic_Kobra",nil,125 * _discount],
                            ["optic_Arco",nil,125 * _discount],
                            ["optic_Hamr",nil,125 * _discount],
                            ["optic_DMS",nil,125 * _discount]
                    ]
                ];
            };
            case (__GETC__(life_coplevel) == 6):
            {
                ["TPF Captain Loadout",
                    [
                            ["arifle_sdar_F","Taser Rifle",1500 * _discount],
                            ["hgun_P07_snds_F","Stun Pistol",500 * _discount],
                            ["hgun_P07_F",nil,1000 * _discount],
                            ["CUP_hgun_TaurusTracker455_gold",nil,1000 * _discount],
                            ["CUP_6Rnd_45ACP_M",nil,100 * _discount],
                            ["CUP_smg_MP5A5",nil,3000 * _discount],
                            ["CUP_arifle_M4A1_black",nil,3000 * _discount],
                            ["CUP_arifle_M4A1_desert",nil,3000 * _discount],
                            ["CUP_arifle_M16A4_Base",nil,3000 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,250 * _discount],
              							["CUP_arifle_G36C",nil,500 * _discount],
              							["CUP_30Rnd_556x45_G36",nil,250 * _discount],
                            ["optic_MRCO",nil,500 * _discount],
                            ["CUP_optic_CompM2_Black",nil,500 * _discount],
                            ["CUP_optic_CompM2_Desert",nil,500 * _discount],
                            ["CUP_muzzle_snds_M16",nil,500 * _discount],
                            ["CUP_muzzle_snds_M16_camo",nil,500 * _discount],
                            ["CUP_arifle_G36A",nil,3000 * _discount],
                            ["CUP_arifle_XM8_Carbine",nil,3000 * _discount],
                            ["CUP_arifle_FNFAL_railed",nil,3000 * _discount],
                            ["srifle_DMR_03_tan_F",nil,500 * _discount],
                            ["srifle_DMR_03_F",nil,500 * _discount],
                            ["srifle_EBR_F",nil,500 * _discount],
                            ["muzzle_snds_B",nil,500 * _discount],
                            ["20Rnd_762x51_Mag",nil,500 * _discount],
                            ["10Rnd_93x64_DMR_05_Mag",nil,500 * _discount],
                            ["CUP_arifle_Mk16_CQC",nil,3000 * _discount],
                            ["CUP_arifle_CZ805_A1",nil,3000 * _discount],
                            ["CUP_srifle_M14",nil,3000 * _discount],
                            ["CUP_arifle_L85A2_Holo_laser",nil,3000 * _discount],
                            ["CUP_launch_RPG7V",nil,15000 * _discount],
                            ["CUP_30Rnd_556x45_G36",nil,125 * _discount],
                            ["CUP_30Rnd_9x19_MP5",nil,125 * _discount],
                            ["CUP_20Rnd_762x51_FNFAL_M",nil,125 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,125 * _discount],
                            ["CUP_20Rnd_762x51_DMR",nil,125 * _discount],
                            ["CUP_5Rnd_762x51_M24",nil,125 * _discount],
                            ["30Rnd_9x21_Mag","Stun Magazine",50 * _discount],
                            ["20Rnd_556x45_UW_mag","Taser Magazine",50 * _discount],
                            ["CUP_PG7V_M",nil,5000 * _discount],
                            ["HandGrenade_Stone","Flashbang",50 * _discount],
                            ["SmokeShellBlue","TearGas",50 * _discount],
                            ["CUP_srifle_M24_wdl",nil,500 * _discount],
                            ["CUP_5Rnd_762x51_M24",nil,50 * _discount],
                            ["CUP_launch_FIM92Stinger",nil,7500 * _discount],
                            ["CUP_Stinger_M",nil,2500 * _discount],
                            ["CUP_hgun_TaurusTracker455_gold",nil,500 * _discount],
                            ["CUP_6Rnd_45ACP_M",nil,50 * _discount],
							["bipod_01_F_blk",nil,2500 * _discount],
                            ["CUP_optic_AN_PVS_10",nil,250 * _discount],
                            ["CUP_optic_AN_PVS_4",nil,250 * _discount],
                            ["CUP_optic_NSPU",nil,250 * _discount],
                            ["CUP_optic_Kobra",nil,125 * _discount],
                            ["CUP_optic_MRad",nil,500 * _discount],
                            ["CUP_optic_Eotech533Grey",nil,125 * _discount],
                            ["CUP_optic_LeupoldMk4_10x40_LRT_Woodland",nil,125 * _discount],
                            ["optic_Arco",nil,125 * _discount],
                            ["optic_Hamr",nil,125 * _discount],
                            ["optic_DMS",nil,125 * _discount]
                    ]
                ];
            };
            case (__GETC__(life_coplevel) == 7):
            {
                ["TPF Major Loadout",
                    [
                            ["arifle_sdar_F","Taser Rifle",1500 * _discount],
                            ["hgun_P07_snds_F","Stun Pistol",500 * _discount],
                            ["hgun_P07_F",nil,1000 * _discount],
                            ["CUP_hgun_TaurusTracker455_gold",nil,1000 * _discount],
                            ["CUP_6Rnd_45ACP_M",nil,100 * _discount],
                            ["CUP_smg_MP5A5",nil,3000 * _discount],
                            ["CUP_arifle_M4A1_black",nil,3000 * _discount],
                            ["CUP_arifle_M4A1_desert",nil,3000 * _discount],
                            ["CUP_arifle_M16A4_Base",nil,3000 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,250 * _discount],
              							["CUP_arifle_G36C",nil,500 * _discount],
              							["CUP_30Rnd_556x45_G36",nil,250 * _discount],
                            ["optic_MRCO",nil,500 * _discount],
                            ["CUP_optic_CompM2_Black",nil,500 * _discount],
                            ["CUP_optic_CompM2_Desert",nil,500 * _discount],
                            ["CUP_muzzle_snds_M16",nil,500 * _discount],
                            ["CUP_muzzle_snds_M16_camo",nil,500 * _discount],
                            ["CUP_arifle_G36A",nil,3000 * _discount],
                            ["CUP_arifle_XM8_Carbine",nil,3000 * _discount],
                            ["CUP_arifle_FNFAL_railed",nil,3000 * _discount],
                            ["srifle_DMR_03_tan_F",nil,500 * _discount],
                            ["srifle_DMR_03_F",nil,500 * _discount],
                            ["srifle_EBR_F",nil,500 * _discount],
                            ["muzzle_snds_B",nil,500 * _discount],
                            ["20Rnd_762x51_Mag",nil,500 * _discount],
                            ["10Rnd_93x64_DMR_05_Mag",nil,500 * _discount],
                            ["CUP_arifle_Mk16_CQC",nil,3000 * _discount],
                            ["CUP_arifle_CZ805_A1",nil,3000 * _discount],
                            ["CUP_srifle_M14",nil,3000 * _discount],
                            ["CUP_arifle_L85A2_Holo_laser",nil,3000 * _discount],
                            ["CUP_srifle_M24_wdl_LeupoldMk4LRT",nil,3000 * _discount],
                            ["CUP_srifle_M24_ghillie",nil,3000 * _discount],
                            ["CUP_launch_RPG7V",nil,15000 * _discount],
                            ["CUP_30Rnd_556x45_G36",nil,125 * _discount],
                            ["CUP_30Rnd_9x19_MP5",nil,125 * _discount],
                            ["CUP_20Rnd_762x51_FNFAL_M",nil,125 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,125 * _discount],
                            ["CUP_20Rnd_762x51_DMR",nil,125 * _discount],
                            ["CUP_5Rnd_762x51_M24",nil,125 * _discount],
                            ["30Rnd_9x21_Mag","Stun Magazine",50 * _discount],
                            ["20Rnd_556x45_UW_mag","Taser Magazine",50 * _discount],
                            ["CUP_PG7V_M",nil,5000 * _discount],
                            ["HandGrenade_Stone","Flashbang",50 * _discount],
                            ["SmokeShellBlue","TearGas",50 * _discount],
                            ["CUP_srifle_M24_des",nil,500 * _discount],
                            ["CUP_5Rnd_762x51_M24",nil,50 * _discount],
                            ["CUP_launch_FIM92Stinger",nil,7500 * _discount],
                            ["CUP_Stinger_M",nil,2500 * _discount],
                            ["CUP_hgun_TaurusTracker455_gold",nil,500 * _discount],
                            ["CUP_6Rnd_45ACP_M",nil,50 * _discount],
							              ["bipod_01_F_blk",nil,2500 * _discount],
                            ["CUP_optic_AN_PVS_10",nil,250 * _discount],
                            ["CUP_optic_AN_PVS_4",nil,250 * _discount],
                            ["CUP_optic_NSPU",nil,250 * _discount],
                            ["CUP_optic_Kobra",nil,125 * _discount],
                            ["CUP_optic_MRad",nil,500 * _discount],
                            ["CUP_optic_Eotech533Grey",nil,125 * _discount],
                            ["CUP_optic_LeupoldMk4_10x40_LRT_Woodland",nil,125 * _discount],
                            ["optic_Arco",nil,125 * _discount],
                            ["optic_Hamr",nil,125 * _discount],
                            ["optic_DMS",nil,125 * _discount]
                    ]
                ];
            };
            case (__GETC__(life_coplevel) == 8):
            {
                ["TPF General Loadout",
                    [
                            ["arifle_sdar_F","Taser Rifle",1500 * _discount],
                            ["hgun_P07_snds_F","Stun Pistol",500 * _discount],
                            ["hgun_P07_F",nil,1000 * _discount],
                            ["CUP_hgun_TaurusTracker455_gold",nil,1000 * _discount],
                            ["CUP_6Rnd_45ACP_M",nil,100 * _discount],
                            ["CUP_smg_MP5A5",nil,3000 * _discount],
                            ["CUP_arifle_M4A1_black",nil,3000 * _discount],
                            ["CUP_arifle_M4A1_desert",nil,3000 * _discount],
                            ["CUP_arifle_M16A4_Base",nil,3000 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,250 * _discount],
							["CUP_arifle_G36C",nil,500 * _discount],
							["CUP_30Rnd_556x45_G36",nil,250 * _discount],
                            ["optic_MRCO",nil,500 * _discount],
                            ["CUP_optic_CompM2_Black",nil,500 * _discount],
                            ["CUP_optic_CompM2_Desert",nil,500 * _discount],
                            ["CUP_muzzle_snds_M16",nil,500 * _discount],
                            ["CUP_muzzle_snds_M16_camo",nil,500 * _discount],
                            ["CUP_arifle_G36A",nil,3000 * _discount],
                            ["CUP_arifle_XM8_Carbine",nil,3000 * _discount],
                            ["CUP_arifle_FNFAL_railed",nil,3000 * _discount],
                            ["srifle_DMR_03_tan_F",nil,500 * _discount],
                            ["srifle_DMR_03_F",nil,500 * _discount],
                            ["srifle_EBR_F",nil,500 * _discount],
                            ["muzzle_snds_B",nil,500 * _discount],
                            ["20Rnd_762x51_Mag",nil,500 * _discount],
                            ["10Rnd_93x64_DMR_05_Mag",nil,500 * _discount],
                            ["CUP_arifle_Mk16_CQC",nil,3000 * _discount],
                            ["CUP_arifle_CZ805_A1",nil,3000 * _discount],
                            ["CUP_srifle_M14",nil,3000 * _discount],
                            ["CUP_arifle_L85A2_Holo_laser",nil,3000 * _discount],
                            ["CUP_srifle_M24_wdl_LeupoldMk4LRT",nil,3000 * _discount],
                            ["CUP_srifle_M24_ghillie",nil,3000 * _discount],
                            ["CUP_launch_RPG7V",nil,15000 * _discount],
                            ["CUP_30Rnd_556x45_G36",nil,125 * _discount],
                            ["CUP_30Rnd_9x19_MP5",nil,125 * _discount],
                            ["CUP_20Rnd_762x51_FNFAL_M",nil,125 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,125 * _discount],
                            ["CUP_20Rnd_762x51_DMR",nil,125 * _discount],
                            ["CUP_5Rnd_762x51_M24",nil,125 * _discount],
                            ["30Rnd_9x21_Mag","Stun Magazine",50 * _discount],
                            ["20Rnd_556x45_UW_mag","Taser Magazine",50 * _discount],
                            ["CUP_PG7V_M",nil,5000 * _discount],
                            ["HandGrenade_Stone","Flashbang",50 * _discount],
                            ["SmokeShellBlue","TearGas",50 * _discount],
                            ["CUP_srifle_M24_des",nil,500 * _discount],
                            ["CUP_5Rnd_762x51_M24",nil,50 * _discount],
                            ["CUP_hgun_TaurusTracker455_gold",nil,500 * _discount],
                            ["CUP_6Rnd_45ACP_M",nil,50 * _discount],
                            ["CUP_launch_FIM92Stinger",nil,7500 * _discount],
                            ["CUP_Stinger_M",nil,2500 * _discount],
							["bipod_01_F_blk",nil,2500 * _discount],
                            ["CUP_optic_AN_PVS_10",nil,250 * _discount],
                            ["CUP_optic_AN_PVS_4",nil,250 * _discount],
                            ["CUP_optic_NSPU",nil,250 * _discount],
                            ["CUP_optic_MRad",nil,500 * _discount],
                            ["CUP_optic_Eotech533Grey",nil,125 * _discount],
                            ["CUP_optic_LeupoldMk4_10x40_LRT_Woodland",nil,125 * _discount],
                            ["CUP_optic_Kobra",nil,125 * _discount],
                            ["optic_Arco",nil,125 * _discount],
                            ["optic_Hamr",nil,125 * _discount],
                            ["optic_DMS",nil,125 * _discount]
                    ]
                ];
            };
        };
    };
    case "nato_loadout":
    {
        switch(true) do
        {
            case (playerSide != west): {"You are not a NATO Member!"};
            case (__GETC__(life_coplevel) <= 8): {"You are not a NATO Member"};
            case (__GETC__(life_coplevel) == 10):
            {
                ["NATO Corporal Loadout",
                    [
                            ["hgun_P07_snds_F","Stun Pistol",500 * _discount],
                            ["30Rnd_9x21_Mag","Stun Magazine",50 * _discount],
                            ["CUP_hgun_glock17_flashlight",nil,1500 * _discount],
                            ["CUP_arifle_Mk16_CQC_FG",nil,3000 * _discount],
                            ["CUP_arifle_Mk16_STD_EGLM",nil,3000 * _discount],
                            ["CUP_arifle_M4A3_desert",nil,3000 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,125 * _discount],
                            ["CUP_muzzle_snds_M16_camo",nil,250 * _discount],
                            ["CUP_arifle_MG36_camo",nil,3000 * _discount],
                            ["CUP_100Rnd_556x45_BetaCMag",nil,500 * _discount],
							["CUP_arifle_G36C_camo",nil,500 * _discount],
							["CUP_30Rnd_556x45_G36",nil,250 * _discount],
                            ["CUP_sgun_AA12",nil,1000 * _discount],
                            ["CUP_20Rnd_B_AA12_74Slug",nil,100 * _discount],
                            ["CUP_20Rnd_B_AA12_Pellets",nil,100 * _discount],
                            ["CUP_sgun_M1014",nil,1000 * _discount],
                            ["CUP_8Rnd_B_Beneli_74Slug",nil,100 * _discount],
                            ["CUP_srifle_M110",nil,5000 * _discount],
                            ["CUP_20Rnd_762x51_B_M110",nil,250 * _discount],
                            ["CUP_muzzle_snds_M110",nil,125 * _discount],
                            ["CUP_srifle_DMR",nil,3000 * _discount],
                            ["srifle_DMR_03_tan_F",nil,500 * _discount],
                            ["srifle_EBR_F",nil,500 * _discount],
                            ["muzzle_snds_B",nil,500 * _discount],
                            ["20Rnd_762x51_Mag",nil,500 * _discount],
                            ["CUP_launch_NLAW",nil,7500 * _discount],
                            ["CUP_NLAW_M",nil,2500 * _discount],
                            ["CUP_launch_FIM92Stinger",nil,7500 * _discount],
                            ["CUP_Stinger_M",nil,2500 * _discount],
                            ["CUP_17Rnd_9x19_glock17",nil,125 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,125 * _discount],
                            ["CUP_20Rnd_762x51_CZ805B",nil,125 * _discount],
                            ["CUP_20Rnd_762x51_DMR",nil,125 * _discount],
                            ["HandGrenade_Stone","Flashbang",50 * _discount],
                            ["SmokeShellBlue","TearGas",50 * _discount],
                            ["optic_Arco",nil,125 * _discount],
                            ["optic_Hamr",nil,125 * _discount],
                            ["optic_MRCO",nil,125 * _discount],
                            ["optic_DMS",nil,125 * _discount],
                            ["optic_SOS",nil,125 * _discount],
                            ["optic_NVS",nil,125 * _discount],
                            ["optic_AMS_snd",nil,125 * _discount],
                            ["optic_KHS_tan",nil,125 * _discount],
                            ["optic_LRPS",nil,250 * _discount],
                            ["bipod_01_F_snd",nil,250 * _discount],
                            ["CUP_optic_AN_PVS_10",nil,250 * _discount],
                            ["CUP_optic_AN_PVS_4",nil,250 * _discount],
                            ["CUP_optic_NSPU",nil,250 * _discount],
                            ["CUP_optic_CompM2_Desert",nil,125 * _discount],
                            ["CUP_optic_SB_3_12x50_PMII",nil,125 * _discount],
                            ["CUP_optic_Kobra",nil,125 * _discount],
                            ["CUP_optic_TrijiconRx01_desert",nil,125 * _discount],
                            ["CUP_optic_MRad",nil,125 * _discount],
                            ["CUP_optic_ACOG",nil,125 * _discount],
                            ["CUP_optic_ElcanM145",nil,125 * _discount],
                            ["CUP_optic_CompM2_Desert",nil,125 * _discount],
                            ["bipod_01_F_snd",nil,125 * _discount]
                    ]
                ];
            };
            case (__GETC__(life_coplevel) == 11):
            {
                ["NATO Sergeant Loadout",
                    [
                            ["DemoCharge_Remote_Mag",nil,500 * _discount],
							["hgun_P07_snds_F","Stun Pistol",500 * _discount],
                            ["30Rnd_9x21_Mag","Stun Magazine",50 * _discount],
                            ["CUP_hgun_glock17_flashlight",nil,1500 * _discount],
                            ["CUP_arifle_Mk16_CQC_FG",nil,3000 * _discount],
                            ["CUP_arifle_Mk16_STD_EGLM",nil,3000 * _discount],
                            ["CUP_arifle_M4A3_desert",nil,3000 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,125 * _discount],
                            ["CUP_muzzle_snds_M16_camo",nil,250 * _discount],
                            ["CUP_arifle_MG36_camo",nil,3000 * _discount],
                            ["CUP_100Rnd_556x45_BetaCMag",nil,500 * _discount],
							["CUP_arifle_G36C_camo",nil,500 * _discount],
							["CUP_30Rnd_556x45_G36",nil,500 * _discount],
                            ["CUP_sgun_AA12",nil,1000 * _discount],
                            ["CUP_20Rnd_B_AA12_74Slug",nil,100 * _discount],
                            ["CUP_20Rnd_B_AA12_Pellets",nil,100 * _discount],
                            ["CUP_sgun_M1014",nil,1000 * _discount],
                            ["CUP_8Rnd_B_Beneli_74Slug",nil,100 * _discount],
                            ["CUP_sgun_Saiga12K",nil,1000 * _discount],
                            ["CUP_8Rnd_B_Saiga12_74Slug_M",nil,100 * _discount],
                            ["CUP_srifle_M40A3",nil,3000 * _discount],
							["CUP_srifle_M24_des",nil,3000 * _discount],
							["CUP_5Rnd_762x51_M24",nil,125 * _discount],
							["CUP_Mxx_camo",nil,125 * _discount],
                            ["CUP_srifle_M110",nil,5000 * _discount],
                            ["CUP_20Rnd_762x51_B_M110",nil,250 * _discount],
                            ["CUP_muzzle_snds_M110",nil,125 * _discount],
                            ["CUP_srifle_DMR",nil,3000 * _discount],
                            ["srifle_DMR_03_tan_F",nil,500 * _discount],
                            ["srifle_EBR_F",nil,500 * _discount],
                            ["muzzle_snds_B",nil,500 * _discount],
                            ["20Rnd_762x51_Mag",nil,500 * _discount],
                            ["CUP_srifle_AWM_des_SBPMII",nil,3000 * _discount],
                            ["CUP_muzzle_snds_AWM",nil,250 * _discount],
                            ["CUP_lmg_M240",nil,3000 * _discount],
                            ["CUP_lmg_L7A2",nil,3000 * _discount],
                            ["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",nil,150 * _discount],
							["CUP_lmg_M249",nil,3000 * _discount],
							["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",nil,250 * _discount],
                            ["CUP_launch_NLAW",nil,7500 * _discount],
                            ["CUP_NLAW_M",nil,2500 * _discount],
                            ["CUP_launch_FIM92Stinger",nil,7500 * _discount],
                            ["CUP_Stinger_M",nil,2500 * _discount],
                            ["CUP_17Rnd_9x19_glock17",nil,125 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,125 * _discount],
                            ["CUP_20Rnd_762x51_CZ805B",nil,125 * _discount],
                            ["CUP_20Rnd_762x51_DMR",nil,125 * _discount],
                            ["CUP_5Rnd_86x70_L115A1",nil,125 * _discount],
                            ["HandGrenade_Stone","Flashbang",50 * _discount],
                            ["SmokeShellBlue","TearGas",50 * _discount],
                            ["optic_Arco",nil,125 * _discount],
                            ["optic_Hamr",nil,125 * _discount],
                            ["optic_MRCO",nil,125 * _discount],
                            ["optic_DMS",nil,125 * _discount],
                            ["optic_SOS",nil,125 * _discount],
                            ["optic_NVS",nil,125 * _discount],
                            ["optic_AMS_snd",nil,125 * _discount],
                            ["optic_KHS_tan",nil,125 * _discount],
                            ["optic_LRPS",nil,250 * _discount],
                            ["bipod_01_F_snd",nil,250 * _discount],
                            ["CUP_optic_AN_PVS_10",nil,250 * _discount],
                            ["CUP_optic_AN_PVS_4",nil,250 * _discount],
                            ["CUP_optic_NSPU",nil,250 * _discount],
                            ["CUP_optic_CompM2_Desert",nil,125 * _discount],
                            ["CUP_optic_SB_3_12x50_PMII",nil,125 * _discount],
                            ["CUP_optic_Kobra",nil,125 * _discount],
                            ["CUP_optic_TrijiconRx01_desert",nil,125 * _discount],
                            ["CUP_optic_MRad",nil,125 * _discount],
                            ["CUP_optic_ACOG",nil,125 * _discount],
                            ["CUP_optic_ElcanM145",nil,125 * _discount],
                            ["CUP_optic_CompM2_Desert",nil,125 * _discount],
                            ["CUP_optic_RCO_desert",nil,125 * _discount]
                    ]
                ];
            };
            case (__GETC__(life_coplevel) == 12):
            {
                ["NATO Staff Segeant Loadout",
                    [
                            ["DemoCharge_Remote_Mag",nil,500 * _discount],
							["hgun_P07_snds_F","Stun Pistol",500 * _discount],
                            ["30Rnd_9x21_Mag","Stun Magazine",50 * _discount],
                            ["CUP_hgun_glock17_flashlight",nil,1500 * _discount],
                            ["CUP_arifle_Mk16_CQC_FG",nil,3000 * _discount],
                            ["CUP_arifle_Mk16_STD_EGLM",nil,3000 * _discount],
                            ["CUP_arifle_M4A3_desert",nil,3000 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,125 * _discount],
                            ["CUP_muzzle_snds_M16_camo",nil,250 * _discount],
                            ["CUP_arifle_MG36_camo",nil,3000 * _discount],
                            ["CUP_100Rnd_556x45_BetaCMag",nil,500 * _discount],
							["CUP_arifle_G36C_camo",nil,500 * _discount],
							["CUP_30Rnd_556x45_G36",nil,250 * _discount],
                            ["CUP_sgun_AA12",nil,1000 * _discount],
                            ["CUP_20Rnd_B_AA12_74Slug",nil,100 * _discount],
                            ["CUP_20Rnd_B_AA12_Pellets",nil,100 * _discount],
                            ["CUP_20Rnd_B_AA12_HE",nil,100 * _discount],
                            ["CUP_sgun_M1014",nil,1000 * _discount],
                            ["CUP_8Rnd_B_Beneli_74Slug",nil,100 * _discount],
                            ["CUP_sgun_Saiga12K",nil,1000 * _discount],
                            ["CUP_8Rnd_B_Saiga12_74Slug_M",nil,100 * _discount],
                            ["CUP_srifle_M40A3",nil,3000 * _discount],
							["CUP_srifle_M24_des",nil,3000 * _discount],
							["CUP_5Rnd_762x51_M24",nil,125 * _discount],
							["CUP_Mxx_camo",nil,125 * _discount],
                            ["CUP_srifle_M110",nil,5000 * _discount],
                            ["CUP_20Rnd_762x51_B_M110",nil,250 * _discount],
                            ["CUP_muzzle_snds_M110",nil,125 * _discount],
                            ["CUP_lmg_Mk48_des_Aim_Laser",nil,3000 * _discount],
                            ["CUP_srifle_M107_Base",nil,5000 * _discount],
                            ["CUP_10Rnd_127x99_m107",nil,100 * _discount],
                            ["CUP_srifle_DMR",nil,3000 * _discount],
                            ["srifle_DMR_03_tan_F",nil,500] * _discount,
                            ["srifle_EBR_F",nil,500 * _discount],
                            ["muzzle_snds_B",nil,500 * _discount],
                            ["20Rnd_762x51_Mag",nil,500 * _discount],
                            ["srifle_DMR_05_tan_f",nil,500 * _discount],
                            ["muzzle_snds_93mmg_tan",nil,500 * _discount],
                            ["10Rnd_93x64_DMR_05_Mag",nil,500 * _discount],
                            ["MMG_01_tan_F",nil,1000 * _discount],
                            ["150Rnd_93x64_Mag",nil,500 * _discount],
                            ["CUP_srifle_AWM_des_SBPMII",nil,3000 * _discount],
                            ["CUP_muzzle_snds_AWM",nil,250 * _discount],
                            ["CUP_lmg_M240",nil,3000 * _discount],
                            ["CUP_lmg_L7A2",nil,3000 * _discount],
                            ["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",nil,150 * _discount],
							["CUP_lmg_M249",nil,3000 * _discount],
							["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",nil,250 * _discount],
                            ["CUP_launch_NLAW",nil,7500 * _discount],
                            ["CUP_NLAW_M",nil,2500 * _discount],
                            ["CUP_launch_FIM92Stinger",nil,7500 * _discount],
                            ["CUP_Stinger_M",nil,2500 * _discount],
                            ["CUP_17Rnd_9x19_glock17",nil,125 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,125 * _discount],
                            ["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",nil,125 * _discount],
                            ["CUP_20Rnd_762x51_CZ805B",nil,125 * _discount],
                            ["CUP_20Rnd_762x51_DMR",nil,125 * _discount],
                            ["CUP_5Rnd_86x70_L115A1",nil,125 * _discount],
                            ["HandGrenade_Stone","Flashbang",50 * _discount],
                            ["SmokeShellBlue","TearGas",50 * _discount],
                            ["optic_Arco",nil,125 * _discount],
                            ["optic_Hamr",nil,125 * _discount],
                            ["optic_MRCO",nil,125 * _discount],
                            ["optic_DMS",nil,125 * _discount],
                            ["optic_SOS",nil,125 * _discount],
                            ["optic_NVS",nil,125 * _discount],
                            ["optic_AMS_snd",nil,125 * _discount],
                            ["optic_KHS_tan",nil,125 * _discount],
                            ["optic_LRPS",nil,250 * _discount],
                            ["bipod_01_F_snd",nil,250 * _discount],
                            ["CUP_optic_AN_PVS_10",nil,250 * _discount],
                            ["CUP_optic_AN_PVS_4",nil,250 * _discount],
                            ["CUP_optic_NSPU",nil,250 * _discount],
                            ["CUP_optic_CompM2_Desert",nil,125 * _discount],
                            ["CUP_optic_SB_3_12x50_PMII",nil,125 * _discount],
                            ["CUP_optic_Kobra",nil,125 * _discount],
                            ["CUP_optic_TrijiconRx01_desert",nil,125 * _discount],
                            ["CUP_optic_MRad",nil,125 * _discount],
                            ["CUP_optic_ACOG",nil,125 * _discount],
                            ["CUP_optic_ElcanM145",nil,125 * _discount],
                            ["CUP_optic_CompM2_Desert",nil,125 * _discount],
                            ["CUP_optic_RCO_desert",nil,125 * _discount]
                    ]
                ];
            };
            case (__GETC__(life_coplevel) >= 13):
            {
                ["NATO Level 5 Loadout",
                    [
                            ["DemoCharge_Remote_Mag",nil,500 * _discount],
							["hgun_P07_snds_F","Stun Pistol",500 * _discount],
                            ["30Rnd_9x21_Mag","Stun Magazine",50 * _discount],
                            ["CUP_hgun_glock17_flashlight",nil,1500 * _discount],
                            ["CUP_arifle_Mk16_CQC_FG",nil,3000 * _discount],
                            ["CUP_arifle_Mk16_STD_EGLM",nil,3000 * _discount],
                            ["CUP_arifle_M4A3_desert",nil,3000 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,125 * _discount],
                            ["CUP_muzzle_snds_M16_camo",nil,250 * _discount],
                            ["CUP_arifle_MG36_camo",nil,3000 * _discount],
                            ["CUP_100Rnd_556x45_BetaCMag",nil,500 * _discount],
							["CUP_arifle_G36C_camo",nil,500 * _discount],
							["CUP_30Rnd_556x45_G36",nil,250 * _discount],
                            ["CUP_sgun_AA12",nil,1000 * _discount],
                            ["CUP_20Rnd_B_AA12_74Slug",nil,100 * _discount],
                            ["CUP_20Rnd_B_AA12_Pellets",nil,100 * _discount],
                            ["CUP_20Rnd_B_AA12_HE",nil,100 * _discount],
                            ["CUP_sgun_M1014",nil,1000 * _discount],
                            ["CUP_8Rnd_B_Beneli_74Slug",nil,100 * _discount],
                            ["CUP_sgun_Saiga12K",nil,1000 * _discount],
                            ["CUP_8Rnd_B_Saiga12_74Slug_M",nil,100 * _discount],
                            ["CUP_srifle_M40A3",nil,3000 * _discount],
							["CUP_srifle_M24_des",nil,3000 * _discount],
                            ["CUP_5Rnd_762x51_M24",nil,125 * _discount],
							["CUP_Mxx_camo",nil,125 * _discount],
                            ["CUP_srifle_M110",nil,5000 * _discount],
                            ["CUP_20Rnd_762x51_B_M110",nil,250 * _discount],
                            ["CUP_muzzle_snds_M110",nil,125 * _discount],
                            ["CUP_lmg_Mk48_des_Aim_Laser",nil,3000 * _discount],
                            ["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",nil,125 * _discount],
                            ["CUP_srifle_AS50",nil,5000 * _discount],
                            ["CUP_5Rnd_127x99_as50_M",nil,100 * _discount],
                            ["CUP_srifle_M107_Base",nil,5000 * _discount],
                            ["CUP_10Rnd_127x99_m107",nil,100 * _discount],
                            ["srifle_GM6_camo_F",nil,5000 * _discount],
                            ["5Rnd_127x108_APDS_Mag",nil,100 * _discount],
                            ["CUP_srifle_DMR",nil,3000 * _discount],
                            ["srifle_DMR_03_tan_F",nil,500 * _discount],
                            ["srifle_EBR_F",nil,500 * _discount],
                            ["muzzle_snds_B",nil,500 * _discount],
                            ["20Rnd_762x51_Mag",nil,500 * _discount],
                            ["srifle_DMR_05_tan_f",nil,500 * _discount],
                            ["muzzle_snds_93mmg_tan",nil,500 * _discount],
                            ["10Rnd_93x64_DMR_05_Mag",nil,500 * _discount],
                            ["MMG_01_tan_F",nil,1000 * _discount],
                            ["150Rnd_93x64_Mag",nil,500 * _discount],
                            ["CUP_srifle_AWM_des_SBPMII",nil,3000 * _discount],
                            ["CUP_muzzle_snds_AWM",nil,250 * _discount],
                            ["CUP_5Rnd_86x70_L115A1",nil,125 * _discount],
                            ["CUP_lmg_M240",nil,3000 * _discount],
                            ["CUP_lmg_L7A2",nil,3000 * _discount],
                            ["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",nil,150 * _discount],
							["CUP_lmg_M249",nil,3000 * _discount],
							["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",nil,250 * _discount],
                            ["CUP_launch_NLAW",nil,7500 * _discount],
                            ["CUP_NLAW_M",nil,2500 * _discount],
                            ["CUP_launch_FIM92Stinger",nil,7500 * _discount],
                            ["CUP_Stinger_M",nil,2500 * _discount],
                            ["CUP_17Rnd_9x19_glock17",nil,125 * _discount],
                            ["CUP_30Rnd_556x45_Stanag",nil,125 * _discount],
                            ["CUP_20Rnd_762x51_CZ805B",nil,125 * _discount],
                            ["CUP_20Rnd_762x51_DMR",nil,125 * _discount],
                            ["HandGrenade_Stone","Flashbang",50 * _discount],
                            ["SmokeShellBlue","TearGas",50 * _discount],
                            ["optic_Arco",nil,125 * _discount],
                            ["optic_Hamr",nil,125 * _discount],
                            ["optic_MRCO",nil,125 * _discount],
                            ["optic_DMS",nil,125 * _discount],
                            ["optic_SOS",nil,125 * _discount],
                            ["optic_NVS",nil,125 * _discount],
                            ["optic_AMS_snd",nil,125 * _discount],
                            ["optic_KHS_tan",nil,125 * _discount],
                            ["optic_LRPS",nil,250 * _discount],
                            ["bipod_01_F_snd",nil,250 * _discount],
                            ["CUP_optic_AN_PVS_10",nil,250 * _discount],
                            ["CUP_optic_AN_PVS_4",nil,250 * _discount],
                            ["CUP_optic_NSPU",nil,250 * _discount],
                            ["CUP_optic_CompM2_Desert",nil,125 * _discount],
                            ["CUP_optic_SB_3_12x50_PMII",nil,125 * _discount],
                            ["CUP_optic_Kobra",nil,125 * _discount],
                            ["CUP_optic_TrijiconRx01_desert",nil,125 * _discount],
                            ["CUP_optic_MRad",nil,125 * _discount],
                            ["CUP_optic_ACOG",nil,125 * _discount],
                            ["CUP_optic_ElcanM145",nil,125 * _discount],
                            ["CUP_optic_CompM2_Desert",nil,125 * _discount],
                            ["CUP_optic_RCO_desert",nil,125 * _discount]
                    ]
                ];
            };
        };
    };

    case "rebel":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"You are not a civilian!"};
            case (!license_civ_rebel): {"You don't have a Rebel training license!"};
            default
            {
                ["Mohammed's Jihadi Shop",
                    [
                        ["CUP_lmg_Pecheneg",nil,75000 * _discount],
                        ["CUP_lmg_PKM",nil,75000 * _discount],
                        ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",nil,1200 * _discount],
						["CUP_optic_PechenegScope",nil,20000 * _discount],
                        ["CUP_arifle_RPK74",nil,75000 * _discount],
                        ["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",nil,750 * _discount],
                        ["CUP_srifle_VSSVintorez",nil,100000 * _discount],
                        ["CUP_20Rnd_9x39_SP5_VSS_M",nil,500 * _discount],
                        ["CUP_srifle_SVD",nil,125000 * _discount],
                        ["CUP_srifle_DMR",nil,125000 * _discount],
                        ["CUP_srifle_M14",nil,70000 * _discount],
                        ["CUP_20Rnd_762x51_DMR",nil,2000 * _discount],
                        ["CUP_arifle_FNFAL_railed",nil,70000 * _discount],
                        ["CUP_20Rnd_762x51_FNFAL_M",nil,1500 * _discount],
                        ["CUP_srifle_M24_des",nil,250000 * _discount],
                        ["CUP_5Rnd_762x51_M24",nil,2500 * _discount],
                        ["CUP_srifle_AWM_des",nil,250000 * _discount],
                        ["CUP_5Rnd_86x70_L115A1",nil,2500 * _discount],
                        ["CUP_srifle_CZ550",nil,250000 * _discount],
                        ["CUP_5x_22_LR_17_HMR_M",nil,2500 * _discount],
                        ["CUP_10Rnd_762x54_SVD_M",nil,800 * _discount],
                        ["CUP_arifle_AKM",nil,70000 * _discount],
						["CUP_arifle_AK47",nil,100000 * _discount],
                        ["CUP_arifle_AKS_Gold",nil,250000 * _discount],
                        ["CUP_30Rnd_762x39_AK47_M",nil,275 * _discount],
                        ["CUP_arifle_AKS74",nil,50000 * _discount],
                        ["CUP_arifle_AK107",nil,50000 * _discount],
                        ["CUP_arifle_AK74",nil,50000 * _discount],
                        ["CUP_30Rnd_545x39_AK_M",nil,275 * _discount],
                        ["CUP_arifle_Sa58V_camo",nil,70000 * _discount],
                        ["CUP_30Rnd_Sa58_M",nil,300 * _discount],
                        ["CUP_srifle_LeeEnfield",nil,50000 * _discount],
                        ["CUP_10x_303_M",nil,275 * _discount],
                        ["arifle_Katiba_F",nil,30000 * _discount],
                        ["30Rnd_65x39_caseless_green",nil,125 * _discount],
                        ["CUP_smg_MP5SD6",nil,30000 * _discount],
                        ["CUP_30Rnd_9x19_MP5",nil,250 * _discount],
                        ["arifle_Mk20_F",nil,25000 * _discount],
                        ["arifle_TRG21_F",nil,25000 * _discount],
                        ["30Rnd_556x45_Stanag",nil,125 * _discount],
                        ["arifle_MXC_Black_F",nil,40000 * _discount],
                        ["30Rnd_65x39_caseless_mag",nil,250 * _discount],
                        ["CUP_hgun_Phantom_Flashlight",nil,6500 * _discount],
                        ["CUP_18Rnd_9x19_Phantom",nil,125 * _discount],
                        ["CUP_hgun_PB6P9",nil,6500 * _discount],
                        ["CUP_8Rnd_9x18_Makarov_M",nil,125 * _discount],
                        ["CUP_hgun_Glock17",nil,6500 * _discount],
                        ["CUP_17Rnd_9x19_glock17",nil,125 * _discount],
                        ["CUP_hgun_TaurusTracker455_gold",nil,50000 * _discount],
                        ["CUP_6Rnd_45ACP_M",nil,500 * _discount],
                        ["CUP_hgun_SA61",nil,15000 * _discount],
                        ["CUP_20Rnd_B_765x17_Ball_M",nil,1000 * _discount],
                        ["CUP_hgun_MicroUzi_snds",nil,17500 * _discount],
                        ["CUP_30Rnd_9x19_UZI",nil,1500 * _discount],
                        ["CUP_sgun_AA12",nil,75000 * _discount],
                        ["CUP_20Rnd_B_AA12_Pellets",nil,2000 * _discount],
                        ["CUP_sgun_M1014",nil,75000 * _discount],
                        ["CUP_8Rnd_B_Beneli_74Slug",nil,2000 * _discount],
                        ["CUP_sgun_Saiga12K",nil,75000 * _discount],
                        ["CUP_8Rnd_B_Saiga12_74Slug_M",nil,2500 * _discount],
                        ["CUP_optic_Kobra",nil,15000 * _discount],
                        ["CUP_optic_PSO_1",nil,10000 * _discount],
                        ["CUP_optic_PSO_3",nil,10000 * _discount],
                        ["CUP_optic_LeupoldMk4_10x40_LRT_Desert",nil,40000 * _discount],
                        ["CUP_optic_SB_3_12x50_PMII",nil,35000 * _discount],
                        ["CUP_optic_SB_11_4x20_PM",nil,35000 * _discount],
                        ["CUP_optic_AN_PVS_10",nil,50000 * _discount],
                        ["CUP_optic_AN_PVS_4",nil,25000 * _discount],
                        ["CUP_optic_NSPU",nil,35000 * _discount],
                        ["optic_Arco",nil,15000 * _discount],
                        ["optic_Hamr",nil,15000 * _discount],
                        ["optic_MRCO",nil,20000 * _discount],
                        ["optic_DMS",nil,25000 * _discount],
                        ["optic_SOS",nil,30000 * _discount],
                        ["optic_NVS",nil,40000 * _discount],
                        ["optic_AMS_snd",nil,50000 * _discount],
                        ["optic_KHS_tan",nil,50000 * _discount],
                        ["bipod_01_F_snd",nil,25000 * _discount]
                    ]
                ];
            };
        };
    };

    case "reb_blk":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"You are not a civilian!"};
            case (!license_civ_rebel): {"You don't have a Rebel training license!"};
            default
            {
                ["Mohammed's Jihadi Shop",
                    [
                        ["CUP_glaunch_M79",nil,350000 * _discount],
                        ["CUP_glaunch_Mk13",nil,400000 * _discount],
                        ["CUP_1Rnd_HE_M203",nil,15000 * _discount],
                        ["CUP_1Rnd_HEDP_M203",nil,15000 * _discount],
                        ["CUP_6Rnd_HE_M203",nil,30000 * _discount],
                        ["CUP_launch_RPG7V",nil,350000 * _discount],
                        ["CUP_PG7V_M",nil,20000 * _discount],
                        ["CUP_launch_RPG18",nil,350000 * _discount],
                        ["CUP_RPG18_M",nil,20000 * _discount],
						["CUP_launch_Igla",nil,500000 * _discount],
						["CUP_Igla_M",nil,75000 * _discount],
                        ["CUP_glaunch_M32",nil,250000 * _discount],
                        ["CUP_srifle_M110",nil,150000 * _discount],
                        ["CUP_20Rnd_762x51_B_M110",nil,3000 * _discount],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,3000 * _discount],
                        ["V_HarnessOGL_brn","Suicide Vest",500000 * _discount],
                        ["CUP_lmg_Mk48_wdl_Aim_Laser",nil,300000 * _discount],
                        ["CUP_lmg_Mk48_des_Aim_Laser",nil,300000 * _discount],
                        ["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",nil,3000 * _discount],
                        ["CUP_lmg_UK59",nil,150000 * _discount],
                        ["CUP_50Rnd_UK59_762x54R_Tracer",nil,5000 * _discount],
                        ["SatchelCharge_Remote_Mag","IED",100000 * _discount],
						            ["IEDLandSmall_Remote_Mag","IED",100000 * _discount],
						            ["IEDUrbanSmall_Remote_Mag","IED",100000 * _discount]
                    ]
                ];
            };
        };
    };

    case "gun":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"You are not a civilian!"};
            case (!license_civ_gun): {"You don't have a Firearms license!"};
            default
            {
                ["Abu's Firearms",
                    [
                        ["CUP_hgun_MicroUzi",nil,12500 * _discount],
                        ["CUP_hgun_M9",nil,3500 * _discount],
                        ["CUP_hgun_Makarov",nil,3500 * _discount],
                        ["CUP_hgun_PB6P9_snds",nil,3500 * _discount],
                        ["CUP_hgun_TaurusTracker455",nil,6500 * _discount],
                        ["CUP_hgun_Glock17","Glock 17",4500 * _discount],
                        ["hgun_ACPC2_F",nil,4500 * _discount],
                        ["hgun_P07_F",nil,4000 * _discount],
                        ["CUP_15Rnd_9x19_M9",nil,25 * _discount],
                        ["CUP_8Rnd_9x18_Makarov_M",nil,25 * _discount],
                        ["CUP_30Rnd_9x19_UZI",nil,125 * _discount],
                        ["CUP_6Rnd_45ACP_M",nil,25 * _discount],
                        ["CUP_17Rnd_9x19_glock17",nil,50 * _discount],
                        ["9Rnd_45ACP_Mag",nil,50 * _discount],
                        ["16Rnd_9x21_Mag",nil,25 * _discount]
                    ]
                ];
            };
        };
    };

    case "genstore":
    {
        ["Altis General Store",
            [
                ["Binocular",nil,500 * _discount],
                ["ItemGPS",nil,500 * _discount],
                ["ToolKit",nil,250 * _discount],
                ["FirstAidKit",nil,100 * _discount],
                ["ItemMap",nil,100 * _discount],
                ["NVGoggles",nil,1200 * _discount],
				        ["CUP_NVG_PVS7",nil,2000 * _discount],
                ["MediKit",nil,10000 * _discount],
                ["tf_fadak","Fadak Radio (5km)",50 * _discount],
                ["tf_mr3000","MR3000 Long Range Radio (20km)",100 * _discount]
            ]
        ];
    };
};
