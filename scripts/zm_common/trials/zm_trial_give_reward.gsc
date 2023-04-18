// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\zm_common\zm_trial.gsc;
#using scripts\zm_common\zm_contracts.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_utility.gsc;

#namespace zm_trial_give_reward;

/*
	Name: __init__system__
	Namespace: zm_trial_give_reward
	Checksum: 0x33EED44E
	Offset: 0xB8
	Size: 0x3C
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__system__()
{
	system::register(#"zm_trial_give_reward", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: zm_trial_give_reward
	Checksum: 0x824ED015
	Offset: 0x100
	Size: 0x112
	Parameters: 0
	Flags: None
*/
function __init__()
{
	if(!zm_trial::function_b47f6aba())
	{
		return;
	}
	level.var_5335b66f = associativearray(#"hash_53bd8d8afd745e0", 1, #"hash_7b56bdcba095cb41", 2, #"hash_68ca3d7404460abf", 3, #"hash_1d84c5587b7c3dd4", 4, #"hash_177ee254a5de65d8", 5, #"hash_3cf0f6c1e53f5282", 6, #"hash_5639494d7b07b79c", 7, #"hash_2284de38787c8564", 8, #"hash_2788db235878f3f9", 9);
	zm_trial::register_challenge(#"give_reward", &on_begin, &on_end);
	level.var_ee7ca64 = [];
}

/*
	Name: on_begin
	Namespace: zm_trial_give_reward
	Checksum: 0x1EC6F155
	Offset: 0x220
	Size: 0x76
	Parameters: 6
	Flags: Private
*/
function private on_begin(var_c2964c77, description, image, challenge_stat, var_191009a6, var_8d63de44)
{
	self.var_c2964c77 = var_c2964c77;
	self.challenge_stat = challenge_stat;
	self.var_191009a6 = var_191009a6;
	self.var_8d63de44 = var_8d63de44 === #"1";
}

/*
	Name: on_end
	Namespace: zm_trial_give_reward
	Checksum: 0x6D450AAF
	Offset: 0x2A0
	Size: 0x108
	Parameters: 1
	Flags: Private
*/
function private on_end(round_reset)
{
	if(!round_reset && !level flag::get(#"hash_6acab8bde7078239"))
	{
		self function_e7254828();
		if(isdefined(self.var_8d63de44) && self.var_8d63de44)
		{
			luinotifyevent(#"hash_7fe359bfb266e915");
			foreach(player in getplayers())
			{
				player zm_utility::giveachievement_wrapper("zm_trials_round_30");
			}
		}
	}
}

/*
	Name: function_e7254828
	Namespace: zm_trial_give_reward
	Checksum: 0xD557E01E
	Offset: 0x3B0
	Size: 0x4B0
	Parameters: 0
	Flags: Private
*/
function private function_e7254828()
{
	/#
		assert(isdefined(level.var_6d87ac05) && isdefined(level.var_6d87ac05.name));
	#/
	/#
		assert(isdefined(level.var_5335b66f) && isdefined(level.var_5335b66f[level.var_6d87ac05.name]));
	#/
	var_93493c8 = level.var_5335b66f[level.var_6d87ac05.name];
	curr_time = gettime() - level.var_21e22beb;
	var_ee7ca64 = isdefined(level.var_ee7ca64[level.round_number]) && level.var_ee7ca64[level.round_number];
	if(isdefined(self.var_8d63de44) && self.var_8d63de44)
	{
		level.var_bccd8271 = curr_time;
	}
	foreach(player in getplayers())
	{
		best_time = player zm_stats::function_8e274b32(self.var_c2964c77);
		if(best_time == 0 && !var_ee7ca64)
		{
			level.var_ee7ca64[level.round_number] = 1;
			player luinotifyevent(#"hash_8d33c3be569f08", 1, self.row);
			if(level.onlinegame)
			{
				player function_cce105c8(#"hash_4bec5ec5865b0b5b", 1, var_93493c8, 2, level.round_number);
				player function_4835d26a();
			}
		}
		player zm_stats::function_31931250(self.var_c2964c77, curr_time);
		best_time = player zm_stats::function_b1520544(self.var_c2964c77);
		if(best_time == 0 || curr_time < best_time)
		{
			player zm_stats::function_49469f35(self.var_c2964c77, curr_time);
		}
		best_time = zm_stats::function_c9d32eb9(self.var_c2964c77);
		if(best_time == 0 || curr_time < best_time)
		{
			zm_stats::set_match_stat(self.var_c2964c77, curr_time);
		}
		best_time = player zm_stats::function_e4358abd(self.var_c2964c77);
		if(best_time == 0 || curr_time < best_time)
		{
			player zm_stats::function_9daadcaa(self.var_c2964c77, curr_time);
		}
		if(isdefined(self.var_8d63de44) && self.var_8d63de44)
		{
			player notify(#"stop_player_monitor_time_played");
		}
		player zm_stats::increment_challenge_stat(self.challenge_stat, 1);
		if(level.round_number == 20)
		{
			player contracts::function_5b88297d(#"hash_4e5a4f28d918179c");
		}
		if(zm_trial::function_ba9853db() == 0)
		{
			if(isdefined(self.var_191009a6))
			{
				player zm_stats::increment_challenge_stat(self.var_191009a6, 1);
			}
			if(level.round_number == 10)
			{
				player contracts::function_5b88297d(#"hash_e0f3cb0f4c8c82d");
			}
		}
	}
}

