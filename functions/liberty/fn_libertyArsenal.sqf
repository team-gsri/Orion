// Add Virtual Arsenal to lockers in preparation area
// by [GSRI] Cheitan

// No task serverside
if(isDedicated) exitWith {};

params["_navire"];

// First, add Arsenal actions on red lockers
_start = [-2.42944,15.6,8.7];
_actionArsenal = ["actionArsenal","Ouvrir le vestiaire","",{["Open",true] spawn bis_fnc_arsenal;},{true}] call ace_interact_menu_fnc_createAction;
for [{_i = 0}, {_i < 9}, {_i = _i+1}] do {
	_handle = "Land_Battery_F" createVehicleLocal [0,0,0];
	_handle enableSimulation false;
	_handle attachTo [_navire, (_start vectorAdd [0,(0.61*_i),0])];
	[_handle, 0, [], _actionArsenal] call ace_interact_menu_fnc_addActionToObject;
};

// Second, add Preslots actions on grey lockers
_pos = [[2.33301,17.878,8.7],[2.33301,16.414,8.7]];
_actionSoldier = ["actionSoldier","Fusilier","",{call GSRI_fnc_getSoldier},{true}] call ace_interact_menu_fnc_createAction;
_actionGrenadier = ["actionGrenadier","Grenadier","",{call GSRI_fnc_getGrenadier},{true}] call ace_interact_menu_fnc_createAction;
_actionGunner = ["actionGunner","Mitrailleur","",{call GSRI_fnc_getGunner},{true}] call ace_interact_menu_fnc_createAction;
_actionMedic = ["actionMedic","Médic","",{call GSRI_fnc_getMedic},{true}] call ace_interact_menu_fnc_createAction;
_actionDiver = ["actionDiver","Plongeur","",{call GSRI_fnc_getDiver},{true}] call ace_interact_menu_fnc_createAction;
{
	_handle = "Land_Battery_F" createVehicleLocal [0,0,0];
	_handle enableSimulation false;
	_handle attachTo [_navire, _x];
	{
		[_handle, 0, ["ACE_MainActions"], _x] call ace_interact_menu_fnc_addActionToObject;
	} forEach [_actionSoldier,_actionGrenadier,_actionGunner,_actionMedic,_actionDiver];
} forEach _pos;
