// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\lui_shared.gsc;

class cprototype_defend_timer : cLUIelem
{

	/*
		Name: constructor
		Namespace: cprototype_defend_timer
		Checksum: 0x8946405D
		Offset: 0x198
		Size: 0x14
		Parameters: 0
		Flags: 8
	*/
	constructor()
	{
	}

	/*
		Name: destructor
		Namespace: cprototype_defend_timer
		Checksum: 0x2400AC18
		Offset: 0x268
		Size: 0x14
		Parameters: 0
		Flags: 16, 128
	*/
	destructor()
	{
	}

	/*
		Name: close
		Namespace: cprototype_defend_timer
		Checksum: 0x626B8E2B
		Offset: 0x238
		Size: 0x24
		Parameters: 1
		Flags: None
	*/
	function close(player)
	{
		cLUIelem::close_luielem(player);
	}

	/*
		Name: open
		Namespace: cprototype_defend_timer
		Checksum: 0x8D1B3FAB
		Offset: 0x1E8
		Size: 0x44
		Parameters: 2
		Flags: None
	*/
	function open(player, persistent = 0)
	{
		cLUIelem::open_luielem(player, "prototype_defend_timer", persistent);
	}

	/*
		Name: setup_clientfields
		Namespace: cprototype_defend_timer
		Checksum: 0x411C30DA
		Offset: 0x1B8
		Size: 0x24
		Parameters: 1
		Flags: None
	*/
	function setup_clientfields(uid)
	{
		cLUIelem::setup_clientfields(uid);
	}

}

#namespace prototype_defend_timer;

/*
	Name: register
	Namespace: prototype_defend_timer
	Checksum: 0x35260454
	Offset: 0xC0
	Size: 0x40
	Parameters: 1
	Flags: None
*/
function register(uid)
{
	elem = new cprototype_defend_timer();
	[[ elem ]]->setup_clientfields(uid);
	return elem;
}

/*
	Name: open
	Namespace: prototype_defend_timer
	Checksum: 0x964A7991
	Offset: 0x108
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
	Namespace: prototype_defend_timer
	Checksum: 0x6D8A90E9
	Offset: 0x148
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
	Namespace: prototype_defend_timer
	Checksum: 0x7AF12FC4
	Offset: 0x170
	Size: 0x1A
	Parameters: 1
	Flags: None
*/
function is_open(player)
{
	return [[ self ]]->function_7bfd10e6(player);
}

