local function Text(text)
    	menu.add_action(text, function() end)
    end
     
    Text("--------------Special Cargo--------------")
     
    menu.add_int_range("Price per Crate", 5500000, 10000, 5500000, function() 
    	return globals.get_int(262145 + 15596)
    end, function(value)
    	globals.set_int(262145 + 15596, value)
    end)
     
    menu.add_int_range("Price per 2 Crate", 2750000, 11000, 2750000, function() 
    	return globals.get_int(262145 + 15597)
    end, function(value)
    	globals.set_int(262145 + 15597, value)
    end)
     
    menu.add_int_range("Price per 3 Crate", 1840000, 12000, 1840000, function() 
    	return globals.get_int(262145 + 15598)
    end, function(value)
    	globals.set_int(262145 + 15598, value)
    end)
     
    menu.add_int_range("Special Cargo CD Buy", 300000, 0, 300000, function() 
    	return globals.get_int(262145 + 15367)
    end, function(value)
    	globals.set_int(262145 + 15367, value)
    end)
     
    menu.add_int_range("Special Cargo CD Sell", 1800000, 0, 1800000, function() 
    	return globals.get_int(262145 + 15368)
    end, function(value)
    	globals.set_int(262145 + 15368, value)
    end)
    Text("-------------------End-------------------")