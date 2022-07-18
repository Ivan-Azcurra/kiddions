local demo_menu = menu.add_submenu("Skip Cayo Perico")

local function Text(text)
	demo_menu:add_action(text, function() end)
end
Text("_______________CayoSetup________________")
local function Text(text)
	demo_menu:add_action(text, function() end)
end
Text("Teq-0/Rub-1/Bon-2/Pink-3/Mad-4/Pan-5")
demo_menu:add_int_range("PrimaryTarget - Target:", 1, 0, 5, function() return 1 end, function(H4CNF_TARGET)
	PlayerIndex = globals.get_int(1574907)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
       if H4CNF_TARGET == 0 then
		Value = 0
	end
	if H4CNF_TARGET == 1 then
		Value = 1
	end
	if H4CNF_TARGET == 2 then
		Value = 2
	end
	if H4CNF_TARGET == 3 then
		Value = 3
	end
        if H4CNF_TARGET == 4 then
		Value = 4
	end
        if H4CNF_TARGET == 5 then
		Value = 5
	end
stats.set_int(mpx .. "H4CNF_TARGET",H4CNF_TARGET )
end)
Text("Gold-0/Coke-1/Weed-2/Cash-3")
demo_menu:add_int_range("Secondary Target - Target:", 1, 0, 3, function() return 1 end, function(sectarget)
	PlayerIndex = globals.get_int(1574907)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
       if sectarget == 0 then
          stats.set_int(mpx .. "H4LOOT_GOLD_C", 255)
          stats.set_int(mpx .. "H4LOOT_GOLD_C_SCOPED", 255)
          stats.set_int(mpx .. "H4LOOT_GOLD_V", 1251817)
          stats.set_int(mpx .. "H4LOOT_WEED_V", 0)
          stats.set_int(mpx .. "H4LOOT_COKE_V", 0)
          stats.set_int(mpx .. "H4LOOT_CASH_V", 0)
          stats.set_int(mpx .. "H4LOOT_COKE_I", 0)
          stats.set_int(mpx .. "H4LOOT_COKE_I_SCOPED", 0)
	  stats.set_int(mpx .. "H4LOOT_COKE_C", 0)
          stats.set_int(mpx .. "H4LOOT_COKE_C_SCOPED", 0)
          stats.set_int(mpx .. "H4LOOT_WEED_I", 0)
          stats.set_int(mpx .. "H4LOOT_WEED_I_SCOPED", 0)
          stats.set_int(mpx .. "H4LOOT_WEED_C", 0)
          stats.set_int(mpx .. "H4LOOT_WEED_C_SCOPED", 0)
          stats.set_int(mpx .. "H4LOOT_CASH_I", 0)
		stats.set_int(mpx .. "H4LOOT_CASH_I_SCOPED", 0)
		stats.set_int(mpx .. "H4LOOT_CASH_C", 0)
		stats.set_int(mpx .. "H4LOOT_CASH_C_SCOPED", 0)
                stats.set_int(mpx .. "H4LOOT_CASH_V", 0)
	end
	if sectarget == 1 then
		stats.set_int(mpx .. "H4LOOT_COKE_I", 0)
		stats.set_int(mpx .. "H4LOOT_COKE_I_SCOPED", 0)
		stats.set_int(mpx .. "H4LOOT_COKE_C", 255)
		stats.set_int(mpx .. "H4LOOT_COKE_C_SCOPED", 255)
                stats.set_int(mpx .. "H4LOOT_COKE_V", 938863)
                stats.set_int(mpx .. "H4LOOT_GOLD_I", 0)
                stats.set_int(mpx .. "H4LOOT_GOLD_I_SCOPED", 0)
                stats.set_int(mpx .. "H4LOOT_GOLD_V", 0)
                stats.set_int(mpx .. "H4LOOT_WEED_V", 0)
                stats.set_int(mpx .. "H4LOOT_CASH_V", 0)
                stats.set_int(mpx .. "H4LOOT_GOLD_C", 0)
                stats.set_int(mpx .. "H4LOOT_GOLD_C_SCOPED", 0)
                stats.set_int(mpx .. "H4LOOT_GOLD_V", 0)
                stats.set_int(mpx .. "H4LOOT_WEED_I", 0)
		stats.set_int(mpx .. "H4LOOT_WEED_I_SCOPED", 0)
		stats.set_int(mpx .. "H4LOOT_WEED_C", 0)
		stats.set_int(mpx .. "H4LOOT_WEED_C_SCOPED", 0)
                stats.set_int(mpx .. "H4LOOT_WEED_V", 0)
                stats.set_int(mpx .. "H4LOOT_CASH_I", 0)
		stats.set_int(mpx .. "H4LOOT_CASH_I_SCOPED", 0)
		stats.set_int(mpx .. "H4LOOT_CASH_C", 0)
		stats.set_int(mpx .. "H4LOOT_CASH_C_SCOPED", 0)
                stats.set_int(mpx .. "H4LOOT_CASH_V", 0)
	end
	if sectarget == 2 then
		stats.set_int(mpx .. "H4LOOT_WEED_I", 0)
		stats.set_int(mpx .. "H4LOOT_WEED_I_SCOPED", 0)
		stats.set_int(mpx .. "H4LOOT_WEED_C", 255)
		stats.set_int(mpx .. "H4LOOT_WEED_C_SCOPED", 255)
                stats.set_int(mpx .. "H4LOOT_WEED_V", 625908)
                stats.set_int(mpx .. "H4LOOT_COKE_I", 0)
		stats.set_int(mpx .. "H4LOOT_COKE_I_SCOPED", 0)
		stats.set_int(mpx .. "H4LOOT_COKE_C", 0)
		stats.set_int(mpx .. "H4LOOT_COKE_C_SCOPED", 0)
                stats.set_int(mpx .. "H4LOOT_COKE_V", 0)
                stats.set_int(mpx .. "H4LOOT_GOLD_V", 0)
                stats.set_int(mpx .. "H4LOOT_CASH_V", 0)
                stats.set_int(mpx .. "H4LOOT_GOLD_C", 0)
                stats.set_int(mpx .. "H4LOOT_GOLD_C_SCOPED", 0)
                stats.set_int(mpx .. "H4LOOT_GOLD_V", 0)
                stats.set_int(mpx .. "H4LOOT_CASH_I", 0)
		stats.set_int(mpx .. "H4LOOT_CASH_I_SCOPED", 0)
		stats.set_int(mpx .. "H4LOOT_CASH_C", 0)
		stats.set_int(mpx .. "H4LOOT_CASH_C_SCOPED", 0)
                stats.set_int(mpx .. "H4LOOT_CASH_V", 0)
	end
	if sectarget == 3 then
		stats.set_int(mpx .. "H4LOOT_CASH_I", 0)
		stats.set_int(mpx .. "H4LOOT_CASH_I_SCOPED", 0)
		stats.set_int(mpx .. "H4LOOT_CASH_C", 255)
		stats.set_int(mpx .. "H4LOOT_CASH_C_SCOPED", 255)
                stats.set_int(mpx .. "H4LOOT_CASH_V", 469431)
                stats.set_int(mpx .. "H4LOOT_GOLD_I", 0)
                stats.set_int(mpx .. "H4LOOT_GOLD_I_SCOPED", 0)
                stats.set_int(mpx .. "H4LOOT_GOLD_V", 0)
                stats.set_int(mpx .. "H4LOOT_COKE_I", 0)
		stats.set_int(mpx .. "H4LOOT_COKE_I_SCOPED", 0)
		stats.set_int(mpx .. "H4LOOT_COKE_C", 0)
		stats.set_int(mpx .. "H4LOOT_COKE_C_SCOPED", 0)
                stats.set_int(mpx .. "H4LOOT_COKE_V", 0)
                stats.set_int(mpx .. "H4LOOT_WEED_I", 0)
		stats.set_int(mpx .. "H4LOOT_WEED_I_SCOPED", 0)
		stats.set_int(mpx .. "H4LOOT_WEED_C", 0)
		stats.set_int(mpx .. "H4LOOT_WEED_C_SCOPED", 0)
                stats.set_int(mpx .. "H4LOOT_WEED_V", 0)
                stats.set_int(mpx .. "H4LOOT_GOLD_V", 0)
                stats.set_int(mpx .. "H4LOOT_WEED_V", 0)
                stats.set_int(mpx .. "H4LOOT_COKE_V", 0)
                stats.set_int(mpx .. "H4LOOT_GOLD_C", 0)
                stats.set_int(mpx .. "H4LOOT_GOLD_C_SCOPED", 0)
                stats.set_int(mpx .. "H4LOOT_GOLD_V", 0)
                stats.set_int(mpx .. "H4LOOT_WEED_I", 0)
		stats.set_int(mpx .. "H4LOOT_WEED_I_SCOPED", 0)
		stats.set_int(mpx .. "H4LOOT_WEED_C", 0)
		stats.set_int(mpx .. "H4LOOT_WEED_C_SCOPED", 0)
                stats.set_int(mpx .. "H4LOOT_WEED_V", 0)
                stats.set_int(mpx .. "H4LOOT_COKE_I", 0)
		stats.set_int(mpx .. "H4LOOT_COKE_I_SCOPED", 0)
		stats.set_int(mpx .. "H4LOOT_COKE_C", 0)
		stats.set_int(mpx .. "H4LOOT_COKE_C_SCOPED", 0)
                stats.set_int(mpx .. "H4LOOT_COKE_V", 0)
	end
end)
demo_menu:add_int_range("Set Up Max Cayo - # of Players:", 1, 1, 4, function() return 1 end, function(NumPlayers)
	if NumPlayers == 1 then
		LootValue = 538484
	end
	if NumPlayers == 2 then
		LootValue = 1235151 -- Use 50%/50% split
	end
	if NumPlayers == 3 then
		LootValue = 1375382 -- Use 35%/35%/30% split
	end
	if NumPlayers == 4 then
		LootValue = 1583484 -- Use 25%/25%/25%/25% split
	end

	PlayerIndex = globals.get_int(1574907)
	if PlayerIndex == 0 then
		stats.set_int("MP0_H4_PROGRESS", 124271)
		stats.set_int("MP0_H4CNF_BS_GEN", 131071)
		stats.set_int("MP0_H4CNF_WEAPONS", 5) -- 1: Aggressor [Assault SG + Machine Pistol + Machete + Grenade] 2: Conspirator [Military Rifle + AP + Knuckles + Stickies] 3: Crackshot [Sniper + AP + Knife + Molotov] 4: Saboteur [SMG Mk2 + SNS Pistol + Knife + Pipe Bomb] 5: Marksman [Assault Rifle MKII + Pistol MKII + Machete + Pipe Bomb]
		stats.set_int("MP0_H4_MISSIONS", -1)	
		stats.set_int("MP0_H4LOOT_PAINT", 0)
		stats.set_int("MP0_H4LOOT_PAINT_SCOPED", 0)
	else
		stats.set_int("MP1_H4_PROGRESS", 124271)    
		stats.set_int("MP1_H4CNF_BS_GEN", 131071)
		stats.set_int("MP1_H4CNF_WEAPONS", 5) -- 1: Aggressor [Assault SG + Machine Pistol + Machete + Grenade] 2: Conspirator [Military Rifle + AP + Knuckles + Stickies] 3: Crackshot [Sniper + AP + Knife + Molotov] 4: Saboteur [SMG Mk2 + SNS Pistol + Knife + Pipe Bomb] 5: Marksman [Assault Rifle MKII + Pistol MKII + Machete + Pipe Bomb]
		stats.set_int("MP1_H4_MISSIONS", -1)
		stats.set_int("MP1_H4LOOT_PAINT", 0)
		stats.set_int("MP1_H4LOOT_PAINT_SCOPED", 0)
	end
end)