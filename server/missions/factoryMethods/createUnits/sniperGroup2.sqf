//	@file Version: 1.0
//	@file Name: sniperGroup2.sqf
//	@file Author: JotaZeta
//	@file Created: 13/06/2015 22:59
//	@file Args:

if (!isServer) exitWith {};

private ["_group", "_pos", "_leader", "_man2", "_man3"];

_group = _this select 0;
_pos = _this select 1;

// Leader
_leader = _group createUnit ["C_man_polo_1_F", [(_pos select 0) + 10, _pos select 1, 0], [], 1, "Form"];
removeAllAssignedItems _leader;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_leader addUniform "U_I_GhillieSuit";
_leader addVest "V_TacVest_camo";
_leader addItemToVest "FirstAidKit";
_leader addBackpack "B_Carryall_oli";
_leader addWeapon "srifle_GM6_SOS_F";
_leader addMagazine "5Rnd_127x108_APDS_Mag";
_leader addMagazine "5Rnd_127x108_APDS_Mag";
_leader addMagazine "5Rnd_127x108_APDS_Mag";
_leader linkItem "NVGoggles";
_leader call setSniperSkill;
_leader addRating 1e11;
_leader addEventHandler ["Killed", server_playerDied];


// Soldier2
_man2 = _group createUnit ["C_man_polo_2_F", [(_pos select 0) - 30, _pos select 1, 0], [], 1, "Form"];
removeAllAssignedItems _man2;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man2 addUniform "U_I_GhillieSuit";
_man2 addVest "V_TacVest_camo";
_man2 addItemToVest "FirstAidKit";
_man2 addBackpack "B_Carryall_oli";
_man2 addWeapon "srifle_LRR_SOS_F";
_man2 addMagazine "7Rnd_408_Mag";
_man2 addMagazine "7Rnd_408_Mag";
_man2 addMagazine "7Rnd_408_Mag";
_man2 linkItem "NVGoggles";
_man2 call setSniperSkill;
_man2 addRating 1e11;
_man2 addEventHandler ["Killed", server_playerDied];


// Soldier3
_man3 = _group createUnit ["C_man_polo_3_F", [_pos select 0, (_pos select 1) + 30, 0], [], 1, "Form"];
removeAllAssignedItems _man3;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man3 addUniform "U_I_FullGhillie_sard";
_man3 addVest "V_TacVest_camo";
_man3 addBackpack "B_Carryall_oli";
_man3 addItemToVest "FirstAidKit";
_man3 addWeapon "srifle_DMR_05_SOS_F";
_man3 addMagazine "10Rnd_93x64_DMR_05_Mag";
_man3 addMagazine "10Rnd_93x64_DMR_05_Mag";
_man3 addMagazine "10Rnd_93x64_DMR_05_Mag";
_man3 linkItem "NVGoggles";
_man3 call setSniperSkill;
_man3 addRating 1e11;
_man3 addEventHandler ["Killed", server_playerDied];

_leader = leader _group;
[_group, _pos] call defendArea;
