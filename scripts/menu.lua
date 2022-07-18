local function Text(text)
	menu.add_action(text,  function() end)
end
Text("                       Recovery")
menu.add_int_range("RP (Correction)", 1, 0, 8000, function()
	local mpIndex = globals.get_int(1574907)
	if mpIndex > 1 or mpIndex < 0 then
		return
	end
	
	local currentRP = 0
	
	if mpIndex == 0 then
		currentRP = stats.get_int("MP0_CHAR_SET_RP_GIFT_ADMIN")
	else
		currentRP = stats.get_int("MP1_CHAR_SET_RP_GIFT_ADMIN")
	end
	
	if currentRP <= 0 then
		currentRP = globals.get_int(1655629 + mpIndex)
	end
 
	local rpLevel = 0
	for i = 0,8000 do
		if currentRP < globals.get_int(294329 + i) then
			break
		else
			rpLevel = i
		end
	end
	
	return rpLevel
end, function(value)
	local mpIndex = globals.get_int(1574907)
	if mpIndex > 1 or mpIndex < 0 then
		return
	end
	
	local newRP = globals.get_int(294329 + value) + 100
	
	if mpIndex == 0 then
		stats.set_int("MP0_CHAR_SET_RP_GIFT_ADMIN", newRP)
	else
		stats.set_int("MP1_CHAR_SET_RP_GIFT_ADMIN", newRP)
	end
end)
local function PedDrop()
	local position = localplayer:get_position()
	position.z = position.z + 30

	for p in replayinterface.get_peds() do
		if p == nil or p == localplayer then
			goto continue
		end
		
		if p:get_pedtype() < 4 then
			goto continue
		end
		
		if p:is_in_vehicle() then
			goto continue
		end

		p:set_position(position)

		if p:get_health() > 99 then
			p:set_position(position)
			p:set_freeze_momentum(true)
			p:set_health(0)
			p:set_wallet(2000)
			break
		end

		::continue::
	end
end
menu.add_action("Ped Money [60k/10 Min]", PedDrop)	
menu.add_action("Max Skills", function()
	mpIndex = globals.get_int(1574907)
	if mpIndex == 0 then
		stats.set_int("MP0_SCRIPT_INCREASE_STAM", 100)
                stats.set_int("MP0_SCRIPT_INCREASE_STRN", 100)
                stats.set_int("MP0_SCRIPT_INCREASE_LUNG", 100)
                stats.set_int("MP0_SCRIPT_INCREASE_DRIV", 100)
                stats.set_int("MP0_SCRIPT_INCREASE_FLY", 100)
                stats.set_int("MP0_SCRIPT_INCREASE_SHO", 100)
                stats.set_int("MP0_SCRIPT_INCREASE_STL", 100)
                stats.set_int("MP0_SCRIPT_INCREASE_MECH", 100)
	else
		stats.set_int("MP1_SCRIPT_INCREASE_STAM", 100)
                stats.set_int("MP1_SCRIPT_INCREASE_STRN", 100)
                stats.set_int("MP1_SCRIPT_INCREASE_LUNG", 100)
                stats.set_int("MP1_SCRIPT_INCREASE_DRIV", 100)
                stats.set_int("MP1_SCRIPT_INCREASE_FLY", 100)
                stats.set_int("MP1_SCRIPT_INCREASE_SHO", 100)
                stats.set_int("MP1_SCRIPT_INCREASE_STL", 100)
                stats.set_int("MP1_SCRIPT_INCREASE_MECH", 100)
	end
end)
menu.add_action("Nightclub Popularity (Max)", function()
	mpIndex = globals.get_int(1574907)
	if mpIndex == 0 then
		stats.set_int("MP0_CLUB_POPULARTY", 1000)
	else
		stats.set_int("MP1_CLUB_POPULARTY", 1000)
	end
end)
menu.add_action("Skip Cayo Perico Missions", function()
	mpIndex = globals.get_int(1574907)
	if mpIndex == 0 then
		stats.set_int("MP0_H4CNF_BS_GEN", 131071)
	        stats.set_int("MP0_H4CNF_WEAPONS", 1)
	        stats.set_int("MP0_H4CNF_WEP_DISRP", 3)
	        stats.set_int("MP0_H4CNF_ARM_DISRP", 3)
	        stats.set_int("MP0_H4CNF_HEL_DISRP", 3)
	        stats.set_int("MP0_H4CNF_TARGET", 0)
	        stats.set_int("MP0_H4CNF_BOLTCUT", 4424)
	        stats.set_int("MP0_H4CNF_UNIFORM", 5256)
	        stats.set_int("MP0_H4CNF_GRAPPEL", 5156)
	        stats.set_int("MP0_H4CNF_TROJAN", 5)
	        stats.set_int("MP0_H4LOOT_CASH_I", 0)
	        stats.set_int("MP0_H4LOOT_CASH_I_SCOPED", 0)
	        stats.set_int("MP0_H4LOOT_CASH_C", 0)
	        stats.set_int("MP0_H4LOOT_CASH_C_SCOPED", 0)
	        stats.set_int("MP0_H4LOOT_COKE_I", 0)
	        stats.set_int("MP0_H4LOOT_COKE_I_SCOPED", 0)
	        stats.set_int("MP0_H4LOOT_COKE_C", 0)
	        stats.set_int("MP0_H4LOOT_COKE_C_SCOPED", 0)
	        stats.set_int("MP0_H4LOOT_GOLD_I", 0)
	        stats.set_int("MP0_H4LOOT_GOLD_I_SCOPED", 0)
	        stats.set_int("MP0_H4LOOT_GOLD_C", 0)
	        stats.set_int("MP0_H4LOOT_GOLD_C_SCOPED", 0)
	        stats.set_int("MP0_H4LOOT_WEED_I", 0)
	        stats.set_int("MP0_H4LOOT_WEED_I_SCOPED", 0)
	        stats.set_int("MP0_H4LOOT_WEED_C", 0)
	        stats.set_int("MP0_H4LOOT_WEED_C_SCOPED", 0)
	        stats.set_int("MP0_H4LOOT_PAINT", 24)
	        stats.set_int("MP0_H4LOOT_PAINT_SCOPED", 24)
	        stats.set_int("MP0_H4LOOT_PAINT_V", 938863)
	        stats.set_int("MP0_H4_PROGRESS", 124271)
	        stats.set_int("MP0_H4_MISSIONS", 65279)
	        stats.set_int("MP0_H4_PLAYTHROUGH_STATUS", 40000)
	else
		stats.set_int("MP1_H4CNF_BS_GEN", 131071)
	        stats.set_int("MP1_H4CNF_WEAPONS", 1)
	        stats.set_int("MP1_H4CNF_WEP_DISRP", 3)
	        stats.set_int("MP1_H4CNF_ARM_DISRP", 3)
	        stats.set_int("MP1_H4CNF_HEL_DISRP", 3)
	        stats.set_int("MP1_H4CNF_TARGET", 0)
	        stats.set_int("MP1_H4CNF_BOLTCUT", 4424)
	        stats.set_int("MP1_H4CNF_UNIFORM", 5256)
	        stats.set_int("MP1_H4CNF_GRAPPEL", 5156)
	        stats.set_int("MP1_H4CNF_TROJAN", 5)
	        stats.set_int("MP1_H4LOOT_CASH_I", 0)
	        stats.set_int("MP1_H4LOOT_CASH_I_SCOPED", 0)
	        stats.set_int("MP1_H4LOOT_CASH_C", 0)
	        stats.set_int("MP1_H4LOOT_CASH_C_SCOPED", 0)
	        stats.set_int("MP1_H4LOOT_COKE_I", 0)
	        stats.set_int("MP1_H4LOOT_COKE_I_SCOPED", 0)
	        stats.set_int("MP1_H4LOOT_COKE_C", 0)
	        stats.set_int("MP1_H4LOOT_COKE_C_SCOPED", 0)
	        stats.set_int("MP1_H4LOOT_GOLD_I", 0)
	        stats.set_int("MP1_H4LOOT_GOLD_I_SCOPED", 0)
	        stats.set_int("MP1_H4LOOT_GOLD_C", 0)
	        stats.set_int("MP1_H4LOOT_GOLD_C_SCOPED", 0)
	        stats.set_int("MP1_H4LOOT_WEED_I", 0)
	        stats.set_int("MP1_H4LOOT_WEED_I_SCOPED", 0)
	        stats.set_int("MP1_H4LOOT_WEED_C", 0)
	        stats.set_int("MP1_H4LOOT_WEED_C_SCOPED", 0)
	        stats.set_int("MP1_H4LOOT_PAINT", 24)
	        stats.set_int("MP1_H4LOOT_PAINT_SCOPED", 24)
	        stats.set_int("MP1_H4LOOT_PAINT_V", 938863)
	        stats.set_int("MP1_H4_PROGRESS", 124271)
	        stats.set_int("MP1_H4_MISSIONS", 65279)
	        stats.set_int("MP1_H4_PLAYTHROUGH_STATUS", 40000)
	end
end)
menu.add_action("Orbital Cannon Reset", function()
	mpIndex = globals.get_int(1574907)
	if mpIndex == 0 then
		stats.set_int("MP0_ORBITAL_CANNON_COOLDOWN", 0)
	else
		stats.set_int("MP1_ORBITAL_CANNON_COOLDOWN", 0)
	end
end)