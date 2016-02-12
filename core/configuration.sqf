#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 2; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gathering = false;
life_god = false; //Add this
life_frozen = false; //And this
life_markers = false; //Finally this
life_fadeSound = false; //Ear Pugs Defalt Is false. PS Tom Is Annoying Me

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,5000); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,2); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,500);
__CONST__(life_impound_boat,250);
__CONST__(life_impound_air,1500);
__CONST__(life_impound_tank,2000);
life_istazed = false;
life_my_gang = ObjNull;
life_onduty = false;
life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west:
	{
		life_atmcash = 7000; //Starting Bank Money
		life_paycheck = 5000; //Paycheck Amount
	};
	case civilian:
	{
		life_atmcash = 50000; //Starting Bank Money
		life_paycheck = 2000; //Paycheck Amount
	};

	case independent: {
		life_atmcash = 6500;
		life_paycheck = 3000;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = 	[];

__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items =
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_jawsoflife",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_passport","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["marijuana",2000],["turtle",3000],["blastingcharge",10000],["boltcutter",500]];


/*
	Sell / buy arrays
*/
sell_array =
[
	["apple",50],
	["heroinu",1300],
	["heroinp",2200],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["oilp",3200],
	["turtle",2000],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",1350],
	["tbacon",25],
	["lockpick",75],
	["jawsoflife",75],
	["pickaxe",750],
	["redgull",200],
	["peach",55],
	["cocaine",1500],
	["cocainep",3000],
	["diamond",750],
	["diamondc",2000],
	["iron_r",2400],
	["copper_r",1400],
	["salt_r",1250],
	["glass",1350],
	["fuelF",500],
	["spikeStrip",1200],
	["cement",1650],
	["goldbar",85000]
];


buy_array =
[
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",4000],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",150],
	["jawsoflife",150],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],
	["peach",68],
	["spikeStrip",2500],
	["blastingcharge",35000],
	["boltcutter",7500],
	["defusekit",2500]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",980],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",500],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["C_Offroad_01_F",1000],
	["RDS_S1203_Civ_02",1000],
	["I_Truck_02_medical_F",1000],
	["O_Truck_03_medical_F",1000],
	["B_Truck_01_medical_F",1000],
	["CUP_I_M113_Med_RACS",1000],
	["CUP_O_BMP2_AMB_RU",1000],
	["B_Heli_Light_01_F",1000],
	["CUP_B_UH1Y_MEV_USMC",1000],
	["B_Quadbike_01_F",1000],
	["C_Hatchback_01_F",1000],
	["C_SUV_01_F",1000],
	["CUP_C_Datsun",1000],
	["C_Van_01_transport_F",1000],
	["CUP_C_Datsun_4seat",1000],
	["CUP_C_Datsun_Covered",1000],
	["CUP_C_LR_Transport_CTK",1000],
	["CUP_C_SUV_TK",1000],
	["CUP_C_UAZ_Unarmed_TK_CIV",1000],
	["RDS_Lada_Civ_02",1000],
	["RDS_Gaz24_Civ_03",1000],
	["RDS_Gaz24_Civ_01",1000],
	["RDS_Gaz24_Civ_02",1000],
	["RDS_Golf4_Civ_01",1000],
	["RDS_S1203_Civ_01",1000],
	["RDS_Octavia_Civ_01",1000],
	["RDS_Lada_Civ_04",1000],
	["RDS_Lada_Civ_01",1000],
	["C_Van_01_transport_F",1000],
	["C_Van_01_box_F",1000],
	["I_Truck_02_transport_F",1000],
	["I_Truck_02_covered_F",1000],
	["CUP_C_Ural_Open_Civ_02",1000],
	["CUP_C_Ural_Civ_02",1000],
	["CUP_C_Ural_Open_Civ_03",1000],
	["CUP_C_Ural_Civ_03",1000],
	["CUP_C_Ural_Open_Civ_01",1000],
	["O_Truck_03_transport_F",1000],
	["O_Truck_03_covered_F",1000],
	["B_Truck_01_transport_F",1000],
	["B_Truck_01_covered_F",1000],
	["B_Truck_01_box_F",1000],
	["O_Truck_03_device_F",1000],
	["I_G_Offroad_01_F",1000],
	["O_G_Offroad_01_F",1000],
	["CUP_I_Datsun_PK",1000],
	["CUP_B_M1030",1000],
	["O_G_Offroad_01_armed_F",1000],
	["CUP_D_UAZ_MG_CHDKZ",1000],
	["CUP_B_LR_MG_GB_W",1000],
	["CUP_O_Ural_Open_CHDKZ",1000],
	["CUP_O_Ural_CHDKZ",1000],
	["C_Offroad_01_F",1000],
	["RDS_Lada_Civ_05",1000],
	["C_SUV_01_F",1000],
	["CUP_C_SUV_CIV",1000],
	["CUP_B_HMMWV_Unarmed_USA",1000],
	["CUP_B_HMMWV_Transport_USA",1000],
	["CUP_I_SUV_Armored_ION",1000],
	["CUP_B_LR_Transport_GB_D",1000],
	["CUP_B_Dingo_Des",1000],
	["CUP_B_HMMWV_M2_GPK_ACR",1000],
	["CUP_BAF_Jackal2_L2A1_D",1000],
	["CUP_O_Ural_SLA",1000],
	["CUP_B_M2A3Bradley_USA_D",1000],
	["CUP_B_M1A2_TUSK_MG_DES_US_Army",1000],
	["B_Heli_Light_01_F",1000],
	["O_Heli_Light_02_unarmed_F",1000],
	["O_Heli_Transport_04_black_F",1000],
	["O_Heli_Transport_04_box_F",1000],
	["CUP_C_Mi17_Civilian_RU",1000],
	["B_Heli_Transport_03_unarmed_F",1000],
	["CUP_Merlin_HC3",1000],
	["CUP_C_MI6A_RU",1000],
	["CUP_C_DC3_CIV",1000],
	["B_Heli_Light_01_stripped_F",1000],
	["O_Heli_Light_02_unarmed_F",1000],
	["CUP_B_AW159_Unarmed_BAF",1000],
	["CUP_B_UH1Y_UNA_F",1000],
	["CUP_B_UH1Y_GUNSHIP_F",1000],
	["CUP_B_C130J_USMC",1000],
	["CUP_B_MH60S_FFV_USMC",1000],
	["CUP_B_MV22_USMC",1000],
	["CUP_B_CH53E_USMC",1000],
	["C_Heli_light_01_ion_F",1000],
	["C_Rubberboat",1000],
	["C_Boat_Civil_01_F",1000]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Heli_Light_01_armed_F",175000],
	["CUP_O_Mi17_TK",250000],
	["O_Heli_Light_02_F",1000000],
	["CUP_O_Mi24_P_RU",1000000],
	["CUP_O_BMP2_CHDKZ",450000],
	["CUP_O_BRDM2_CHDKZ",400000],
	["CUP_O_T72_CHDKZ",1250000],
	["CUP_O_T55_TK",750000],
	["CUP_I_T34_NAPA",500000],
	["CUP_O_Ural_ZU23_CHDKZ",127000],
	["CUP_O_BRDM2_HQ_CHDKZ",277000],
	["CUP_O_Ka50_SLA",1250000],
	["CUP_O_UH1H_TKA",250000],
	["CUP_B_SA330_Puma_HC1_BAF",250000],
	["CUP_B_SA330_Puma_HC2_BAF",250000],
	["C_Offroad_01_F",2500],
	["CUP_O_UAZ_SPG9_CHDKZ",75000],
	["CUP_RG31_M2_OD",165000],
	["RDS_S1203_Civ_02",1500],
	["I_Truck_02_medical_F",7500],
	["O_Truck_03_medical_F",7500],
	["B_Truck_01_medical_F",12500],
	["CUP_I_M113_Med_RACS",75000],
	["CUP_O_BMP2_AMB_RU",90000],
	["B_Heli_Light_01_F",5000],
	["CUP_B_UH1Y_MEV_USMC",40000],
	["B_Quadbike_01_F",750],
	["C_Hatchback_01_F",1750],
	["C_SUV_01_F",17500],
	["CUP_C_Datsun",4500],
	["C_Van_01_transport_F",20000],
	["CUP_C_Datsun_4seat",4000],
	["CUP_C_Datsun_Covered",4000],
	["CUP_C_LR_Transport_CTK",2000],
	["CUP_C_SUV_TK",17500],
	["CUP_C_UAZ_Unarmed_TK_CIV",7500],
	["RDS_Lada_Civ_02",2500],
	["RDS_Gaz24_Civ_03",3250],
	["RDS_Gaz24_Civ_01",3250],
	["RDS_Gaz24_Civ_02",3250],
	["RDS_Golf4_Civ_01",4500],
	["RDS_S1203_Civ_01",2250],
	["RDS_Octavia_Civ_01",10000],
	["RDS_Lada_Civ_04",3000],
	["RDS_Lada_Civ_01",2500],
	["C_Van_01_transport_F",20000],
	["C_Van_01_box_F",25500],
	["I_Truck_02_transport_F",125000],
	["I_Truck_02_covered_F",175000],
	["CUP_C_Ural_Open_Civ_02",177000],
	["CUP_C_Ural_Civ_02",177000],
	["CUP_C_Ural_Open_Civ_03",177500],
	["CUP_C_Ural_Civ_03",177500],
	["CUP_C_Ural_Open_Civ_01",177500],
	["O_Truck_03_transport_F",200000],
	["O_Truck_03_covered_F",210000],
	["B_Truck_01_transport_F",225000],
	["B_Truck_01_covered_F",237500],
	["B_Truck_01_box_F",325000],
	["O_Truck_03_device_F",275000],
	["I_G_Offroad_01_F",5500],
	["O_G_Offroad_01_F",5500],
	["CUP_I_Datsun_PK",50000],
	["CUP_B_M1030",500],
	["O_G_Offroad_01_armed_F",125000],
	["CUP_D_UAZ_MG_CHDKZ",190000],
	["CUP_B_LR_MG_GB_W",125000],
	["CUP_O_Ural_Open_CHDKZ",100000],
	["CUP_O_Ural_CHDKZ",10000],
	["C_Offroad_01_F",5000],
	["RDS_Lada_Civ_05",5000],
	["C_SUV_01_F",20000],
	["CUP_C_SUV_CIV",20000],
	["CUP_B_HMMWV_Unarmed_USA",2000],
	["CUP_B_HMMWV_Transport_USA",2000],
	["CUP_I_SUV_Armored_ION",2000],
	["CUP_B_LR_Transport_GB_D",10000],
	["CUP_B_Dingo_Des",2000],
	["CUP_B_HMMWV_M2_GPK_ACR",5000],
	["CUP_BAF_Jackal2_L2A1_D",15000],
	["CUP_O_Ural_SLA",125000],
	["CUP_B_M2A3Bradley_USA_D",290000],
	["CUP_B_M1A2_TUSK_MG_DES_US_Army",125000],
	["B_Heli_Light_01_F",125000],
	["O_Heli_Light_02_unarmed_F",200000],
	["O_Heli_Transport_04_black_F",175000],
	["O_Heli_Transport_04_box_F",225000],
	["CUP_C_Mi17_Civilian_RU",390000],
	["B_Heli_Transport_03_unarmed_F",375000],
	["CUP_Merlin_HC3",350000],
	["CUP_C_MI6A_RU",1500000],
	["CUP_C_DC3_CIV",325000],
	["B_Heli_Light_01_stripped_F",50000],
	["O_Heli_Light_02_unarmed_F",45000],
	["CUP_B_AW159_Unarmed_BAF",90000],
	["CUP_B_UH1Y_UNA_F",125000],
	["CUP_B_UH1Y_GUNSHIP_F",125000],
	["CUP_B_C130J_USMC",350000],
	["CUP_B_MH60S_FFV_USMC",90000],
	["CUP_B_MV22_USMC",140000],
	["CUP_B_CH53E_USMC",225000],
	["C_Heli_light_01_ion_F",45000],
	["C_Rubberboat",2500],
	["C_Boat_Civil_01_F",10000],
	["Jonzie_Superliner",450000]
];
__CONST__(life_garage_sell,life_garage_sell);
