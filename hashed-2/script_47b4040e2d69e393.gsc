// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\wz_common\wz_common_fixup.gsc;
#using scripts\mp_common\item_world_fixup.gsc;

#namespace namespace_64875446;

/*
	Name: function_45a212c0
	Namespace: namespace_64875446
	Checksum: 0x6B522402
	Offset: 0x78
	Size: 0x2DC
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_45a212c0()
{
	var_a12b4736 = &item_world_fixup::function_96ff7b88;
	var_d2223309 = &item_world_fixup::function_261ab7f5;
	var_b5014996 = &item_world_fixup::function_19089c75;
	var_87d0eef8 = &item_world_fixup::remove_item;
	var_74257310 = &item_world_fixup::function_6da5e673;
	var_f8a4c541 = &item_world_fixup::function_6991057;
	if(isdefined(getgametypesetting(#"infectionmode")) && getgametypesetting(#"infectionmode"))
	{
		wz_common_fixup::item_replacer(var_d2223309, var_74257310, #"hash_46dd75a1a3f70780", #"hash_209309ca264c04b8");
		wz_common_fixup::item_replacer(var_d2223309, var_74257310, #"hash_3b5119f663e783b1", #"hash_4cafdb5de9ef7477");
		wz_common_fixup::item_replacer(var_d2223309, var_74257310, #"hash_212b01feaa916a00", #"hash_675e503320ab4838");
		wz_common_fixup::item_replacer(var_d2223309, var_74257310, #"hash_49fecbcd6cbd1ed9", #"hash_11882c316b305b5a");
		wz_common_fixup::item_replacer(var_d2223309, var_74257310, #"hash_3bf6ed4e3a22e9f3", #"hash_712d6637858ecda1");
		wz_common_fixup::item_replacer(var_d2223309, var_74257310, #"hash_1f72dec518451f8c", #"hash_61d812dbecb41acc");
		wz_common_fixup::item_replacer(var_d2223309, var_74257310, #"hash_182fdef2ad243e20", #"hash_4e6319aac6e3b218");
		wz_common_fixup::item_replacer(var_d2223309, var_74257310, #"hash_394e9478cf4f8d9d", #"hash_4c9693bd1035092b");
		wz_common_fixup::item_replacer(var_b5014996, var_f8a4c541, #"hash_4bfbb656e63b17ae", #"hash_4bcb236eaf106519");
	}
}

