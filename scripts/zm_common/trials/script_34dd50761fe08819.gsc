// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\zm_common\zm_trial.gsc;
#using scripts\zm_common\zm_bgb_pack.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\zm_common\zm_bgb.gsc;

#namespace namespace_a90d606b;

/*
	Name: __init__system__
	Namespace: namespace_a90d606b
	Checksum: 0x62AB5B49
	Offset: 0x88
	Size: 0x3C
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__system__()
{
	system::register(#"hash_5e833052f96b85bd", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: namespace_a90d606b
	Checksum: 0xB69C50B9
	Offset: 0xD0
	Size: 0x5C
	Parameters: 0
	Flags: Linked
*/
function __init__()
{
	if(!zm_trial::function_b47f6aba())
	{
		return;
	}
	zm_trial::register_challenge(#"hash_684ed24d7aec001c", &on_begin, &on_end);
}

/*
	Name: on_begin
	Namespace: namespace_a90d606b
	Checksum: 0xDF601257
	Offset: 0x138
	Size: 0xC8
	Parameters: 0
	Flags: Linked, Private
*/
function private on_begin()
{
	level zm_trial::function_2b3a3307(1);
	level zm_trial::function_19a1098f(1);
	foreach(player in getplayers())
	{
		player bgb::take();
		player bgb_pack::function_ac9cb612(1);
	}
}

/*
	Name: on_end
	Namespace: namespace_a90d606b
	Checksum: 0x58F40DDB
	Offset: 0x208
	Size: 0xC0
	Parameters: 1
	Flags: Linked, Private
*/
function private on_end(round_reset)
{
	level zm_trial::function_2b3a3307(0);
	level zm_trial::function_19a1098f(0);
	foreach(player in getplayers())
	{
		player bgb_pack::function_ac9cb612(0);
	}
}

/*
	Name: is_active
	Namespace: namespace_a90d606b
	Checksum: 0x225D45FD
	Offset: 0x2D0
	Size: 0x32
	Parameters: 0
	Flags: Linked
*/
function is_active()
{
	challenge = zm_trial::function_a36e8c38(#"hash_684ed24d7aec001c");
	return isdefined(challenge);
}
