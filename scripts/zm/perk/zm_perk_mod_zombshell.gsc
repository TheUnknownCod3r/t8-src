// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\core_common\system_shared.gsc;
#using scripts\zm_common\zm_perks.gsc;

#namespace zm_perk_mod_zombshell;

/*
	Name: __init__system__
	Namespace: zm_perk_mod_zombshell
	Checksum: 0x38C6D459
	Offset: 0x88
	Size: 0x3C
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__system__()
{
	system::register(#"zm_perk_mod_zombshell", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: zm_perk_mod_zombshell
	Checksum: 0x420143C
	Offset: 0xD0
	Size: 0x14
	Parameters: 0
	Flags: Linked
*/
function __init__()
{
	function_37c0d395();
}

/*
	Name: function_37c0d395
	Namespace: zm_perk_mod_zombshell
	Checksum: 0x688C855B
	Offset: 0xF0
	Size: 0x94
	Parameters: 0
	Flags: Linked
*/
function function_37c0d395()
{
	zm_perks::function_7f42e14e(#"hash_4c14ed37c4038671", "mod_zombshell", #"perk_zombshell", #"specialty_zombshell", 5500);
	zm_perks::register_perk_threads(#"hash_4c14ed37c4038671", &function_58d94d9, &function_bf7ca4a7);
}

/*
	Name: function_58d94d9
	Namespace: zm_perk_mod_zombshell
	Checksum: 0x80F724D1
	Offset: 0x190
	Size: 0x4
	Parameters: 0
	Flags: Linked
*/
function function_58d94d9()
{
}

/*
	Name: function_bf7ca4a7
	Namespace: zm_perk_mod_zombshell
	Checksum: 0x7E32B6BE
	Offset: 0x1A0
	Size: 0x24
	Parameters: 4
	Flags: Linked
*/
function function_bf7ca4a7(b_pause, str_perk, str_result, n_slot)
{
}
