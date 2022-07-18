local function Text(text)
	menu.add_action(text, function() end)
end
Text(" _____________Doomsday Setup______________")
 
menu.add_int_range("Data Breaches/Bogdan Problem/Doomsday Scenario)", 1, 1, 3, function() return 1 end, function(ActNum)
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
	PlayerIndex = globals.get_int(1574907)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		stats.set_int(mpx .. "GANGOPS_FLOW_MISSION_PROG", DProg)
		stats.set_int(mpx .. "GANGOPS_HEIST_STATUS", DStat)
		stats.set_int(mpx .. "GANGOPS_FLOW_NOTIFICATIONS", 1557)
end)
 
Text("                    ((((HEIST CUT))))")
menu.add_int_range("Doomsday Player 1", 5.0, 15, 100, function() 
	return globals.get_int(1791586)
end, function(value)
	globals.set_int(1791586, value)
end)
 
menu.add_int_range("Doomsday Player 2", 5.0, 15, 100, function() 
	return globals.get_int(1791587)
end, function(value)
	globals.set_int(1791587, value)
end)
 
menu.add_int_range("Doomsday Player 3", 5.0, 15, 100, function() 
	return globals.get_int(1791588)
end, function(value)
	globals.set_int(1791588, value)
end)
 
menu.add_int_range("Doomsday Player 4", 5.0, 15, 100, function() 
	return globals.get_int(1791589)
end, function(value)
	globals.set_int(1791589, value)
end)
 
Text(" _____________Apartment Heists_____________")
menu.add_action("Go to Current Heist Finale", function()
	PlayerIndex = globals.get_int(1574907)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		stats.set_int(mpx .. "HEIST_PLANNING_STAGE", -1)
end)
 
 
Text("                    ((((HEIST CUT))))")
menu.add_int_range("Apt Player 1", 5.0, 15, 100, function() 
	return globals.get_int(1765608)
end, function(value)
	globals.set_int(1765608, value)
end)
 
menu.add_int_range("Apt Player 2", 5.0, 15, 100, function() 
	return globals.get_int(1765609)
end, function(value)
	globals.set_int(1765609, value)
end)
 
menu.add_int_range("Apt Player 3", 5.0, 15, 100, function() 
	return globals.get_int(1765610)
end, function(value)
	globals.set_int(1765610, value)
end)
 
menu.add_int_range("Apt Player 4", 5.0, 15, 100, function() 
	return globals.get_int(1765611)
end, function(value)
	globals.set_int(1765611, value)
end)
Text("                    ((((     END    ))))")