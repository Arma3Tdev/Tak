if (isNil {profileNamespace getVariable "mutiny"}) then {profileNamespace setVariable ["mutiny",[]];};
_mutiny = profileNamespace getVariable "mutiny";
[[1,_mutiny],"TON_fnc_SAH_reciever",false,false] spawn life_fnc_mp;
