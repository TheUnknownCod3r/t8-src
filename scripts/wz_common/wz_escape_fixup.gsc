// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\wz_common\wz_common_fixup.gsc;
#using scripts\mp_common\item_world_fixup.gsc;

#namespace wz_escape_fixup;

/*
	Name: __init__
	Namespace: wz_escape_fixup
	Checksum: 0xC7F42CF7
	Offset: 0x78
	Size: 0x14
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__()
{
	function_d8c2344b();
}

/*
	Name: function_d8c2344b
	Namespace: wz_escape_fixup
	Checksum: 0x26DAE6CC
	Offset: 0x98
	Size: 0x20C
	Parameters: 0
	Flags: Linked
*/
function function_d8c2344b()
{
	var_a12b4736 = &item_world_fixup::function_96ff7b88;
	var_d2223309 = &item_world_fixup::function_261ab7f5;
	var_b5014996 = &item_world_fixup::function_19089c75;
	var_87d0eef8 = &item_world_fixup::remove_item;
	var_74257310 = &item_world_fixup::function_6da5e673;
	var_f8a4c541 = &item_world_fixup::function_6991057;
	if(isdefined(getgametypesetting(#"wzenableflareguns")) && getgametypesetting(#"wzenableflareguns"))
	{
		item_world_fixup::function_e70fa91c(#"hash_2e8c8c85b6034ab3", #"hash_1cf6c3244eeec6e2", 1);
	}
	if(isdefined(getgametypesetting(#"hash_50b1121aee76a7e4")) && getgametypesetting(#"hash_50b1121aee76a7e4"))
	{
		wz_common_fixup::item_replacer(var_f8a4c541, undefined, #"hash_48fa61223caa452a", #"hash_1da9ceb74ddf1630");
		wz_common_fixup::item_replacer(var_f8a4c541, undefined, #"hash_7c0767064e854e59", #"hash_36306d42eea65205");
		wz_common_fixup::item_replacer(var_f8a4c541, undefined, #"hash_90248d512c483c", #"hash_4d6effbdac72977a");
	}
}

