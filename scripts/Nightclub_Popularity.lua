local function Text(text)
	menu.add_action(text, function() end)
end
Text(" ----------Nightclub Popularity---------------------")
menu.add_action("Nightclub Popularity", function()
	PlayerIndex = globals.get_int(1574907)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		stats.set_int(mpx .. "CLUB_POPULARITY", 1000)
end)
Text("-----------------> Killa B <-------------------")