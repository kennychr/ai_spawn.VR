/*
 * Author: Pfc.Christiansen
 * Spawn Ground based units and define WP type etc.
 * Arguments:
 * 0: Location,usually _var passed from elsewhere
 * 1: STRING Unit Type RHS\CUP\Vanilla
 * 2: STRING Composition
 * 3: NUMBER Amount
 * 4: STRING Wp Type
 * 5: NUMBER Radius
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 *[_pos,"RHS","Infantry",2,"Guard"] execVM "ai_spawn.sqf"
 *
 * Public: [Yes/No]
 */

//--------------------Store Groups into vars Start--------------------\\

//----------Vanilla OPFOR 

OPF_VAN_Infantry = [

];
OPF_VAN_Motorized = [

];
OPF_VAN_Mechanized = [

];
OPF_VAN_Armored = [

];

//----------RHS OPFOR
OPF_RHS_Infantry = [
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry_flora" >> "rhs_group_rus_vdv_infantry_flora_fireteam",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry_flora" >> "rhs_group_rus_vdv_infantry_flora_MANEUVER",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry_flora" >> "rhs_group_rus_vdv_infantry_flora_section_AA",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry_flora" >> "rhs_group_rus_vdv_infantry_flora_section_AT",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry_flora" >> "rhs_group_rus_vdv_infantry_flora_squad",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry_flora" >> "rhs_group_rus_vdv_infantry_flora_squad_2mg",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry_flora" >> "rhs_group_rus_vdv_infantry_flora_squad_mg_sniper"
];
OPF_RHS_Motorized = [
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_gaz66" >> "rhs_group_rus_vdv_gaz66_squad",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_gaz66" >> "rhs_group_rus_vdv_gaz66_squad_2mg",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_gaz66" >> "rhs_group_rus_vdv_gaz66_squad_aa",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_gaz66" >> "rhs_group_rus_vdv_gaz66_squad_mg_sniper",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_gaz66" >> "rhs_group_rus_vdv_gaz66_squad_sniper"
];
OPF_RHS_Mechanized = [
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_btr70" >> "rhs_group_rus_vdv_btr70_squad",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_btr70" >> "rhs_group_rus_vdv_btr70_squad_2mg",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_btr70" >> "rhs_group_rus_vdv_btr70_squad_mg_sniper",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_btr70" >> "rhs_group_rus_vdv_btr70_squad_sniper",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_bmp1" >> "rhs_group_rus_vdv_bmp1_squad",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_bmp1" >> "rhs_group_rus_vdv_bmp1_squad_2mg",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_bmp1" >> "rhs_group_rus_vdv_bmp1_squad_mg_sniper",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_bmp1" >> "rhs_group_rus_vdv_bmp1_squad_sniper",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_bmp2" >> "rhs_group_rus_vdv_bmp2_squad",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_bmp2" >> "rhs_group_rus_vdv_bmp2_squad_2mg",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_bmp2" >> "rhs_group_rus_vdv_bmp2_squad_mg_sniper",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_bmp2" >> "rhs_group_rus_vdv_bmp2_squad_sniper"
];

OPF_RHS_Armored = [
configfile >> "CfgGroups" >> "East" >> "rhs_faction_tv" >> "rhs_group_rus_tv_72" >> "RHS_T72BDSection",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_tv" >> "rhs_group_rus_tv_72" >> "RHS_T72BDPlatoon_AA",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_tv" >> "rhs_group_rus_tv_80" >> "RHS_T80UMSection",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_tv" >> "rhs_group_rus_tv_80" >> "RHS_T80UMPlatoon_AA",
configfile >> "CfgGroups" >> "East" >> "rhs_faction_tv" >> "rhs_group_rus_tv_90" >> "RHS_t90aSection"
];

//----------CUP OPFOR SLA(Russian)
OPF_CUP_SLA_Infantry = [
configfile >> "CfgGroups" >> "East" >> "CUP_O_SLA" >> "Infantry" >> "CUP_O_SLA_InfantrySection",
configfile >> "CfgGroups" >> "East" >> "CUP_O_SLA" >> "Infantry" >> "CUP_O_SLA_InfantrySectionAA",
configfile >> "CfgGroups" >> "East" >> "CUP_O_SLA" >> "Infantry" >> "CUP_O_SLA_InfantrySectionAT",
configfile >> "CfgGroups" >> "East" >> "CUP_O_SLA" >> "Infantry" >> "CUP_O_SLA_InfantrySectionMG",
configfile >> "CfgGroups" >> "East" >> "CUP_O_SLA" >> "Infantry" >> "CUP_O_SLA_InfantrySquad",
configfile >> "CfgGroups" >> "East" >> "CUP_O_SLA" >> "Infantry" >> "CUP_O_SLA_SniperTeam",
configfile >> "CfgGroups" >> "East" >> "CUP_O_SLA" >> "Infantry" >> "CUP_O_SLA_SpecialPurposeSquad"
];
OPF_CUP_SLA_Motorized = [
configfile >> "CfgGroups" >> "East" >> "CUP_O_SLA" >> "Motorized" >> "CUP_O_SLA_MotInfSection",
configfile >> "CfgGroups" >> "East" >> "CUP_O_SLA" >> "Motorized" >> "CUP_O_SLA_MotInfSection_AT"
];
OPF_CUP_SLA_Mechanized = [
configfile >> "CfgGroups" >> "East" >> "CUP_O_SLA" >> "Mechanized" >> "CUP_O_SLA_MechInfSquad"
];
OPF_CUP_SLA_Armored = [
configfile >> "CfgGroups" >> "East" >> "CUP_O_SLA" >> "Armored" >> "CUP_O_SLA_TankPlatoon"
];

//----------CUP OPFOR Takistan
OPF_CUP_TAKI_Infantry = [
configfile >> "CfgGroups" >> "East" >> "CUP_O_TK_MILITIA" >> "Infantry" >> "CUP_O_TK_MILITIA_AATeam",
configfile >> "CfgGroups" >> "East" >> "CUP_O_TK_MILITIA" >> "Infantry" >> "CUP_O_TK_MILITIA_ATTeam",
configfile >> "CfgGroups" >> "East" >> "CUP_O_TK_MILITIA" >> "Infantry" >> "CUP_O_TK_MILITIA_Demosquad",
configfile >> "CfgGroups" >> "East" >> "CUP_O_TK_MILITIA" >> "Infantry" >> "CUP_O_TK_MILITIA_Group",
configfile >> "CfgGroups" >> "East" >> "CUP_O_TK_MILITIA" >> "Infantry" >> "CUP_O_TK_MILITIA_Patrol"
];
OPF_CUP_TAKI_Motorized = [
configfile >> "CfgGroups" >> "East" >> "CUP_O_TK_MILITIA" >> "Motorized" >> "CUP_O_TK_MILITIA_MotorizedGroup",
configfile >> "CfgGroups" >> "East" >> "CUP_O_TK_MILITIA" >> "Motorized" >> "CUP_O_TK_MILITIA_Technicals"
];
OPF_CUP_TAKI_Mechanized = [

];
OPF_CUP_TAKI_Armored = [

];

//--------------------Store Groups into vars End--------------------\\

params ["_pos","_mod","_comp","_amount","_wpType","_radius"];



switch _comp do {
    case "Infantry": {
      for "_i" from 1 to _amount do {
        switch _wpType do {
            case "Patrol": {
              switch _mod do {
                  case "Vanilla": {
                    _rPos = [_pos,_radius] call CBA_fnc_randPos;
                    _unitComp = OPF_VAN_Infantry call BIS_fnc_selectRandom;
                    _grp = [_rPos, EAST, (_unitComp)] call BIS_fnc_spawnGroup;
                      [_grp, _pos, _radius] call bis_fnc_taskPatrol;
                  };
                  case "RHS": {
                    _rPos = [_pos,_radius] call CBA_fnc_randPos;
                    _unitComp = OPF_RHS_Infantry call BIS_fnc_selectRandom;
                    _grp = [_rPos, EAST, (_unitComp)] call BIS_fnc_spawnGroup;
                    [_grp, _pos, _radius] call bis_fnc_taskPatrol;
                  };
                  case "CUP_SLA": {
                    _rPos = [_pos,_radius] call CBA_fnc_randPos;
                    _unitComp = OPF_CUP_SLA_Infantry call BIS_fnc_selectRandom;
                    _grp = [_rPos, EAST, (_unitComp)] call BIS_fnc_spawnGroup;
                    [_grp, _pos, _radius] call bis_fnc_taskPatrol;
                  };
                  case "CUP_TAKI": {
                    _rPos = [_pos,_radius] call CBA_fnc_randPos;
                    _unitComp = OPF_CUP_TAKI_Infantry call BIS_fnc_selectRandom;
                    _grp = [_rPos, EAST, (_unitComp)] call BIS_fnc_spawnGroup;
                    [_grp, _pos, _radius] call bis_fnc_taskPatrol;
                  };
              };
            };
            case "Guard": {
              switch _mod do {
                  case "Vanilla": {
                      _rPos = [_pos,_radius] call CBA_fnc_randPos;
                      _unitComp = OPF_VAN_Infantry call BIS_fnc_selectRandom;
                      _grp = [_rPos, EAST, (_unitComp)] call BIS_fnc_spawnGroup;
                      [_grp,_pos,_radius,2,true] call CBA_fnc_taskDefend;
                  };
                  case "RHS": {
                    _rPos = [_pos,_radius] call CBA_fnc_randPos;
                    _unitComp = OPF_RHS_Infantry call BIS_fnc_selectRandom; hint format ["%1",_unitComp];
                    _grp = [_rPos, EAST, (_unitComp)] call BIS_fnc_spawnGroup;
                    [_grp,_pos,_radius,2,true] call CBA_fnc_taskDefend;
                  };
                  case "CUP_SLA": {
                    _rPos = [_pos,_radius] call CBA_fnc_randPos;
                    _unitComp = OPF_CUP_SLA_Infantry call BIS_fnc_selectRandom;
                    _grp = [_rPos, EAST, (_unitComp)] call BIS_fnc_spawnGroup;
                    [_grp,_pos,_radius,2,true] call CBA_fnc_taskDefend;
                  };
                  case "CUP_TAKI": {
                    _rPos = [_pos,_radius] call CBA_fnc_randPos;
                    _unitComp = OPF_CUP_TAKI_Infantry call BIS_fnc_selectRandom;
                    _grp = [_rPos, EAST, (_unitComp)] call BIS_fnc_spawnGroup;
                    [_grp,_pos,_radius,2,true] call CBA_fnc_taskDefend;
                  };
              };
            };
        };


      };

    };
    case "Motorized": {
      for "_i" from 1 to _amount do {
        switch _wpType do {
            case "Patrol": {
              switch _mod do {
                  case "Vanilla": {
                    _safePos = [_pos,10,_radius,10,0,40,0] call BIS_fnc_findSafePos;
                    _unitComp = OPF_VAN_Motorized call BIS_fnc_selectRandom;
                    _grp = [_safePos, EAST, (_unitComp)] call BIS_fnc_spawnGroup;
                      [_grp, _pos, _radius] call bis_fnc_taskPatrol;
                  };
                  case "RHS": {
                    _safePos = [_pos,10,_radius,10,0,40,0] call BIS_fnc_findSafePos;
                    _unitComp = OPF_RHS_Motorized call BIS_fnc_selectRandom;
                    _grp = [_safePos, EAST, (_unitComp)] call BIS_fnc_spawnGroup;
                    [_grp, _pos, _radius] call bis_fnc_taskPatrol;
                  };
                  case "CUP_SLA": {
                    _safePos = [_pos,10,_radius,10,0,40,0] call BIS_fnc_findSafePos;
                    _unitComp = OPF_CUP_SLA_Motorized call BIS_fnc_selectRandom;
                    _grp = [_safePos, EAST, (_unitComp)] call BIS_fnc_spawnGroup;
                    [_grp, _pos, _radius] call bis_fnc_taskPatrol;
                  };
                  case "CUP_TAKI": {
                    _safePos = [_pos,10,_radius,10,0,40,0] call BIS_fnc_findSafePos;
                    _unitComp = OPF_CUP_TAKI_Motorized call BIS_fnc_selectRandom;
                    _grp = [_safePos, EAST, (_unitComp)] call BIS_fnc_spawnGroup;
                    [_grp, _pos, _radius] call bis_fnc_taskPatrol;
                  };
              };
            };
            case "Guard": {
              switch _mod do {
                  case "Vanilla": {
                      _safePos = [_pos,10,_radius,10,0,40,0] call BIS_fnc_findSafePos;
                      _unitComp = OPF_VAN_Motorized call BIS_fnc_selectRandom;
                      _grp = [_safePos, EAST, (_unitComp)] call BIS_fnc_spawnGroup;
                      [_grp,_pos,_radius,2,true] call CBA_fnc_taskDefend;
                  };
                  case "RHS": {
                    _safePos = [_pos,10,_radius,10,0,40,0] call BIS_fnc_findSafePos;
                    _unitComp = OPF_RHS_Motorized call BIS_fnc_selectRandom; hint format ["%1",_unitComp];
                    _grp = [_safePos, EAST, (_unitComp)] call BIS_fnc_spawnGroup;
                    [_grp,_pos,_radius,2,true] call CBA_fnc_taskDefend;
                  };
                  case "CUP_SLA": {
                    _safePos = [_pos,10,_radius,10,0,40,0] call BIS_fnc_findSafePos;
                    _unitComp = OPF_CUP_SLA_Motorized call BIS_fnc_selectRandom;
                    _grp = [_safePos, EAST, (_unitComp)] call BIS_fnc_spawnGroup;
                    [_grp,_pos,_radius,2,true] call CBA_fnc_taskDefend;
                  };
                  case "CUP_TAKI": {
                    _safePos = [_pos,10,_radius,10,0,40,0] call BIS_fnc_findSafePos;
                    _unitComp = OPF_CUP_TAKI_Motorized call BIS_fnc_selectRandom;
                    _grp = [_safePos, EAST, (_unitComp)] call BIS_fnc_spawnGroup;
                    [_grp,_pos,_radius,2,true] call CBA_fnc_taskDefend;
                  };
              };
            };
        };


      };
    };
    case "Mechanized": {

    };
    case "Armored": {

    };
};
