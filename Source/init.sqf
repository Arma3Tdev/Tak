// TFR Variables API
tf_no_auto_long_range_radio = true;
tf_west_radio_code = "";
tf_east_radio_code = tf_west_radio_code;
tf_guer_radio_code = tf_west_radio_code;
tf_civ_radio_code = tf_west_radio_code;
TF_defaultWestPersonalRadio = "";
TF_defaultEastPersonalRadio = "";
TF_defaultGuerPersonalRadio = "";
TF_defaultWestRiflemanRadio = "";
TF_defaultEastRiflemanRadio = "";
TF_defaultGuerRiflemanRadio = "";

enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Takistan Life RPG v2.1";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "scripts\teargas.sqf"; //TearGas Script
[] execVM "scripts\gasmask.sqf"; //TearGas Script
[] execVM "scripts\repetitive_cleanup.sqf";
[] execVM "scripts\message.sqf";
//[] execVM "scripts\fastrope.sqf";
//[] execVM "scripts\Turbo.sqf"; //Turbo Script, Increases Car Speed
StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};
