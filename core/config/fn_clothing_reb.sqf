/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["TRYK_ZARATAKI3",nil,5000],
			["TRYK_ZARATAKI2",nil,7500],
			["TRYK_ZARATAKI",nil,11500],
			["TRYK_U_taki_G_COY",nil,17500],
			["TRYK_U_taki_G_BL",nil,15610],
			["TRYK_U_taki_wh","Guerilla Leader",15340],
			["TRYK_U_taki_COY",nil,50000],
			["TRYK_U_taki_BLK",nil,50000],
			["TRYK_U_taki_BL",nil,50000],
			["TRYK_T_PAD",nil,50000],
			["TRYK_U_B_GRTANR_CombatUniformTshirt",nil,50000],
			["TRYK_U_B_GRTAN_CombatUniform",nil,50000],
			["TRYK_U_B_3CD_Delta_BDUTshirt",nil,50000],
			["TRYK_U_B_3CD_Delta_BDU",nil,50000],
			["TRYK_U_B_ODTAN",nil,50000],
			["TRYK_U_B_3c",nil,50000],
			["TRYK_U_B_3cr",nil,50000],
			["TRYK_U_B_BLTAN_T",nil,50000],
			["TRYK_U_B_BLKTANR_CombatUniformTshirt",nil,50000],
			["TRYK_U_B_BLKTAN_CombatUniform",nil,50000],
			["TRYK_DMARPAT_T",nil,50000],
			["TRYK_U_B_ARO1_CBR_R_CombatUniform",nil,50000],
			["TRYK_U_B_ARO1_CBR_CombatUniform",nil,50000],
			["CUP_U_O_TK_MixedCamo",nil,50000],
			["CUP_U_O_TK_Green",nil,50000],
			["CUP_U_O_TK_Ghillie_Top",nil,50000],
			["CUP_U_O_TK_Ghillie",nil,50000]
		];
	};

	//Hats
	case 1:
	{
		[
			["H_ShemagOpen_tan",nil,850],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["H_HelmetO_ocamo",nil,2500],
			["H_MilCap_oucamo",nil,1200],
			["H_Shemag_olive_hs",nil,650],
			["H_ShemagOpen_khk",nil,650],
			["TRYK_H_pakol2",nil,650],
			["TRYK_H_pakol",nil,650],
			["CUP_H_TK_Lungee",nil,650]
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
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["SAS_shemagh_OD",nil,55],
			["SAS_shemagh_Tan",nil,55],
			["SAS_shemagh_White",nil,55],
			["PU_shemagh_WhiteO",nil,55],
			["PU_shemagh_TanO",nil,55],
			["PU_shemagh_ODO",nil,55],
			["PU_shemagh_GryO",nil,55],
			["PU_shemagh_WhiteCLR",nil,55],
			["PU_shemagh_TanCLR",nil,55],
			["PU_shemagh_ODCLR",nil,55],
			["PU_shemagh_GryCLR",nil,55],
			["PU_shemagh_WhiteBLK",nil,55],
			["PU_shemagh_TanBLK",nil,55],
			["PU_shemagh_ODBLK",nil,55],
			["PU_shemagh_GryBLK",nil,55],
			["PU_shemagh_White",nil,55],
			["PU_shemagh_Tan",nil,55],
			["PU_shemagh_OD",nil,55],
			["Balaclava_Black",nil,55],
			["Balaclava_GRY",nil,55],
			["Balaclava_OD",nil,55],
			["TRYK_kio_balaclavas",nil,55],
			["Mask_M40",nil,55],
			["Mask_M40_OD",nil,55],
			["Mask_M50",nil,55]
		];
	};

	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,12500],
			["V_BandollierB_cbr",nil,4500],
			["V_Chestrig_khk",nil,7500],
			["CUP_V_B_GER_Carrier_Vest",nil,7500],
			["CUP_V_B_GER_Carrier_Rig",nil,7500],
			["TRYK_LOC_AK_chestrig_TAN",nil,7500],
			["CUP_V_B_RRV_MG",nil,7500],
			["TRYK_V_Sheriff_BA_TCL",nil,7500],
			["TRYK_V_tacv1_CY",nil,7500],
			["TRYK_V_tacv1LC_CY",nil,7500],
			["V_TacVest_brn",nil,7500],
			["V_TacVest_khk",nil,7500],
			["CUP_V_O_TK_Vest_1",nil,7500],
			["TRYK_V_ArmorVest_khk2",nil,7500],
			["TRYK_V_harnes_TAN_L",nil,7500]
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
