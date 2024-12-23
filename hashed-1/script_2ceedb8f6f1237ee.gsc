// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\lui_shared.gsc;

class cct_shared_ingame_hint : cLUIelem
{
	var var_47e79fc;

	/*
		Name: constructor
		Namespace: cct_shared_ingame_hint
		Checksum: 0x2B69BB80
		Offset: 0x218
		Size: 0x14
		Parameters: 0
		Flags: 8
	*/
	constructor()
	{
	}

	/*
		Name: destructor
		Namespace: cct_shared_ingame_hint
		Checksum: 0x589E8CC1
		Offset: 0x648
		Size: 0x14
		Parameters: 0
		Flags: 16, 128
	*/
	destructor()
	{
	}

	/*
		Name: set_inGameHint
		Namespace: cct_shared_ingame_hint
		Checksum: 0x311F4293
		Offset: 0x600
		Size: 0x3C
		Parameters: 2
		Flags: None
	*/
	function set_inGameHint(player, value)
	{
		player clientfield::function_9bf78ef8(var_47e79fc, "inGameHint", value);
	}

	/*
		Name: set_state
		Namespace: cct_shared_ingame_hint
		Checksum: 0x7AAC8CD4
		Offset: 0x338
		Size: 0x2BC
		Parameters: 2
		Flags: None
	*/
	function set_state(player, state_name)
	{
		if(#"defaultstate" == state_name)
		{
			player clientfield::function_9bf78ef8(var_47e79fc, "_state", 0);
		}
		else
		{
			if(#"fadeout" == state_name)
			{
				player clientfield::function_9bf78ef8(var_47e79fc, "_state", 1);
			}
			else
			{
				if(#"green" == state_name)
				{
					player clientfield::function_9bf78ef8(var_47e79fc, "_state", 2);
				}
				else
				{
					if(#"grey" == state_name)
					{
						player clientfield::function_9bf78ef8(var_47e79fc, "_state", 3);
					}
					else
					{
						if(#"red" == state_name)
						{
							player clientfield::function_9bf78ef8(var_47e79fc, "_state", 4);
						}
						else
						{
							if(#"green_fadeout" == state_name)
							{
								player clientfield::function_9bf78ef8(var_47e79fc, "_state", 5);
							}
							else
							{
								if(#"grey_fadeout" == state_name)
								{
									player clientfield::function_9bf78ef8(var_47e79fc, "_state", 6);
								}
								else
								{
									if(#"red_fadeout" == state_name)
									{
										player clientfield::function_9bf78ef8(var_47e79fc, "_state", 7);
									}
									else
									{
										if(#"red_paused" == state_name)
										{
											player clientfield::function_9bf78ef8(var_47e79fc, "_state", 8);
										}
										else
										{
											if(#"hash_3d131b584420ca82" == state_name)
											{
												player clientfield::function_9bf78ef8(var_47e79fc, "_state", 9);
											}
											else
											{
												/#
													assertmsg("");
												#/
												/#
												#/
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}

	/*
		Name: close
		Namespace: cct_shared_ingame_hint
		Checksum: 0xE1D24083
		Offset: 0x308
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
		Namespace: cct_shared_ingame_hint
		Checksum: 0x89DA9830
		Offset: 0x2B8
		Size: 0x44
		Parameters: 2
		Flags: None
	*/
	function open(player, persistent = 0)
	{
		cLUIelem::open_luielem(player, "ct_shared_ingame_hint", persistent);
	}

	/*
		Name: setup_clientfields
		Namespace: cct_shared_ingame_hint
		Checksum: 0x35D44EE
		Offset: 0x238
		Size: 0x74
		Parameters: 1
		Flags: None
	*/
	function setup_clientfields(uid)
	{
		cLUIelem::setup_clientfields(uid);
		cLUIelem::add_clientfield("_state", 1, 4, "int");
		cLUIelem::function_dcb34c80("string", "inGameHint", 1);
	}

}

#namespace ct_shared_ingame_hint;

/*
	Name: register
	Namespace: ct_shared_ingame_hint
	Checksum: 0xDF62E3A4
	Offset: 0xE0
	Size: 0x40
	Parameters: 1
	Flags: None
*/
function register(uid)
{
	elem = new cct_shared_ingame_hint();
	[[ elem ]]->setup_clientfields(uid);
	return elem;
}

/*
	Name: open
	Namespace: ct_shared_ingame_hint
	Checksum: 0x1AA1D2C7
	Offset: 0x128
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
	Namespace: ct_shared_ingame_hint
	Checksum: 0x37B76330
	Offset: 0x168
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
	Namespace: ct_shared_ingame_hint
	Checksum: 0x2F90F3A3
	Offset: 0x190
	Size: 0x1A
	Parameters: 1
	Flags: None
*/
function is_open(player)
{
	return [[ self ]]->function_7bfd10e6(player);
}

/*
	Name: set_state
	Namespace: ct_shared_ingame_hint
	Checksum: 0x81BB4FCA
	Offset: 0x1B8
	Size: 0x28
	Parameters: 2
	Flags: None
*/
function set_state(player, state_name)
{
	[[ self ]]->set_state(player, state_name);
}

/*
	Name: set_inGameHint
	Namespace: ct_shared_ingame_hint
	Checksum: 0x4ADA5926
	Offset: 0x1E8
	Size: 0x28
	Parameters: 2
	Flags: None
*/
function set_inGameHint(player, value)
{
	[[ self ]]->set_inGameHint(player, value);
}

