local crank_menu = menu.add_submenu("Crew Rank")


local function Text(text)
	crank_menu:add_action(text, function() end)
end
Text("➫Crew Rank")  
Text("--------------------------------------------")
Text("1-After you set the value, change session")
Text("2-crew level do not decrease")
Text("3-EXP is added, meaning whatever level")
Text("   EXP you have will be summed with the")
Text("   EXP level you are setting.")
Text("--")
crank_menu:add_int_range("Set Crew-Rank", 1, 1, 100, function() 
	
end, function(value)
	if value == 1 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 0)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 0)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 0)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 0)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 0)
	end
	if value == 2 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 26)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 26)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 26)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 26)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 26)
	end
	if value == 3 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 64)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 64)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 64)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 64)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 64)
	end
	if value == 4 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 112)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 112)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 112)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 112)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 112)
	end
	if value == 5 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 180)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 180)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 180)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 180)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 180)
	end
	if value == 6 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 280)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 280)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 280)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 280)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 280)
	end
	if value == 7 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 379)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 379)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 379)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 379)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 379)
	end
	if value == 8 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 471)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 471)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 471)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 471)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 471)
	end
	if value == 9 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 582)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 582)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 582)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 582)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 582)
	end
	if value == 10 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 706)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 706)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 706)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 706)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 706)
	end
	if value == 11 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 838)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 838)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 838)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 838)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 838)
	end
	if value == 12 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 982)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 932)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 932)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 932)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 932)
	end
	if value == 13 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 1138)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 1138)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 1138)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 1138)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 1138)
	end
	if value == 14 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 1300)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 1300)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 1300)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 1300)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 1300)
	end
	if value == 15 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 1476)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 1476)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 1476)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 1476)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 1476)
	end
	if value == 16 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 1658)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 1658)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 1658)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 1658)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 1658)
	end
	if value == 17 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 1852)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 1852)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 1852)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 1852)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 1892)
	end
	if value == 18 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 2055)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 2055)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 2055)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 2055)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 2055)
	end
	if value == 19 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 2267)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 2267)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 2267)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 2267)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 2267)
	end
	if value == 20 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 2491)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 2491)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 2491)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 2941)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 2941)
	end
	if value == 21 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 2720)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 2720)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 2720)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 2720)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 2720)
	end
	if value == 22 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 2961)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 2961)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 2961)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 2961)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 2961)
	end
	if value == 23 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 3211)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 3211)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 3211)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 3211)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 3211)
	end
	if value == 24 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 3470)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 3470)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 3470)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 3470)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 3470)
	end
	if value == 25 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 3728)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 3728)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 3728)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 3728)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 3728)
	end
	if value == 26 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 4014)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 4014)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 4014)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 4014)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 4014)
	end
	if value == 27 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 4300)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 4300)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 4300)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 4300)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 4300)
	end
	if value == 28 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 4594)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 4594)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 4594)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 4594)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 4594)
	end
	if value == 29 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 4897)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 4897)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 4897)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 4897)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 4897)
	end
	if value == 30 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 5208)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 5208)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 5208)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 5208)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 5208)
	end
	if value == 31 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 5529)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 5529)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 5529)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 5529)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 5529)
	end
	if value == 32 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 5858)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 5858)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 5858)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 5858)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 5858)
	end
	if value == 33 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 6197)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 6197)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 6197)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 6197)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 6197)
	end
	if value == 34 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 6541)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 6541)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 6541)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 6541)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 6541)
	end
	if value == 35 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 6897)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 6897)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 6897)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 6897)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 6897)
	end
	if value == 36 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 7258)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 7258)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 7258)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 7258)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 7258)
	end
	if value == 37 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 7629)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 7629)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 7629)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 7629)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 7629)
	end
	if value == 38 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 8008)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 8008)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 8008)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 8008)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 8008)
	end
	if value == 39 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 8397)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 8397)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 8397)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 8397)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 8397)
	end
	if value == 40 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 8794)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 8794)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 8794)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 8794)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 8794)
	end
	if value == 41 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 9197)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 9197)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 9197)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 9197)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 9197)
	end
	if value == 42 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 9611)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 9611)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 9611)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 9611)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 9611)
	end
	if value == 43 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 10029)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 10029)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 10029)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 10029)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 10029)
	end
	if value == 44 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 10458)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 10458)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 10458)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 10458)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 10458)
	end
	if value == 45 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 370500)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 370500)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 370500)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 370500)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 370500)
	end
	if value == 46 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 10897)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 10897)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 10897)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 10897)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 10897)
	end
	if value == 47 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 11794)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 11794)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 11794)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 11794)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 11794)
	end
	if value == 48 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 12252)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 12252)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 12252)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 12252)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 12252)
	end
	if value == 49 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 12723)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 12723)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 12723)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 12723)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 12723)
	end
	if value == 50 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 13200)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 13200)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 13200)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 13200)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 13200)
	end
	if value == 51 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 13682)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 13682)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 13682)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 13682)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 13682)
	end
	if value == 52 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 14177)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 14177)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 14177)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 14177)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 14177)
	end
	if value == 53 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 14676)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 14676)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 14676)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 14676)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 14676)
	end
	if value == 54 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 15185)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 15185)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 15185)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 15185)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 15185)
	end
	if value == 55 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 15700)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 15700)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 15700)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 15700)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 15700)
	end
	if value == 56 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 16223)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 16223)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 16223)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 16223)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 16223)
	end
	if value == 57 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 16753)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 16753)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 16753)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 16753)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 16753)
	end
	if value == 58 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 17294)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 17294)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 17294)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 17294)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 17294)
	end
	if value == 59 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 17838)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 17838)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 17838)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 17838)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 17838)
	end
	if value == 60 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 18394)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 18394)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 18394)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 18394)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 18394)
	end
	if value == 61 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 18955)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 18955)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 18955)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 18955)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 18955)
	end
	if value == 62 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 19524)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 19524)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 19524)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 19524)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 19524)
	end
	if value == 63 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 20100)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 20100)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 20100)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 20100)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 20100)
	end
	if value == 64 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 20685)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 20685)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 20685)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 20685)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 20685)
	end
	if value == 65 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 21276)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 21276)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 21276)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 21276)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 21276)
	end
	if value == 66 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 21877)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 21877)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 21877)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 21877)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 21877)
	end
	if value == 67 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 22485)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 22485)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 22485)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 22485)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 22485)
	end
	if value == 68 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 23100)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 23100)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 23100)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 23100)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 23100)
	end
	if value == 69 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 23721)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 23721)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 23721)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 23721)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 23721)
	end
	if value == 70 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 24350)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 24350)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 24350)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 24350)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 24350)
	end
	if value == 71 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 24988)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 24988)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 24988)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 24988)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 24988)
	end
	if value == 72 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 25632)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 25632)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 25632)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 25632)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 25632)
	end
	if value == 73 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 26282)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 26282)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 26282)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 26282)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 26282)
	end
	if value == 74 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 26941)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 26941)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 26941)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 26941)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 26941)
	end
	if value == 75 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 27609)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 27609)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 27609)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 27609)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 27609)
	end
	if value == 76 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 28282)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 28282)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 28282)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 28282)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 28282)
	end
	if value == 77 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 28962)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 28962)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 28962)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 28962)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 28962)
	end
	if value == 78 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 29650)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 29650)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 29650)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 29650)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 29650)
	end
	if value == 79 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 30347)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 30347)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 30347)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 30347)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 30347)
	end
	if value == 80 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 31050)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 31050)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 31050)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 31050)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 31050)
	end
	if value == 81 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 31759)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 31759)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 31759)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 31759)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 31759)
	end
	if value == 82 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 32477)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 32477)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 32477)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 32477)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 32477)
	end
	if value == 83 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 33200)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 33200)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 33200)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 33200)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 33200)
	end
	if value == 84 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 33952)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 33952)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 33952)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 33952)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 33952)
	end
	if value == 85 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 34671)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 34671)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 34671)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 34671)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 34671)
	end
	if value == 86 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 35418)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 35418)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 35418)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 35418)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 35418)
	end
	if value == 87 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 36170)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 36170)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 36170)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 36170)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 36170)
	end
	if value == 88 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 36929)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 36929)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 36929)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 36929)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 36929)
	end
	if value == 89 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 37697)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 37697)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 37697)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 37697)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 37697)
	end
	if value == 90 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 38473)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 38473)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 38473)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 38473)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 38473)
	end
	if value == 91 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 39253)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 39253)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 39253)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 39253)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 39253)
	end
	if value == 92 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 40041)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 40041)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 40041)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 40041)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 40041)
	end
	if value == 93 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 40838)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 40838)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 40838)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 40838)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 40838)
	end
	if value == 94 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 41641)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 41641)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 41641)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 41641)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 41641)
	end
	if value == 95 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 42450)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 42450)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 42450)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 42450)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 42450)
	end
	if value == 96 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 43268)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 43268)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 43268)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 43268)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 43268)
	end
	if value == 97 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 44091)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 44091)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 44091)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 44091)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 44091)
	end
	if value == 98 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 44921)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 44921)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 44921)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 44921)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 44921)
	end
	if value == 99 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 45759)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 45759)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 45759)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 45759)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 45759)
	end
	if value == 100 then
		stats.set_int("MPPLY_CREW_LOCAL_XP_0", 46599)
		stats.set_int("MPPLY_CREW_LOCAL_XP_1", 46599)
		stats.set_int("MPPLY_CREW_LOCAL_XP_2", 46599)
		stats.set_int("MPPLY_CREW_LOCAL_XP_3", 46599)
		stats.set_int("MPPLY_CREW_LOCAL_XP_4", 46599)
	end	
	

	
	
end)
 crank_menu:add_int_range("Current Crew-Rank", 0, 1, 8000, function() return stats.get_int("MPPLY_CURRENT_CREW_RANK") end, function(value)
end)
Text("--")
Text("➫ΞΛZТΞΛ#3171/SLON")  
Text("--------------------------------------------")