local casino_menu = menu.add_submenu("Skip Casino Heist")
PlayerIndex = globals.get_int(1574907)

	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
 
local function Text(text)
	menu.add_action(text, function() end)
end
Text(" _______________Casino Setup________________")
 
casino_menu:add_int_range("Target - Cash1/Gold2/Art3/Diam4", 1, 1, 4, function() return stats.get_int(mpx .. "H3OPT_TARGET") end, function(TGT)
	PlayerIndex = globals.get_int(1574915)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
	if TGT == 1 then
		H3t = 0
	elseif TGT == 2 then
		H3t = 1
	elseif TGT == 3 then
		H3t = 2
	elseif TGT == 4 then
		H3t = 3
	end
		stats.set_int(mpx .. "H3OPT_TARGET", H3t)
end)
 
casino_menu:add_int_range("Random Approach - Normal/Hard", 1, 1, 2, function() return 1 end, function(H3lvl)
	LstAp = stats.get_int(mpx .. "H3_LAST_APPROACH")
	HrdAp = stats.get_int(mpx .. "H3_HARD_APPROACH")
	PlayerIndex = globals.get_int(1574915)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
	if H3lvl == 2 then
		Apr = HrdAp
	else
		if LstAp == 2 and HrdAp == 3 then
		Apr = 1
		elseif LstAp == 3 and HrdAp == 2 then
		Apr = 1
		elseif LstAp == 3 and HrdAp == 1 then
		Apr = 2
		elseif LstAp == 1 and HrdAp == 3 then
		Apr = 2
		else
		Apr = 3
		end
	end
		stats.set_int(mpx .. "H3OPT_APPROACH", Apr)
end)
 
casino_menu:add_int_range("EasyApproach - Snk/BgCon/Aggr", 1, 1, 3, function() return 1 end, function(Approach)
	PlayerIndex = globals.get_int(1574915)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
	if Approach == 1 then
		LastApproach = 3
		HardApproach = 2
		Weapon = 1
	elseif Approach == 2 then
		LastApproach = 3
		HardApproach = 1
		Weapon = 0
	else
		LastApproach = 1
		HardApproach = 2
		Weapon = 0
	end
		stats.set_int(mpx .. "H3_LAST_APPROACH", LastApproach)
		stats.set_int(mpx .. "H3_HARD_APPROACH", HardApproach)
		stats.set_int(mpx .. "H3OPT_APPROACH", Approach)
end)
 
casino_menu:add_int_range("HardApproach - Snk/BgCon/Aggr", 1, 1, 3, function() return stats.get_int(mpx .. "H3_HARD_APPROACH") end, function(Approach)
	PlayerIndex = globals.get_int(1574915)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
	if Approach == 1 then
		LastApproach = 3
		HardApproach = 1
	elseif Approach == 2 then
		LastApproach = 3
		HardApproach = 2
	else
		LastApproach = 1
		HardApproach = 3
	end
		stats.set_int(mpx .. "H3_LAST_APPROACH", LastApproach)
		stats.set_int(mpx .. "H3_HARD_APPROACH", Approach)
		stats.set_int(mpx .. "H3OPT_APPROACH", Approach)
end)
 
casino_menu:add_action("             ---[[Complete Board1]]---", function()
	PlayerIndex = globals.get_int(1574915)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		stats.set_int(mpx .. "H3OPT_BITSET1", -1)
end)
 
casino_menu:add_int_range("Hacker - Rickie 3%/Avi 10%/Paige 9%", 1, 1, 3, function() return stats.get_int(mpx .. "H3OPT_CREWHACKER") end, function(Hkr)
	PlayerIndex = globals.get_int(1574915)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
	if Hkr == 1 then
		H3Hcr = 1
	elseif Hkr == 2 then
		H3Hcr = 4
	else
		H3Hcr = 5
	end
		stats.set_int(mpx .. "H3OPT_CREWHACKER", H3Hcr)
end)
 
Text("Mask - Geom/Huntr/OniH/Emj/Skll/Fruit/")
casino_menu:add_int_range("Grlla/Clwn/Anml9/Riot/OniF/Hockey", 1, 1, 12, function() return stats.get_int(mpx .. "H3OPT_MASKS") end, function(H3Msk)
	PlayerIndex = globals.get_int(1574915)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
--	hMsk = H3Msk
		stats.set_int(mpx .. "H3OPT_MASKS", H3Msk)
end)
 
casino_menu:add_action("       ---[[Complete Board2 - Finale]]---", function()
	PlayerIndex = globals.get_int(1574915)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		stats.set_int(mpx .. "H3OPT_DISRUPTSHIP", 3)
		stats.set_int(mpx .. "H3OPT_KEYLEVELS", 2)
		stats.set_int(mpx .. "H3OPT_CREWWEAP", 1)
		stats.set_int(mpx .. "H3OPT_CREWDRIVER", 1)
		stats.set_int(mpx .. "H3OPT_VEHS", 3)
		stats.set_int(mpx .. "H3OPT_WEAPS", 0)
		stats.set_int(mpx .. "H3OPT_BITSET0", -129)
end)
 
local function Text(text)
	casino_menu:add_action(text, function() end)
end
Text("--------------Casino Things--------------------")
 
casino_menu:add_int_range("Casino Player1 Cut", 5.0, 15, 100, function() 
	return globals.get_int(1966739+1497+736+92+1)
end, function(value)
	globals.set_int(1966739+1497+736+92+1, value)
end)
 
casino_menu:add_int_range("Casino Player2 Cut", 5.0, 15, 100, function() 
	return globals.get_int(1966740+1497+736+92+1)
end, function(value)
	globals.set_int(1966740+1497+736+92+1, value)
end)
 
casino_menu:add_int_range("Casino Player3 Cut", 5.0, 15, 100, function() 
	return globals.get_int(1966741+1497+736+92+1)
end, function(value)
	globals.set_int(1966741+1497+736+92+1, value)
end)
 
casino_menu:add_int_range("Casino Player4 Cut", 5.0, 15, 100, function() 
	return globals.get_int(1966742+1497+736+92+1)
end, function(value)
	globals.set_int(1966742+1497+736+92+1, value)
end)