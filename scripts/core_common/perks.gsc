// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#namespace perks;

/*
	Name: perk_setperk
	Namespace: perks
	Checksum: 0x8219A3D3
	Offset: 0x68
	Size: 0xD4
	Parameters: 1
	Flags: Linked
*/
function perk_setperk(str_perk)
{
	if(!isdefined(self.var_fb3c9d6a))
	{
		self.var_fb3c9d6a = [];
	}
	if(!isdefined(self.var_fb3c9d6a[str_perk]))
	{
		self.var_fb3c9d6a[str_perk] = 0;
	}
	/#
		assert(self.var_fb3c9d6a[str_perk] >= 0, "");
	#/
	/#
		assert(self.var_fb3c9d6a[str_perk] < 23, "");
	#/
	self.var_fb3c9d6a[str_perk]++;
	self setperk(str_perk);
}

/*
	Name: perk_unsetperk
	Namespace: perks
	Checksum: 0x789E35B0
	Offset: 0x148
	Size: 0xB4
	Parameters: 1
	Flags: Linked
*/
function perk_unsetperk(str_perk)
{
	if(!isdefined(self.var_fb3c9d6a))
	{
		self.var_fb3c9d6a = [];
	}
	if(!isdefined(self.var_fb3c9d6a[str_perk]))
	{
		self.var_fb3c9d6a[str_perk] = 0;
	}
	self.var_fb3c9d6a[str_perk]--;
	/#
		assert(self.var_fb3c9d6a[str_perk] >= 0, "");
	#/
	if(self.var_fb3c9d6a[str_perk] <= 0)
	{
		self unsetperk(str_perk);
	}
}

/*
	Name: perk_hasperk
	Namespace: perks
	Checksum: 0x2C0FB884
	Offset: 0x208
	Size: 0x4A
	Parameters: 1
	Flags: Linked
*/
function perk_hasperk(str_perk)
{
	if(isdefined(self.var_fb3c9d6a) && isdefined(self.var_fb3c9d6a[str_perk]) && self.var_fb3c9d6a[str_perk] > 0)
	{
		return true;
	}
	return false;
}

/*
	Name: perk_reset_all
	Namespace: perks
	Checksum: 0x69DD788
	Offset: 0x260
	Size: 0x26
	Parameters: 0
	Flags: None
*/
function perk_reset_all()
{
	self clearperks();
	self.var_fb3c9d6a = [];
}

