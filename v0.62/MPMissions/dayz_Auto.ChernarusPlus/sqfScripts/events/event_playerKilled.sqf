private["_agent","_uid"];
_agent = _this select 0;
_killer = _this select 1;
_uid = getClientUID (owner _agent);

_agent setVariable ["bleedingsources","[]"];
_agent setVariable ["timeOfDeath",diag_tickTime];

respawningPlayer = _agent getVariable["respawningPlayer", false];

diag_log format["Player %1 was killed by %2 at %3",name _agent, name _killer,diag_tickTime];
admin_log format["%1(uid=%2) was KILLED by %3(uid=%4).",name _agent, getPlayerUID _agent, name _killer, getPlayerUID _killer];

if (DZ_MP_CONNECT) then
{
	_uid call fnc_dbDestroyProfile;
};
