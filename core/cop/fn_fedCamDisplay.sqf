/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Turns on and displays a security cam like feed via PiP to the laptop display.
*/
_laptop = _this select 0;
_mode = _this select 3;

if(!isPiPEnabled) exitWith {hint localize "STR_Cop_EnablePiP";};
if(isNil "life_fed_scam") then {
	life_fed_scam = "camera" camCreate [0,0,0];
	life_fed_scam camSetFov 0.5;
	life_fed_scam camCommit 0;
	"rendertarget0" setPiPEffect [0];
	life_fed_scam cameraEffect ["INTERNAL", "BACK", "rendertarget0"];
	_laptop setObjectTexture [0,"#(argb,256,256,1)r2t(rendertarget0,1.0)"];
};

switch (_mode) do {
	case "front": {
		life_fed_scam camSetPos [5673.62,8930.31,6.97];
		life_fed_scam camSetTarget [-53210.49,-70853.48,-13452.21];
		life_fed_scam camCommit 0;
	};
	
	case "back": {
		life_fed_scam camSetPos [5636.32,8858.96,7.01];
		life_fed_scam camSetTarget [62318.39,88519.19,-21067.75];
		life_fed_scam camCommit 0;
	};
	
	case "overhead": {
		life_fed_scam camSetPos [5654.72,8893.83,19.57] ;
		life_fed_scam camSetTarget [6274.52,8109.92,-100141.82];
		life_fed_scam camCommit 0;
	};
	
	case "vault": {
		life_fed_scam camSetPos [5652.73,8895.95,3.46];
		life_fed_scam camSetTarget [72699.17,-54399.22,-38937.93];
		life_fed_scam camCommit 0;
	};
	
	case "off" :{
		life_fed_scam cameraEffect ["terminate", "back"];
		camDestroy life_fed_scam;
		_laptop setObjectTexture [0,""];
		life_fed_scam = nil;
	};
};
