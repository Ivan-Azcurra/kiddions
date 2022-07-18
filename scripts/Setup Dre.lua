menu.add_action("Set Up Dre Mission", function()
	PlayerIndex = globals.get_int(1574907)
	if PlayerIndex == 0 then
		stats.set_int("MP0_FIXER_STORY_BS", 4092)
		stats.set_int("MP0_FIXER_STORY_STRAND", -1)
	else
		stats.set_int("MP1_FIXER_STORY_BS", 4092)
		stats.set_int("MP1_FIXER_STORY_STRAND", -1)
	end
end)