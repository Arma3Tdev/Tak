#include <macro.h>
/*
    File:
    Author: Bryan "Tonic" Boardwine
    Description:
    Master configuration list / array for buyable vehicles & prices and their shop.
    _veh = createVehicle ["Jonzie_XB",position player,[],0,"NONE"];
*/

private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
    case "med_shop":
    {
        _return = [
            ["Jonzie_Ambulance",5000],
            ["C_Offroad_01_F",5000],
            ["RDS_S1203_Civ_02",3000],
            ["I_Truck_02_medical_F",15000],
            ["O_Truck_03_medical_F",15000],
            ["B_Truck_01_medical_F",25000]
        ];
    };

    case "med_air_hs": {
        _return = [
            ["B_Heli_Light_01_F",10000],
            ["CUP_B_UH1Y_MEV_USMC",80000]
        ];
    };

    case "civ_car":
    {
        _return = [
            ["Jonzie_Raptor",95000],
            ["Jonzie_Transit",85000],
            ["Jonzie_Datsun_510",4500],
            ["Jonzie_Datsun_Z432",20000],
            ["Jonzie_Escalade",6000],
            ["Jonzie_Ute",80000],
            ["Jonzie_VE",60000],
            ["Jonzie_XB",60000],
            ["Jonzie_Corolla",15000],
            ["Jonzie_Ceed",20000],
            ["Jonzie_30CSL",15000],
            ["Jonzie_Datsun_510",15000],
            ["Jonzie_Datsun_Z432",50000],
            ["Jonzie_Galant",30000],
            ["Jonzie_Viper",200000],
			["Jonzie_Quattroporte",400000],
			["Jonzie_STI",400000],
            ["B_Quadbike_01_F",1500],
            ["C_Hatchback_01_F",3500],
            ["C_Offroad_01_F",10500],
            ["C_SUV_01_F",35000],
            ["CUP_C_Datsun",9000],
            ["C_Van_01_transport_F",40000],
            ["CUP_C_Datsun_4seat",8000],
            ["CUP_C_Datsun_Covered",8000],
            ["CUP_C_LR_Transport_CTK",40000],
            ["CUP_C_SUV_TK",35000],
            ["CUP_C_UAZ_Unarmed_TK_CIV",15000],
            ["RDS_Lada_Civ_02",5000],
            ["RDS_Gaz24_Civ_03",6500],
            ["RDS_Gaz24_Civ_01",6500],
            ["RDS_Gaz24_Civ_02",6500],
            ["RDS_Golf4_Civ_01",9000],
            ["RDS_S1203_Civ_01",4500],
            ["RDS_Octavia_Civ_01",20000],
            ["RDS_Lada_Civ_04",6000],
            ["RDS_Lada_Civ_01",5000]
        ];
    };

    case "civ_truck":
    {
        _return = [
            ["C_Van_01_transport_F",40000],
            ["C_Van_01_box_F",55000],
            ["I_Truck_02_transport_F",275000],
            ["I_Truck_02_covered_F",350000],
            ["CUP_C_Ural_Open_Civ_02",355000],
            ["CUP_C_Ural_Civ_02",355000],
            ["CUP_C_Ural_Open_Civ_03",355000],
            ["CUP_C_Ural_Civ_03",355000],
            ["CUP_C_Ural_Open_Civ_01",355000],
            ["O_Truck_03_transport_F",400000],
            ["O_Truck_03_covered_F",420000],
            ["B_Truck_01_transport_F",450000],
            ["B_Truck_01_covered_F",475000],
            ["B_Truck_01_box_F",650000],
            ["O_Truck_03_device_F",550000],
            ["Jonzie_Box_Truck",98000],
            ["Jonzie_Superliner",900000],
            ["Jonzie_Flatbed_Roadtrain",500000],
            ["Jonzie_Flatbed",900000],
            ["Jonzie_Curtain_Roadtrain",500000]
        ];
    };

    case "reb_car":
    {
        _return = [
            ["B_Quadbike_01_F",1500],
            ["I_G_Offroad_01_F",10500],
            ["CUP_I_Datsun_PK",100000],
            ["CUP_B_M1030",1000],
            ["CUP_D_UAZ_MG_CHDKZ",380000],
            ["CUP_B_LR_MG_GB_W",150000],
            ["CUP_O_Ural_Open_CHDKZ",200000],
            ["CUP_O_Ural_CHDKZ",200000],
      		["CUP_RG31_M2_OD",375000],
      		["CUP_O_UAZ_SPG9_CHDKZ",150000]
        ];
    };

    case "cop_car":
    {
        _return = [
            ["C_Offroad_01_F",5000],
            ["RDS_Lada_Civ_05",5000],
            ["Jonzie_Highway",15000],
            ["C_SUV_01_F",20000],
            ["CUP_C_SUV_CIV",20000],
            ["CUP_I_SUV_Armored_ION",5000],
            ["CUP_B_LR_Transport_GB_D",5000],
            ["CUP_B_Dingo_CZ_Wdl",20000]
        ];
    if(__GETC__(life_coplevel) > 8) then {
        _return = [
			["CUP_B_HMMWV_Unarmed_USA",5000],
			["B_UGV_01_F",5000],
			["CUP_B_HMMWV_Transport_USA",10000],
			["CUP_B_HMMWV_M2_GPK_ACR",15000],
			["CUP_RG31_M2",15000],
			["CUP_RG31E_M2",20000],
			["CUP_BAF_Jackal2_L2A1_D",30000],
			["CUP_O_Ural_SLA",15000],
			["MTVR_DES_EP1",15000],
			["CUP_B_BRDM2_HQ_CDF",180000]
            ];
        };
	if(__GETC__(life_coplevel) > 13) then {
        _return = [
            ["CUP_B_M2A3Bradley_USA_D",500000],
            ["CUP_B_M1A2_TUSK_MG_DES_US_Army",500000],
            ["CUP_B_HMMWV_Unarmed_USA",5000],
            ["B_UGV_01_F",5000],
            ["CUP_B_HMMWV_Transport_USA",10000],
            ["CUP_B_HMMWV_M2_GPK_ACR",15000],
            ["CUP_RG31_M2",15000],
            ["CUP_RG31E_M2",20000],
            ["CUP_BAF_Jackal2_L2A1_D",30000],
            ["CUP_O_Ural_SLA",15000]
                ];
            };
          };

    case "civ_air":
    {
        _return = [
            ["B_Heli_Light_01_F",250000],
            ["C_Heli_light_01_digital_F",250000],
            ["B_Heli_Light_01_stripped_F",250000],
            ["O_Heli_Light_02_unarmed_F",500000],
            ["O_Heli_Transport_04_black_F",355000],
            ["O_Heli_Transport_04_box_F",550000],
            ["CUP_C_Mi17_Civilian_RU",680000],
            ["B_Heli_Transport_03_unarmed_F",750000],
            ["CUP_Merlin_HC3",700000],
            ["CUP_C_DC3_CIV",650000]
        ];
    };

    case "cop_air":
    {
        _return = [
            ["B_Heli_Light_01_stripped_F",100000],
            ["O_Heli_Light_02_unarmed_F",90000],
            ["CUP_B_AW159_Unarmed_BAF",150000]
        ];

        if(__GETC__(life_coplevel) > 8) then {
            _return = [
                ["CUP_B_UH1Y_UNA_F",155000],
                ["CUP_B_UH1Y_GUNSHIP_F",250000],
                ["CUP_B_AH1Z",250000],
                ["CUP_B_C130J_USMC",700000],
                ["CUP_B_MH60S_FFV_USMC",150000],
                ["CUP_B_MV22_USMC",280000],
                ["CUP_B_CH53E_USMC",450000],
                ["C_Heli_light_01_ion_F",90000]
            ];
        };
		if(__GETC__(life_coplevel) > 8) then {
            _return = [
                ["CUP_B_UH1Y_UNA_F",155000],
                ["CUP_B_UH1Y_GUNSHIP_F",250000],
                ["CUP_B_AH1Z",250000],
                ["CUP_B_C130J_USMC",700000],
                ["CUP_B_MH60S_FFV_USMC",150000],
                ["CUP_B_MV22_USMC",280000],
                ["CUP_B_CH53E_USMC",450000],
                ["C_Heli_light_01_ion_F",90000],
                ["B_Heli_Light_01_stripped_F",140000],
                ["CUP_B_UH1Y_UNA_F",153000],
                ["CUP_B_C130J_USMC",700000],
                ["CUP_B_MV22_USMC",280000],
                ["CUP_B_CH53E_USMC",450000],
                ["C_Heli_light_01_ion_F",90000]
			];
		};
		if(__GETC__(life_coplevel) > 13) then {
            _return = [
                ["CUP_B_UH1Y_UNA_F",153000],
                ["CUP_B_UH1Y_GUNSHIP_F",250000],
                ["CUP_B_AH1Z",250000],
                ["CUP_B_C130J_USMC",700000],
                ["CUP_B_MH60S_FFV_USMC",150000],
                ["CUP_B_MV22_USMC",280000],
                ["CUP_B_CH53E_USMC",450000],
                ["B_Heli_Light_01_stripped_F",140000],
                ["CUP_B_UH1Y_UNA_F",153000],
                ["CUP_B_C130J_USMC",200000],
                ["CUP_B_MV22_USMC",280000],
                ["CUP_B_CH53E_USMC",450000],
                ["C_Heli_light_01_ion_F",90000],
				["CH_47F_EP1",150000],
                ["UH60M_EP1",150000],
                ["CUP_B_AH1Z",250000],
                ["CUP_B_UH1Y_GUNSHIP_F",250000]
            ];
        };
      };
    case "civ_ship":
    {
        _return = [
            ["C_Rubberboat",5000],
            ["C_Boat_Civil_01_F",22000]
        ];
    };

    case "reb_blk":
    {
        _return = [
            ["B_Heli_Light_01_armed_F",350000],
            ["CUP_O_Mi17_TK",500000],
            ["O_Heli_Light_02_F",2000000],
            ["CUP_O_Mi24_P_RU",2000000],
            ["CUP_O_BMP2_CHDKZ",950000],
            ["CUP_O_BRDM2_CHDKZ",800000],
            ["CUP_O_T72_CHDKZ",2500000],
            ["CUP_O_T55_TK",1500000],
            ["CUP_I_T34_NAPA",1000000],
            ["CUP_O_Ural_ZU23_CHDKZ",255000],
            ["CUP_O_BRDM2_HQ_CHDKZ",555000],
            ["CUP_O_Ka50_SLA",2500000],
            ["CUP_O_UH1H_TKA",500000],
            ["CUP_B_SA330_Puma_HC1_BAF",500000],
            ["CUP_B_SA330_Puma_HC2_BAF",700000]
        ];
    };
};

_return;
