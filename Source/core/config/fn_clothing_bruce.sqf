/*
    File: fn_clothing_bruce.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
    //Uniforms
    case 0:
    {
        [
        ["U_C_Poloshirt_blue",nil,250],
        ["U_C_Poloshirt_burgundy",nil,250],
        ["U_C_Poloshirt_redwhite",nil,200],
        ["U_C_Poloshirt_salmon",nil,185],
        ["U_C_Poloshirt_stripped",nil,175],
        ["U_C_Poloshirt_tricolour",nil,250],
        ["U_C_Poor_2",nil,200],
        ["U_IG_Guerilla2_2",nil,300],
        ["U_IG_Guerilla3_1",nil,485],
        ["U_IG_Guerilla2_3",nil,250],
        ["U_C_HunterBody_grn",nil,800],
        ["U_C_WorkerCoveralls",nil,200],
        ["U_OrestesBody",nil,800],
        ["U_NikosAgedBody",nil,900],
        ["rds_uniform_assistant",nil,700],
        ["rds_uniform_citizen1",nil,275],
        ["rds_uniform_citizen2",nil,250],
        ["rds_uniform_citizen3",nil,275],
        ["rds_uniform_citizen4",nil,225],
        ["rds_uniform_doctor",nil,750],
        ["rds_uniform_Functionary1",nil,250],
        ["rds_uniform_Functionary2",nil,250],
        ["U_C_HunterBody_grn",nil,300],
        ["U_C_Journalist",nil,200],
        ["rds_uniform_priest",nil,1000],
        ["rds_uniform_Profiteer1",nil,400],
        ["rds_uniform_Profiteer2",nil,400],
        ["rds_uniform_Profiteer3",nil,400],
        ["rds_uniform_Profiteer4",nil,400],
        ["rds_uniform_schoolteacher",nil,650],
        ["TRYK_SUITS_BLK_F",nil,900],
        ["TRYK_SUITS_BR_F",nil,900],
        ["rds_uniform_Villager1",nil,300],
        ["rds_uniform_Villager2",nil,300],
        ["rds_uniform_Villager3",nil,300],
        ["rds_uniform_Villager4",nil,300],
        ["rds_uniform_Woodlander1",nil,400],
        ["rds_uniform_Villager1",nil,300],
        ["rds_uniform_Villager2",nil,300],
        ["rds_uniform_Villager3",nil,300],
        ["rds_uniform_Villager4",nil,300],
        ["rds_uniform_Woodlander1",nil,450],
        ["rds_uniform_Woodlander2",nil,450],
        ["rds_uniform_Woodlander3",nil,450],
        ["rds_uniform_Woodlander4",nil,450],
        ["rds_uniform_Worker1",nil,380],
        ["rds_uniform_Worker2",nil,380],
        ["rds_uniform_Worker3",nil,380],
        ["rds_uniform_Worker4",nil,380]
        ];
    };

    //Hats
    case 1:
    {
        [
            ["H_Bandanna_camo",nil,120],
            ["H_Bandanna_surfer",nil,130],
            ["H_Bandanna_gry",nil,150],
            ["H_Bandanna_cbr",nil,165],
            ["H_Bandanna_surfer",nil,135],
            ["H_Bandanna_khk",nil,145],
            ["H_Bandanna_sgg",nil,160],
            ["H_StrawHat",nil,225],
            ["H_BandMask_blk",nil,300],
            ["H_Booniehat_tan",nil,425],
            ["H_Hat_blue",nil,310],
            ["H_Hat_brown",nil,276],
            ["H_Hat_checker",nil,340],
            ["H_Hat_grey",nil,280],
            ["H_Hat_tan",nil,265],
            ["H_Cap_blu",nil,150],
            ["H_Cap_grn",nil,150],
            ["H_Cap_grn_BI",nil,150],
            ["H_Cap_oli",nil,150],
            ["H_Cap_red",nil,150],
            ["H_Cap_tan",nil,150],
            ["rds_worker_cap4",nil,276],
            ["rds_worker_cap3",nil,340],
            ["rds_worker_cap2",nil,280],
            ["rds_Villager_cap4",nil,265],
            ["rds_Villager_cap3",nil,150],
            ["rds_Villager_cap2",nil,150],
            ["rds_Villager_cap1",nil,150],
            ["TRYK_H_pakol",nil,150],
            ["TRYK_H_pakol2",nil,150],
            ["CUP_H_USMC_Officer_Cap",nil,276],
            ["CUP_H_FR_BandanaGreen",nil,340],
            ["rds_Profiteer_cap2",nil,280],
            ["rds_Profiteer_cap1",nil,265],
            ["rds_Profiteer_cap3",nil,150],
            ["rds_Profiteer_cap4",nil,150]
        ];
    };

    //Glasses
    case 2:
    {
        [
            ["G_Shades_Black",nil,25],
            ["G_Shades_Blue",nil,20],
            ["G_Sport_Blackred",nil,20],
            ["G_Sport_Checkered",nil,20],
            ["G_Sport_Blackyellow",nil,20],
            ["G_Sport_BlackWhite",nil,20],
            ["G_Squares",nil,10],
            ["G_Aviator",nil,100],
            ["G_Lady_Mirror",nil,150],
            ["G_Lady_Dark",nil,150],
            ["G_Lady_Blue",nil,150],
            ["G_Lowprofile",nil,30],
            ["G_Combat",nil,55],
            ["TRYK_Shemagh_mesh",nil,25],
            ["TRYK_Shemagh_G",nil,20],
            ["TRYK_Shemagh",nil,20],
            ["TRYK_Shemagh_WH",nil,20],
            ["CUP_TK_NeckScarf",nil,20],
            ["CUP_FR_NeckScarf",nil,20],
            ["CUP_FR_NeckScarf2",nil,10]
        ];
    };

    //Vest
    case 3:
    {
        [
        ["TRYK_V_Bulletproof_BL",nil,750],
        ["TRYK_V_Bulletproof_BLK",nil,750],
        ["TRYK_V_Bulletproof",nil,750],
        ["V_Press_F",nil,600]
        ];
    };

    //Backpacks
    case 4:
    {
        [
            ["B_AssaultPack_cbr",nil,2500],
            ["B_Kitbag_mcamo",nil,4500],
            ["B_TacticalPack_oli",nil,3500],
            ["B_FieldPack_ocamo",nil,3000],
            ["B_Bergen_sgg",nil,4500],
            ["B_Kitbag_cbr",nil,4500],
            ["B_Carryall_oli",nil,5000],
            ["B_Carryall_khk",nil,5000]
        ];
    };
};
