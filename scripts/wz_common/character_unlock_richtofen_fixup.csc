// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\wz_common\character_unlock_fixup.csc;
#using scripts\core_common\system_shared.csc;

#namespace character_unlock_richtofen_fixup;

/*
	Name: __init__system__
	Namespace: character_unlock_richtofen_fixup
	Checksum: 0x2D51427A
	Offset: 0x78
	Size: 0x44
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__system__()
{
	system::register(#"character_unlock_richtofen_fixup", &__init__, undefined, #"character_unlock_fixup");
}

/*
	Name: __init__
	Namespace: character_unlock_richtofen_fixup
	Checksum: 0x3C9F6F0C
	Offset: 0xC8
	Size: 0x64
	Parameters: 0
	Flags: Linked
*/
function __init__()
{
	character_unlock_fixup::register_character_unlock(#"richtofen_unlock", #"hash_66b69b90a30bcc88", #"hash_206ddd5a88e8c7c1", &function_d95e620c, #"hash_418312990213bc41");
}

/*
	Name: function_d95e620c
	Namespace: character_unlock_richtofen_fixup
	Checksum: 0x6CF10383
	Offset: 0x138
	Size: 0x102
	Parameters: 0
	Flags: Linked
*/
function function_d95e620c()
{
	var_5d6be844 = (isdefined(getgametypesetting(#"hash_50b1121aee76a7e4")) ? getgametypesetting(#"hash_50b1121aee76a7e4") : 0) && (isdefined(getgametypesetting(#"hash_19667f3338ed6b1f")) ? getgametypesetting(#"hash_19667f3338ed6b1f") : 0) && (isdefined(getgametypesetting(#"hash_3778ec3bd924f17c")) ? getgametypesetting(#"hash_3778ec3bd924f17c") : 0);
	return var_5d6be844;
}

