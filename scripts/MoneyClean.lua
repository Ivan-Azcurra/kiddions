local function Text(text)
	menu.add_action(text, function() end)
end
 
Text("RemoveSpammedMoney")
 
menu.add_float_range("Clean", 1000000.0, 1000000, 100000000.0, function() 
	return globals.get_int(262145 + 20082)
end, function(value)
	globals.set_int(262145 + 20082, value)
end)
