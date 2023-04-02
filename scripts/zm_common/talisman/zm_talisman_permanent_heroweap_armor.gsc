// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\zm_common\util.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_talisman.gsc;
#using scripts\zm_common\zm_utility.gsc;

#namespace zm_talisman_permanent_heroweap_armor;

/*
	Name: __init__system__
	Namespace: zm_talisman_permanent_heroweap_armor
	Checksum: 0x7E6C5732
	Offset: 0xD8
	Size: 0x3C
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__system__()
{
	system::register(#"zm_talisman_permanent_heroweap_armor", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: zm_talisman_permanent_heroweap_armor
	Checksum: 0xB8A0A5C
	Offset: 0x120
	Size: 0x2C
	Parameters: 0
	Flags: Linked
*/
function __init__()
{
	zm_talisman::function_88a60d36("talisman_permanent_heroweap_armor", &activate_talisman);
}

/*
	Name: activate_talisman
	Namespace: zm_talisman_permanent_heroweap_armor
	Checksum: 0x1B67F77
	Offset: 0x158
	Size: 0x12
	Parameters: 0
	Flags: Linked
*/
function activate_talisman()
{
	self.var_bacee63b = 1;
}

