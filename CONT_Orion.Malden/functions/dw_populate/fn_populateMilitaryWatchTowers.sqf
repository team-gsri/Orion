﻿//exec: server

params["_center", "_military"];

_count = 0;

if(!_military) exitWith {_count};

_towers = (_center nearObjects ["Cargo_Patrol_base_F", 1000]);
{
	_group = createGroup [east, true];
	_units = ["O_Soldier_F", "O_Sharpshooter_F", "O_Soldier_SL_F"];
	_u = _group createUnit [(selectRandom _units), (_x buildingPos 1), [], 0, "CAN_COLLIDE"];
	_u setDir random 360;
	DW_MISSION_TEMP pushBack _u;
	{doStop _x;} forEach units _group;
	_count = _count + count units _group;
	//[_group] call DW_fnc_addInjurableGroup;
	
	// Marker d'alerte
	_object = createVehicle ["Sign_Pointer_Green_F", getPos _x, [], 0, "CAN_COLLIDE"];
	_object enableSimulation false;
	hideObjectGlobal _object;
	DW_MISSION_TEMP pushBack _object;
} forEach _towers;

_count