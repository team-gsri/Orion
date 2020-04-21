﻿//exec: server

params["_center", "_military"];

_count = 0;

if(!_military) exitWith {_count};

{
	_group = createGroup [east, true];
	_u = _group createUnit ["O_Sharpshooter_F", (_x buildingPos 17), [], 0, "CAN_COLLIDE"];
	DW_MISSION_TEMP pushBack _u;
	_units = ["O_Soldier_SL_F", "O_Soldier_F", "O_Soldier_AR_F", "O_engineer_F"];
	for "_i" from 0 to 16 do
	{
		if(random 1 > 0.6) then {
			_u = _group createUnit [(selectRandom _units), (_x buildingPos _i), [], 0, "CAN_COLLIDE"];
			DW_MISSION_TEMP pushBack _u;
		};
	};
	{ doStop _x } forEach units _group;
	_count = _count + count units _group;
	//[_group] call DW_fnc_addInjurableGroup;
	
	// Marker d'alerte
	_object = createVehicle ["Sign_Pointer_Green_F", getPos _x, [], 0, "CAN_COLLIDE"];
	_object enableSimulation false;
	hideObjectGlobal _object;
	DW_MISSION_TEMP pushBack _object;
} forEach (_center nearObjects ["Cargo_Tower_base_F", 1000]);

_count