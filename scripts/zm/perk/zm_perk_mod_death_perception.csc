// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\core_common\system_shared.csc;
#using scripts\zm_common\zm_perks.csc;

#namespace zm_perk_mod_death_perception;

/*
	Name: __init__system__
	Namespace: zm_perk_mod_death_perception
	Checksum: 0x90A8142A
	Offset: 0x78
	Size: 0x3C
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__system__()
{
	system::register(#"zm_perk_mod_death_perception", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: zm_perk_mod_death_perception
	Checksum: 0x5D994C7
	Offset: 0xC0
	Size: 0x14
	Parameters: 0
	Flags: Linked
*/
function __init__()
{
	function_bc420db4();
}

/*
	Name: function_bc420db4
	Namespace: zm_perk_mod_death_perception
	Checksum: 0xD33C21BB
	Offset: 0xE0
	Size: 0x74
	Parameters: 0
	Flags: Linked
*/
function function_bc420db4()
{
	zm_perks::register_perk_clientfields(#"specialty_mod_awareness", &function_2d4709d2, &function_998aa3ea);
	zm_perks::register_perk_init_thread(#"specialty_mod_awareness", &function_6c6f6b97);
}

/*
	Name: function_6c6f6b97
	Namespace: zm_perk_mod_death_perception
	Checksum: 0x80F724D1
	Offset: 0x160
	Size: 0x4
	Parameters: 0
	Flags: Linked
*/
function function_6c6f6b97()
{
}

/*
	Name: function_2d4709d2
	Namespace: zm_perk_mod_death_perception
	Checksum: 0x80F724D1
	Offset: 0x170
	Size: 0x4
	Parameters: 0
	Flags: Linked
*/
function function_2d4709d2()
{
}

/*
	Name: function_998aa3ea
	Namespace: zm_perk_mod_death_perception
	Checksum: 0x80F724D1
	Offset: 0x180
	Size: 0x4
	Parameters: 0
	Flags: Linked
*/
function function_998aa3ea()
{
}

