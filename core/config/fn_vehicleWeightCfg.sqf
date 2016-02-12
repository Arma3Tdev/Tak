/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
		case "Jonzie_Ute": {100}; //Civ Car
    case "Jonzie_VE": {100}; //Civ Car
    case "Jonzie_Corolla": {60}; //Civ Car
    case "Jonzie_Ceed": {60}; //Civ Car
    case "Jonzie_30CSL": {60}; //Civ Car
    case "Jonzie_Datsun_510": {70}; //Civ Car
    case "Jonzie_Datsun_Z432": {30}; //Civ Car
    case "Jonzie_Escalade": {100}; //Civ Car
    case "Jonzie_Galant": {40}; //Civ Car
    case "Jonzie_Raptor": {100}; //Civ Car
    case "Jonzie_Transit": {100}; //Civ Car
    case "Jonzie_Forklift": {5}; //Civ Car
    case "Jonzie_Viper": {10}; //Civ Car
    case "Jonzie_Box_Truck": {150}; //Civ Car
    case "Jonzie_Superliner": {10}; //Civ Car
    case "Jonzie_Curtain_Roadtrain": {450}; //Civ Car
    case "Jonzie_Flatbed_Roadtrain": {450}; //Civ Car
    case "Jonzie_Flatbed": {450}; //Civ Car
		case "CUP_C_Datsun": {50}; //Civ Car
    case "CUP_C_Datsun_4seat": {50}; //Civ Car
    case "CUP_C_Datsun_Covered": {50}; //Civ Car
    case "CUP_C_Datsun_Plain": {50}; //Civ Car
    case "CUP_C_LR_Transport_CTK": {80}; //Civ Car
    case "CUP_C_SUV_TK": {80}; //Civ Car
    case "CUP_C_UAZ_Unarmed_TK_CIV": {50}; //Civ Car
    case "RDS_Lada_Civ_02": {30}; //Civ Car
    case "RDS_Gaz24_Civ_03": {30}; //Civ Car
    case "RDS_Gaz24_Civ_01": {30}; //Civ Car
    case "RDS_Gaz24_Civ_02": {30}; //Civ Car
    case "RDS_Golf4_Civ_01": {30}; //Civ Car
    case "RDS_S1203_Civ_01": {30}; //Civ Car
    case "RDS_Octavia_Civ_01": {30}; //Civ Car
    case "RDS_Lada_Civ_04": {30}; //Civ Car
    case "RDS_Lada_Civ_01": {30}; //Civ Car
    case "RDS_Lada_Civ_02": {30}; //Civ Car
    case "RDS_S1203_Civ_01": {30}; //Civ Car
    case "CUP_C_Ural_Open_Civ_02": {260}; //Civ Truck
    case "CUP_C_Ural_Civ_02": {265}; //Civ Truck
    case "CUP_C_Ural_Open_Civ_03": {260}; //Civ Truck
    case "CUP_C_Ural_Civ_03": {265}; //Civ Truck
    case "CUP_C_Ural_Open_Civ_01": {260}; //Civ Truck
    case "B_Truck_01_covered_F": {350}; //Civ Truck
		case "I_Truck_02_covered_F": {250};
		case "I_Truck_02_transport_F": {200};
		case "B_Truck_01_box_F": {650};
		case "B_Truck_01_transport_F": {325};
		case "O_Truck_03_transport_F": {285};
		case "O_Truck_03_covered_F": {400};
		case "O_Truck_03_device_F": {500};
    case "I_G_Offroad_01_F": {65}; //Terrorist Car
    case "O_G_Offroad_01_F": {65}; //Terrorist Car
    case "CUP_I_Datsun_PK": {50}; //Terrorist Car
    case "CUP_B_M1030": {5}; //Terrorist Car
    case "B_G_Offroad_01_armed_F": {50}; //Terrorist Car
    case "CUP_D_UAZ_MG_CHDKZ": {50}; //Terrorist Car
    case "CUP_B_LR_MG_GB_W": {65}; //Terrorist Car
    case "CUP_O_Ural_Open_CHDKZ": {125}; //Terrorist Car
    case "CUP_O_Ural_CHDKZ": {150}; //Terrorist Car
    case "RDS_Lada_Civ_05": {65}; //TPF Car
    case "CUP_C_SUV_CIV": {65}; //TPF Car
    case "CUP_B_HMMWV_Unarmed_USA": {65}; //TPF Car
    case "CUP_B_HMMWV_Transport_USA": {65}; //TPF Car
    case "CUP_I_SUV_Armored_ION": {65}; //TPF Car
    case "CUP_B_LR_Transport_GB_D": {65}; //TPF Car
    case "CUP_B_Dingo_Des": {65}; //TPF Car
    case "CUP_B_HMMWV_M2_GPK_ACR": {65}; //NATO Car
    case "CUP_BAF_Jackal2_L2A1_D": {65}; //NATO Car
    case "CUP_O_Ural_SLA": {150}; //NATO Car
    case "CUP_B_M2A3Bradley_USA_D": {65}; //NATO Car
    case "CUP_B_M1A2_TUSK_MG_DES_US_Army": {65}; //NATO Car
    case "CUP_B_BRDM2_HQ_CDF": {65}; //NATO Car
    case "O_Heli_Transport_04_black_F": {55}; //Civ Heli
    case "O_Heli_Transport_04_box_F": {200}; //Civ Heli
    case "CUP_C_Mi17_Civilian_RU": {200}; //Civ Heli
    case "B_Heli_Transport_03_unarmed_F": {200}; //Civ Heli
    case "CUP_Merlin_HC3": {275}; //Civ Heli
    case "CUP_C_MI6A_RU": {400}; //Civ Heli
    case "CUP_C_DC3_CIV": {280}; //Civ Heli
    case "B_Heli_Light_01_stripped_F": {25}; //Police Heli
    case "CUP_B_AW159_Unarmed_BAF": {25}; //Police Heli
    case "CUP_B_UH1Y_UNA_F": {25}; //Police Heli
    case "CUP_B_UH1Y_GUNSHIP_F": {25}; //Police Heli
    case "CUP_B_C130J_USMC": {25}; //Police Heli
    case "CUP_B_MH60S_FFV_USMC": {25}; //Police Heli
    case "CUP_B_MV22_USMC": {25}; //Police Heli
    case "CUP_B_CH53E_USMC": {25}; //Police Heli
    case "C_Heli_light_01_ion_F": {25}; //Police Heli
    case "B_Heli_Light_01_armed_F": {10}; //Blackmarket
    case "CUP_B_Mi17_CDF": {10}; //Blackmarket
    case "D_Heli_Light_02_F": {10}; //Blackmarket
    case "CUP_O_Mi24_P_RU": {10}; //Blackmarket
    case "CUP_O_BMP2_CHDKZ": {10}; //Blackmarket
    case "CUP_O_BRDM2_CHDKZ": {10}; //Blackmarket
    case "CUP_O_T72_CHDKZ": {10}; //Blackmarket
    case "CUP_O_Ural_ZU23_CHDKZ": {10}; //Blackmarket
    case "CUP_O_BRDM2_HQ_CHDKZ": {10}; //Blackmarket
    case "C_Offroad_01_F": {65};
    case "B_G_Offroad_01_F": {65};
    case "B_Quadbike_01_F": {25};
    case "C_Hatchback_01_F": {40};
    case "C_Hatchback_01_sport_F": {45};
    case "C_SUV_01_F": {50};
    case "C_Van_01_transport_F": {100};
    case "I_G_Van_01_transport_F": {100};
    case "C_Van_01_box_F": {150};
    case "C_Boat_Civil_01_F": {85};
    case "C_Boat_Civil_01_police_F": {85};
    case "C_Boat_Civil_01_rescue_F": {85};
    case "B_MRAP_01_F": {65};
    case "O_MRAP_02_F": {60};
    case "I_MRAP_03_F": {58};
    case "B_Heli_Light_01_F": {90};
    case "O_Heli_Light_02_unarmed_F": {210};
    case "I_Heli_Transport_02_F": {375};
    case "C_Rubberboat": {45};
    case "O_Boat_Armed_01_hmg_F": {175};
    case "B_Boat_Armed_01_minigun_F": {175};
    case "I_Boat_Armed_01_minigun_F": {175};
    case "B_G_Boat_Transport_01_F": {45};
    case "B_Boat_Transport_01_F": {45};
    case "Land_CargoBox_V1_F": {5000};
    case "Box_IND_Grenades_F": {350};
    case "B_supplyCrate_F": {700};
	default {-1};
};
