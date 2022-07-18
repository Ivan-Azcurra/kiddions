local cont_menu = menu.add_submenu("Contract DLC")


PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
 local function Text(text)
	cont_menu:add_action(text, function() end)
end
Text("--------------------------------------------")
Text("CONTRACT FINAL MISSION")
Text("--")
local tuto_menu = cont_menu:add_submenu("Tutorial")
local function Text2(text)
	tuto_menu:add_action(text, function() end)
end
Text2("--CONTRACT FINAL MISSION--")
Text2("1. Skip the Setup Missions")
Text2(">Skip Setup Missions<")
Text2("2. Modify the Final-Payout")
Text2(">Change Final-Payout<")
Text2("⚠️ You can only play the mission every ")
Text2("30min,otherwise you won't get the money")
Text2("--HITMAN MISSIONS--")
Text2("1. Set Cooldown to 0sec")
Text2(">Change Cooldown<")
Text2("2. Modify the Mission-Payout")
Text2(">Change Mission-Payout<")
Text2("2. Modify the Mission-Bonus")
Text2(">Change Mission-Bonus<")
Text("--")
cont_menu:add_action("Skip Setup Missions", function() 
	PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		stats.set_int(mpx .. "FIXER_GENERAL_BS", -1)
		stats.set_int(mpx .. "FIXER_COMPLETED_BS", -1)
		stats.set_int(mpx .. "FIXER_STORY_BS", -1)
		stats.set_int(mpx .. "FIXER_STORY_COOLDOWN", -1)
end)
cont_menu:add_int_range("Change Final-Payout", 1000000, 1000000, 2500000, function() 
	return globals.get_int(293534)
end, function(value)
	globals.set_int(293534, value)
end)
Text("--------------------------------------------")
Text("HITMAN-MISSIONS")
Text("--")
cont_menu:add_int_range("Change Cooldown", 1200000, 0, 1200000, function() 
	return globals.get_int(293568)
end, function(value)
	globals.set_int(293568, value)
end)
cont_menu:add_int_range("Change Mission-Payout", 10000, 0, 175000, function() 
	return globals.get_int(293516)
end, function(value)
	globals.set_int(293516, value)
end)
cont_menu:add_int_range("Change Mission-Bonus", 10000, 0, 175000, function() 
	return globals.get_int(293517)
end, function(value)
	globals.set_int(293517, value)
end)
Text("--------------------------------------------")
Text("➫ΞΛZТΞΛ#3171/SLON")