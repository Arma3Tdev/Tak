/*
	File: fn_welcomeNotification.sqf
	
	Description:
	Called upon first spawn selection and welcomes our player.
*/
format["Welcome %1, Please read the following as it is important!",profileName] hintC
[
	"Welcome to Mutiny Gaming A few things have changed with Takistan Life RPG Mod that you need to be aware of!",
	"An interaction key has been introduced which replaces the large majority of scroll wheel actions, this was for performance issues. By default this key is [Left Windows], you can change this key by pressing ESC and going to Configure->Controls->Custom
	and bind 'Use Action 10' to a single key like H. This key is used for the following actions",
	"Picking up items And Windows Key + T To Pick Up Money.",
	"Fishing and gathering",
	"Interacting with players (as a cop)",
	"Interacting with vehicles (repairing and cop actions)",
	"To Use EarPlugs Press F2",
	"This Server Uses Task Force Radio Please Check The Map For Controls Please Use Push To Talk In TeamSpeak Cannot Be CapsLocks"
	
];
	