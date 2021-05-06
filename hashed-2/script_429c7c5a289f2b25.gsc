// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\lui_shared.gsc;

#namespace wz_wingsuit_hud;

/*
	Name: register
	Namespace: wz_wingsuit_hud
	Checksum: 0xA4906DE1
	Offset: 0xB8
	Size: 0x40
	Parameters: 1
	Flags: Linked
*/
function register(uid)
{
	object = new var_1e9d002b();
	[[ object ]]->__constructor();
	elem = object;
	[[ elem ]]->setup_clientfields(uid);
	return elem;
}

/*
	Name: open
	Namespace: wz_wingsuit_hud
	Checksum: 0xBAEEF030
	Offset: 0x100
	Size: 0x38
	Parameters: 2
	Flags: None
*/
function open(player, persistent = 0)
{
	[[ self ]]->open(player, persistent);
}

/*
	Name: close
	Namespace: wz_wingsuit_hud
	Checksum: 0x2AB64469
	Offset: 0x140
	Size: 0x1C
	Parameters: 1
	Flags: None
*/
function close(player)
{
	[[ self ]]->close(player);
}

/*
	Name: is_open
	Namespace: wz_wingsuit_hud
	Checksum: 0x1388EDF
	Offset: 0x168
	Size: 0x1A
	Parameters: 1
	Flags: None
*/
function is_open(player)
{
	return [[ self ]]->function_7bfd10e6(player);
}

#namespace namespace_1e9d002b;

/*
	Name: __constructor
	Namespace: namespace_1e9d002b
	Checksum: 0x85501C3
	Offset: 0x190
	Size: 0x14
	Parameters: 0
	Flags: Linked, 8
*/
function __constructor()
{
	namespace_6aaccc24::__constructor();
}

/*
	Name: setup_clientfields
	Namespace: namespace_1e9d002b
	Checksum: 0xC95FB542
	Offset: 0x1B0
	Size: 0x24
	Parameters: 1
	Flags: Linked
*/
function setup_clientfields(uid)
{
	namespace_6aaccc24::setup_clientfields(uid);
}

/*
	Name: open
	Namespace: namespace_1e9d002b
	Checksum: 0x94E11145
	Offset: 0x1E0
	Size: 0x44
	Parameters: 2
	Flags: Linked
*/
function open(player, persistent = 0)
{
	namespace_6aaccc24::function_8b8089ba(player, "wz_wingsuit_hud", persistent);
}

/*
	Name: close
	Namespace: namespace_1e9d002b
	Checksum: 0xE7E68618
	Offset: 0x230
	Size: 0x24
	Parameters: 1
	Flags: Linked
*/
function close(player)
{
	namespace_6aaccc24::function_a68f6e20(player);
}

/*
	Name: __destructor
	Namespace: namespace_1e9d002b
	Checksum: 0x308CAE5D
	Offset: 0x260
	Size: 0x14
	Parameters: 0
	Flags: Linked, 16, 128
*/
function __destructor()
{
	namespace_6aaccc24::__destructor();
}

#namespace wz_wingsuit_hud;

/*
	Name: function_1e9d002b
	Namespace: wz_wingsuit_hud
	Checksum: 0xEA81A063
	Offset: 0x280
	Size: 0x2C6
	Parameters: 0
	Flags: AutoExec, Private, 128
*/
private autoexec function function_1e9d002b()
{
	classes.var_1e9d002b[0] = spawnstruct();
	classes.var_1e9d002b[0].__vtable[1500549600] = &namespace_6aaccc24::function_a68f6e20;
	classes.var_1e9d002b[0].__vtable[2080182502] = &namespace_6aaccc24::function_7bfd10e6;
	classes.var_1e9d002b[0].__vtable[1954510406] = &namespace_6aaccc24::function_8b8089ba;
	classes.var_1e9d002b[0].__vtable[702532567] = &namespace_6aaccc24::function_d6203429;
	classes.var_1e9d002b[0].__vtable[1329274013] = &namespace_6aaccc24::function_b0c4e363;
	classes.var_1e9d002b[0].__vtable[592229248] = &namespace_6aaccc24::function_dcb34c80;
	classes.var_1e9d002b[0].__vtable[630637378] = &namespace_6aaccc24::function_da693cbe;
	classes.var_1e9d002b[0].__vtable[1855416484] = &namespace_6aaccc24::setup_clientfields;
	classes.var_1e9d002b[0].__vtable[674154906] = &namespace_6aaccc24::__constructor;
	classes.var_1e9d002b[0].__vtable[913321084] = &namespace_1e9d002b::__destructor;
	classes.var_1e9d002b[0].__vtable[1516492343] = &namespace_1e9d002b::close;
	classes.var_1e9d002b[0].__vtable[250899321] = &namespace_1e9d002b::open;
	classes.var_1e9d002b[0].__vtable[1855416484] = &namespace_1e9d002b::setup_clientfields;
	classes.var_1e9d002b[0].__vtable[674154906] = &namespace_1e9d002b::__constructor;
}
