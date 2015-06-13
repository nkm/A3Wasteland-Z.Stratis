// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: setSniperSkill.sqf
//	@file Author: JotaZeta
//	@file Created: 13/06/2015 22:55
//	@file Args:

if (!isServer) exitWith {};

private ["_unit", "_skill", "_accuracy"];
_unit = _this;

if (["A3W_missionsDifficulty"] call isConfigOn) then
{
	_skill = 0.5; // Default skill for ARMA3 is 0.5
	_accuracy = 1; // Relative multiplier; absolute default accuracy for ARMA3 is 0.25
}
else
{
	_skill = 0.33;
	_accuracy = 0.75;
};

_unit allowFleeing 0;
_unit setSkill _skill;
_unit setSkill ["aimingAccuracy", (_unit skill "aimingAccuracy") * _accuracy];
_unit setskill ["spotDistance", 1];
_unit setskill ["spotTime", 1];
_unit setskill ["courage", 1];
_unit setskill ["commanding", 1];
_unit setskill ["aimingShake", 1];
_unit setskill ["aimingSpeed", 1];

// Available skills are explained here: http://community.bistudio.com/wiki/AI_Sub-skills
// Skill values are between 0 and 1
