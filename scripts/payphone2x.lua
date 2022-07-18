local function Text(text)
	menu.add_action(text, function() end)
end
Text("----------Payphone Payments----------")
 
menu.add_float_range("Payphone Payment", 100000.0, 15000, 100000, function() 
	return globals.get_int(262145 + 31355)
end, function(value)
	globals.set_int(262145 + 31355, value)
end)
 
 
menu.add_float_range("Payphone Bonus", 0.0, 140000, 0, function() 
	return globals.get_int(262145 + 31356)
end, function(value)
	globals.set_int(262145 + 31356, value)
end)

menu.add_int_range("Payphone cooldown", 1200000, 0, 1200000, function() 
    return globals.get_int(293552)
end, function(value)
    globals.set_int(293552, value)
end)

Text("----------Credits to Boredom1234----------")