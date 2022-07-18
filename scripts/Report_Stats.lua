local function Text(text)
	menu.add_action(text,  function() end)
end
Text("                 ~View Report Stats~")
menu.add_int_range("Griefing", 1, 1, 100, function() return stats.get_int("MPPLY_GRIEFING") end, function() end)
menu.add_int_range("Exploits", 1, 1, 100, function() return stats.get_int("MPPLY_EXPLOITS") end, function() end)
menu.add_int_range("Bug Exploits", 1, 1, 100, function() return stats.get_int("MPPLY_GAME_EXPLOITS") end, function() end)
menu.add_int_range("Text Chat:Annoying Me", 1, 1, 100, function() return stats.get_int("MPPLY_TC_ANNOYINGME") end, function() end)
menu.add_int_range("Text Chat:Using Hate Speech", 1, 1, 100, function() return stats.get_int("MPPLY_TC_HATE") end, function() end)
menu.add_int_range("Voice Chat:Annoying Me", 1, 1, 100, function() return stats.get_int("MPPLY_VC_ANNOYINGME") end, function() end)
menu.add_int_range("Voice Chat:Using Hate Speech", 1, 1, 100, function() return stats.get_int("MPPLY_VC_HATE") end, function() end)
menu.add_int_range("Offensive Language", 1, 1, 100, function() return stats.get_int("MPPLY_OFFENSIVE_LANGUAGE") end, function() end)
menu.add_int_range("Offensive Tagplate", 1, 1, 100, function() return stats.get_int("MPPLY_OFFENSIVE_TAGPLATE") end, function() end)
menu.add_int_range("Offensive Content", 1, 1, 100, function() return stats.get_int("MPPLY_OFFENSIVE_UGC") end, function() end)
menu.add_int_range("Bad Crew Name", 1, 1, 100, function() return stats.get_int("MPPLY_BAD_CREW_NAME") end, function() end)
menu.add_int_range("Bad Crew Motto", 1, 1, 100, function() return stats.get_int("MPPLY_BAD_CREW_MOTTO") end, function() end)
menu.add_int_range("Bad Crew Status", 1, 1, 100, function() return stats.get_int("MPPLY_BAD_CREW_STATUS") end, function() end)
menu.add_int_range("Bad Crew Emblem", 1, 1, 100, function() return stats.get_int("MPPLY_BAD_CREW_EMBLEM") end, function() end)
menu.add_int_range("Friendly", 1, 1, 100, function() return stats.get_int("MPPLY_FRIENDLY") end, function() end)
menu.add_int_range("Helpful", 1, 1, 100, function() return stats.get_int("MPPLY_HELPFUL") end, function() end)
Text("-----------------> Killa B <-------------------")