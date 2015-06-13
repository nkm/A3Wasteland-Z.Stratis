// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: mission_Sniper.sqf
//	@file Author: JoSchaap, AgentRev, LouD

if (!isServer) exitwith {};
#include "sideMissionDefines.sqf";

private ["_positions", "_boxes1", "_currBox1", "_box1"];

_setupVars =
{
	_missionType = "Sniper Overwatch";
	_locationsArray = MissionSpawnMarkers;
};


_setupObjects =
{
	_missionPos = markerPos _missionLocation;
	// delete existing base parts and vehicles at location
	_baseToDelete = nearestObjects [_missionPos, ["All"], 25];
	{ deleteVehicle _x } forEach _baseToDelete;

	_randomGroup = [createSniperGroup1, createSniperGroup2, createSniperGroup3] call BIS_fnc_selectRandom;
	_aiGroup = createGroup CIVILIAN;
	[_aiGroup,_missionPos] spawn _randomGroup;

	_aiGroup setCombatMode "RED";
	_aiGroup setBehaviour "COMBAT";

	_missionHintText = format ["A small group of Snipers are setting up overwatch. Head to the marked area and Take them out! Be careful they are fully armed and dangerous!", sideMissionColor];
};

_waitUntilMarkerPos = nil;
_waitUntilExec = nil;
_waitUntilCondition = nil;

_failedExec = nil;

_successExec =
{
	// Mission completed
	_randomBox = ["mission_TOP_Gear1","mission_TOP_Sniper","mission_USSpecial","mission_USLaunchers","mission_Main_A3snipers"] call BIS_fnc_selectRandom;
	_box1 = createVehicle ["Box_NATO_Wps_F", _lastPos, [], 2, "None"];
	_box1 setDir random 360;
	[_box1, _randomBox] call fn_refillbox;

	_successHintMessage = format ["The snipers are dead! Well Done!"];
	{ _x setVariable ["R3F_LOG_disabled", false, true] } forEach [_box1];
};

_this call mainMissionProcessor;
