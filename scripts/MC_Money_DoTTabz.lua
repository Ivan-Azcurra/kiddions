local function Text(text)
	menu.add_action(text,  function() end)
end
Text("-------------------MC $$--------------------")
Text("    ~Use the multiplier to get max 2.5mil~ ")
    menu.add_action("Speed up Production", function()	
    	globals.set_int(279345, 1) 
    	globals.set_int(279346, 1) 
    	globals.set_int(279344, 1) 
    	globals.set_int(279343, 1) 
    	globals.set_int(279342, 1) 
    end)
	menu.add_action("Reset Speed", function()	
    	globals.set_int(279345, 300000) --D
    	globals.set_int(279346, 720000) --$
    	globals.set_int(279344, 3000000) --C
    	globals.set_int(279343, 1800000) --M
    	globals.set_int(279342, 360000) --W
    end)
menu.add_float_range("Sale Multiplier Near", 0.5, 1, 1000, function() 
	return globals.get_float(281005)
end, function(value)
	globals.set_float(281005, value)
end)
menu.add_float_range("Sale Multiplier Far", 0.5, 1.5, 1000, function() 
	return globals.get_float(281006)
end, function(value)
	globals.set_float(281006, value)
end)
Text("-----------------> Killa B <-------------------")