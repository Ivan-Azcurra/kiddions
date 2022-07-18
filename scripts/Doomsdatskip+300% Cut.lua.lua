local demo_menu = menu.add_submenu("Doomsday Skip + Cut Editor")
local function Text(text)
	demo_menu:add_action(text, function() end)
end
Text(" _____________Doomsday Setup______________")
 
demo_menu:add_int_range("Data/Bogdan/Doomsday)", 1, 1, 3, function() return 1 end, function(ActNum)
	if ActNum == 1 then
		DProg = 503
		DStat = 229383
	elseif ActNum == 2 then
		DProg = 240
		DStat = 229378
	else
		DProg = 16368
		DStat = 229380
	end
	PlayerIndex = globals.get_int(1574915)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		stats.set_int(mpx .. "GANGOPS_FLOW_MISSION_PROG", DProg)
		stats.set_int(mpx .. "GANGOPS_HEIST_STATUS", DStat)
		stats.set_int(mpx .. "GANGOPS_FLOW_NOTIFICATIONS", 1557)
end)
 


local function Text(text)
	menu.add_action(text, function() end)
end
Text("--------------DoomsDay Thanks to Boredom1234--------------------")
 demo_menu:add_int_range("Doomsday Player1", 300.0, 15, 305, function() 
	return globals.get_int(1963626)
end, function(value)
	globals.set_int(1963626, value)
end)
 
 demo_menu:add_int_range("Doomsday Player2", 300.0, 15, 305, function() 
	return globals.get_int(1963627)
end, function(value)
	globals.set_int(1963627, value)
end)
 
 demo_menu:add_int_range("Doomsday Player3", 300.0, 15, 305,function() 
	return globals.get_int(1963628)
end, function(value)
	globals.set_int(1963628, value)
end)
 
 demo_menu:add_int_range("Doomsday Player4", 300.0, 15, 305, function() 
	return globals.get_int(1963629)
end, function(value)
	globals.set_int(1963629, value)
end)