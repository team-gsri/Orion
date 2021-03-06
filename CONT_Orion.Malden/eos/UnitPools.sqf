
	private ["_tempArray","_InfPool","_MotPool","_ACHPool","_CHPool","_uavPool","_stPool","_shipPool","_diverPool","_crewPool","_heliCrew","_ArmPool"];
	_faction=(_this select 0);
	_type=(_this select 1);
	_tempArray=[];

// ====================================================================================
// 	0 : BIS_CSAT.sqf
// ====================================================================================

	if (_faction==0) then 
	{
		_InfPool=	["O_SoldierU_SL_F","O_soldierU_repair_F","O_soldierU_medic_F","O_sniper_F","O_Soldier_A_F","O_Soldier_AA_F","O_Soldier_AAA_F","O_Soldier_AAR_F","O_Soldier_AAT_F","O_Soldier_AR_F","O_Soldier_AT_F","O_soldier_exp_F","O_Soldier_F","O_engineer_F","O_engineer_U_F","O_medic_F","O_recon_exp_F","O_recon_F","O_recon_JTAC_F","O_recon_LAT_F","O_recon_M_F","O_recon_medic_F","O_recon_TL_F"];	
		_ArmPool=	["O_APC_Tracked_02_AA_F","O_APC_Tracked_02_cannon_F","O_APC_Wheeled_02_rcws_F","O_MBT_02_arty_F","O_MBT_02_cannon_F"];
		_MotPool=	["O_Truck_02_covered_F","O_Truck_02_transport_F","O_MRAP_02_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F","O_Truck_02_medical_F"];
		_ACHPool=	["O_Heli_Attack_02_black_F","O_Heli_Attack_02_F"];
		_CHPool=	["O_Heli_Light_02_F","O_Heli_Light_02_unarmed_F"];
		_uavPool=	["O_UAV_01_F","O_UAV_02_CAS_F","O_UGV_01_rcws_F"];
		_stPool=	["O_Mortar_01_F","O_static_AT_F","O_static_AA_F"];
		_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
		_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
		_crewPool=	["O_crew_F"];
		_heliCrew=	["O_helicrew_F","O_helipilot_F"];
	};

// ====================================================================================
// 	1 : BIS_NATO.sqf
// ====================================================================================
	
	if (_faction==1) then 
	{
	_InfPool=	["B_sniper_F","B_Soldier_A_F","B_Soldier_AA_F","B_Soldier_AAA_F","B_Soldier_AAR_F","B_Soldier_AAT_F","B_Soldier_AR_F","B_Soldier_AT_F","B_soldier_exp_F","B_Soldier_F","B_engineer_F","B_medic_F","B_recon_exp_F","B_recon_F","B_recon_JTAC_F","B_recon_LAT_F","B_recon_M_F","B_recon_medic_F","B_recon_TL_F"];	
	_ArmPool=	["B_MBT_01_arty_F","B_MBT_01_cannon_F","B_MBT_01_mlrs_F","B_APC_Tracked_01_AA_F","B_APC_Tracked_01_CRV_F","B_APC_Tracked_01_rcws_F","B_APC_Wheeled_01_cannon_F","B_MBT_02_cannon_F"];
	_MotPool=	["B_Truck_01_covered_F","B_Truck_01_transport_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F","B_Truck_01_medical_F"];
	_ACHPool=	["B_Heli_Attack_01_F","B_Heli_Light_01_armed_F"];
	_CHPool=	["B_Heli_Light_01_F","B_Heli_Transport_01_camo_F","B_Heli_Transport_01_F"];
	_uavPool=	["B_UAV_01_F","B_UAV_01_CAS_F","B_UGV_01_rcws_F"];
	_stPool=	["B_Mortar_01_F","B_static_AT_F","B_static_AA_F"];
	_shipPool=	["B_Boat_Armed_01_minigun_F","B_Boat_Transport_01_F"];
	_diverPool=	["B_diver_exp_F","B_diver_F","B_diver_TL_F"];
	_crewPool=	["B_crew_F"];
	_heliCrew=	["B_helicrew_F","B_helipilot_F"];
	};

// ====================================================================================
// 	2 : BIS_AAF.sqf
// ====================================================================================

	if (_faction==2) then 
	{
		_InfPool=	["I_engineer_F","I_Soldier_A_F","I_Soldier_AA_F","I_Soldier_AAA_F","I_Soldier_AAR_F","I_Soldier_AAT_F","I_Soldier_AR_F","I_Soldier_AT_F","I_Soldier_exp_F","I_soldier_F","I_Soldier_GL_F","I_Soldier_repair_F"];	
		_ArmPool=	["I_APC_Wheeled_03_cannon_F","I_APC_tracked_03_cannon_F","I_MBT_03_cannon_F"];
		_MotPool=	["I_Quadbike_01_F","I_MRAP_03_F","I_MRAP_03_gmg_F","I_MRAP_03_hmg_F","I_Truck_02_ammo_F","I_Truck_02_fuel_F","I_Truck_02_medical_F","I_Truck_02_box_F","I_Truck_02_transport_F","I_Truck_02_covered_F"];
		_ACHPool=	["I_Heli_light_03_F"];
		_CHPool=	["I_Heli_Transport_02_F","I_Heli_light_03_unarmed_F"];
		_uavPool=	["I_UAV_01_F","I_UAV_02_CAS_F","I_UGV_01_rcws_F"];
		_stPool=	["I_HMG_01_F","I_HMG_01_high_F","I_HMG_01_A_F","I_GMG_01_F","I_GMG_01_high_F","I_GMG_01_A_F","I_Mortar_01_F","I_static_AA_F","I_static_AT_F"];
		_shipPool=	["I_Boat_Transport_01_F","I_Boat_Armed_01_minigun_F"];
		_diverPool=	["I_diver_exp_F","I_diver_F","I_diver_TL_F"];
		_crewPool=	["I_crew_F"];
		_heliCrew=	["I_helicrew_F","I_helipilot_F"];
	};

// ====================================================================================
// 	3 : BIS_SYNDIKAT_Pacific.sqf
// ====================================================================================

	if (_faction==3) then 
	{
		_InfPool=	["I_C_Soldier_Bandit_7_F","I_C_Soldier_Bandit_3_F","I_C_Soldier_Bandit_2_F","I_C_Soldier_Bandit_5_F","I_C_Soldier_Bandit_6_F","I_C_Soldier_Bandit_1_F","I_C_Soldier_Bandit_8_F","I_C_Soldier_Bandit_4_F","I_C_Soldier_Para_7_F","I_C_Soldier_Para_2_F","I_C_Soldier_Para_3_F","I_C_Soldier_Para_4_F","I_C_Soldier_Para_6_F","I_C_Soldier_Para_8_F","I_C_Soldier_Para_1_F","I_C_Soldier_Para_5_F"];	
		_ArmPool=	[];
		_MotPool=	["I_C_Offroad_02_unarmed_F","I_G_Offroad_01_armed_F","I_G_Offroad_01_F"];
		_ACHPool=	[];
		_CHPool=	["I_Heli_light_03_F","I_Heli_Transport_02_F"	];
		_uavPool=	[];
		_stPool=	["I_G_Mortar_01_F","I_GMG_01_high_F","I_HMG_01_high_F","I_HMG_01_F","I_static_AT_F","I_static_AA_F","I_GMG_01_F"];
		_shipPool=	["I_C_Boat_Transport_02_F","I_C_Boat_Transport_01_F","I_Boat_Armed_01_minigun_F","C_Scooter_Transport_01F"];
		_diverPool=	["I_C_Soldier_Bandit_7_F","I_C_Soldier_Bandit_2_F","I_C_Soldier_Bandit_3_F"];
		_crewPool=	["I_C_Soldier_Para_2_F","I_C_Soldier_Para_3_F","I_C_Soldier_Para_4_F","I_C_Soldier_Bandit_7_F","I_C_Soldier_Bandit_2_F","I_C_Soldier_Bandit_3_F"];
		_heliCrew=	["I_helicrew_F","I_helipilot_F"];
	};

// ====================================================================================	
// 	4 : BIS_CSAT_Pacific.sqf
// ====================================================================================
	
	if (_faction==4) then 
	{
		_InfPool=	["O_T_Soldier_A_F","O_T_Soldier_AAR_F","O_T_Support_AMG_F","O_T_Support_AMort_F","O_T_Soldier_AAA_F","O_T_Soldier_AAT_F","O_T_Soldier_AR_F","O_T_Medic_F","O_T_Crew_F","O_T_Engineer_F","O_T_Soldier_Exp_F","O_T_Soldier_GL_F","O_T_Support_GMG_F","O_T_Support_MG_F","O_T_Support_Mort_F","O_T_Soldier_M_F","O_T_Soldier_AA_F","O_T_Soldier_AT_F","O_T_Officer_F","O_T_Soldier_PG_F","O_T_Soldier_Repair_F","O_T_Soldier_F","O_T_Soldier_LAT_F","O_T_Soldier_SL_F","O_T_Soldier_TL_F","O_T_Soldier_UAV_F","O_T_Recon_Exp_F","O_T_Recon_JTAC_F","O_T_Recon_M_F","O_T_Recon_Medic_F","O_T_Recon_F","O_T_Recon_LAT_F","O_T_Recon_TL_F","O_T_Sniper_F","O_T_Spotter_F","O_T_ghillie_tna_F","O_V_Soldier_ghex_F","O_V_Soldier_TL_ghex_F","O_V_Soldier_Exp_ghex_F","O_V_Soldier_Medic_ghex_F","O_V_Soldier_M_ghex_F","O_V_Soldier_LAT_ghex_F","O_V_Soldier_JTAC_ghex_F"];
		_ArmPool=	["O_T_MBT_02_cannon_ghex_F","O_T_APC_Tracked_02_cannon_ghex_F","O_T_APC_Tracked_02_AA_ghex_F"];
		_MotPool=	["O_T_MRAP_02_hmg_ghex_F","O_T_MRAP_02_gmg_ghex_F","O_T_LSV_02_armed_F","O_G_Offroad_01_armed_F","O_APC_Wheeled_02_rcws_F"];
		_ACHPool=	["O_Heli_Attack_02_black_F","O_Heli_Attack_02_F"];
		_CHPool=	["O_Heli_Light_02_F","O_Heli_Light_02_unarmed_F","O_Heli_Transport_04_covered_F"];//"O_Heli_Transport_04_bench_F"
		_uavPool=	["O_T_UAV_04_CAS_F","O_UAV_01_F","O_T_UGV_01_rcws_ghex_F"];
		_stPool=	["B_T_HMG_01_F","O_GMG_01_high_F","O_HMG_01_high_F","O_static_AT_F","O_static_AA_F","O_GMG_01_F","O_G_Mortar_01_F"];
		_shipPool=	["O_T_Boat_Transport_01_F","O_T_Boat_Armed_01_hmg_F"];
		_diverPool=	["O_T_Diver_Exp_F","O_T_Diver_TL_F","O_T_Diver_F"];
		_crewPool=	["O_T_Crew_F"];
		_heliCrew=	["O_T_Helicrew_F","O_T_Helipilot_F"];
	};

// ====================================================================================
// 	5 : BIS_FIA.sqf
// ====================================================================================

	if (_faction==5) then 
	{
		_InfPool=	["I_G_Soldier_F","I_G_Soldier_lite_F","I_G_Soldier_SL_F","I_G_Soldier_TL_F","I_G_Soldier_AR_F","I_G_medic_F","I_G_engineer_F","I_G_Soldier_exp_F","I_G_Soldier_GL_F","I_G_Soldier_M_F","I_G_Soldier_LAT_F","I_G_Soldier_A_F","I_G_officer_F","I_G_Sharpshooter_F"];
		_ArmPool=	["I_APC_tracked_03_cannon_F"];
		_MotPool=	["I_G_Offroad_01_armed_F","O_G_Offroad_01_armed_F"];
		_ACHPool=	["I_Heli_light_03_F"];
		_CHPool=	["I_Heli_Transport_02_F","I_Heli_light_03_unarmed_F","O_Heli_Transport_04_covered_F"];
		_uavPool=	[];
		_stPool=	["I_G_Mortar_01_F","I_GMG_01_high_F","I_HMG_01_high_F","I_HMG_01_F","I_static_AT_F","I_static_AA_F","I_GMG_01_F"];
		_shipPool=	["I_Boat_Transport_01_F","I_G_Boat_Transport_01_F","I_Boat_Armed_01_minigun_F"];
		_diverPool=	["I_diver_exp_F","I_diver_F","I_diver_TL_F"];
		_crewPool=	["I_G_engineer_F"];
		_heliCrew=	["I_G_Soldier_SL_F","I_G_Soldier_F","I_G_Soldier_AR_F","I_G_medic_F","I_G_Soldier_LAT_F","I_G_Soldier_GL_F"];
	};

// ====================================================================================
// 	6 : 
// ====================================================================================

	if (_faction==6) then 
	{
		_InfPool=	[];
		_ArmPool=	[];
		_MotPool=	[];
		_ACHPool=	[];
		_CHPool=	[];
		_uavPool=	[];
		_stPool=	[];
		_shipPool=	[];
		_diverPool=	[];
		_crewPool=	[];
		_heliCrew=	[];
	};

// ====================================================================================



	if (_type==0) then {
			for "_i" from 0 to 5 do{
			_unit=_InfPool select (floor(random(count _InfPool)));
			_tempArray set [count _tempArray,_unit];};
							};
							
	if (_type==1) then {_tempArray=_diverPool};
		
					
	// CREATE ARMOUR & CREW			
	if (_type==2) then {
					_tempUnit=_ArmPool select (floor(random(count _ArmPool)));
					_temparray set [count _temparray,_tempUnit];
					_crew=_crewPool select (floor(random(count _crewPool)));
					_temparray set [count _temparray,_crew];
	};

	// CREATE ATTACK CHOPPER & CREW	
	if (_type==3) then {
					_tempUnit=_ACHPool select (floor(random(count _ACHPool)));
					_temparray set [count _temparray,_tempUnit];
					_crew=_heliCrew select (floor(random(count _heliCrew)));
					_temparray set [count _temparray,_crew];
	};

	// CREATE TRANSPORT CHOPPER & CREW		
	if (_type==4) then {
					_tempUnit=_CHPool select (floor(random(count _CHPool)));
					_temparray set [count _temparray,_tempUnit];
					_crew=_heliCrew select (floor(random(count _heliCrew)));
					_temparray set [count _temparray,_crew];
							};
							
	// CREATE STATIC & CREW						
	if (_type==5) then {
					_tempUnit=_stPool select (floor(random(count _stPool)));
					_temparray set [count _temparray,_tempUnit];
					_crew=_crewPool select (floor(random(count _crewPool)));
					_temparray set [count _temparray,_crew];

	};
	if (_type==6) then {_tempArray=_uavPool select (floor(random(count _uavPool)));};

	// CREATE TRANSPORT & CREW
	if (_type==7) then {
					_tempUnit=_MotPool select (floor(random(count _MotPool)));
					_temparray set [count _temparray,_tempUnit];
					_crew=_crewPool select (floor(random(count _crewPool)));
					_temparray set [count _temparray,_crew];
					};

	// CREATE BOAT & DIVER CREW
	if (_type==8) then {
					_tempUnit=_shipPool select (floor(random(count _shipPool)));
					_temparray set [count _temparray,_tempUnit];
					_crew=_diverPool select (floor(random(count _diverPool)));
					_temparray set [count _temparray,_crew];
					};
					
	// CREATE CARGO
	if (_type==9) then {
			for "_i" from 0 to 4 do{
				_unit=_InfPool select (floor(random(count _InfPool)));
				_temparray set [count _temparray,_unit];
								};
	};

	// CREATE DIVER CARGO
	if (_type==10) then {
			for "_i" from 0 to 4 do{
				_unit=_diverPool select (floor(random(count _diverPool)));
				_temparray set [count _temparray,_unit];
								};			
	};

	//hint format ["%1",_tempArray];
	_tempArray