// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\core_common\system_shared.csc;
#using scripts\zm_common\zm_bgb.csc;

#namespace zm_bgb_head_scan;

/*
	Name: __init__system__
	Namespace: zm_bgb_head_scan
	Checksum: 0x1A0BD6E7
	Offset: 0x80
	Size: 0x44
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__system__()
{
	system::register(#"zm_bgb_head_scan", &__init__, undefined, #"bgb");
}

/*
	Name: __init__
	Namespace: zm_bgb_head_scan
	Checksum: 0xF9EC826B
	Offset: 0xD0
	Size: 0x4C
	Parameters: 0
	Flags: Linked
*/
function __init__()
{
	if(!(isdefined(level.bgb_in_use) && level.bgb_in_use))
	{
		return;
	}
	bgb::register(#"zm_bgb_head_scan", "time");
}
