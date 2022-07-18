menu.add_action("Orbital Refund", function()
	globals.set_int(1964171, (1 << 1)) -- set bit 1
	sleep(0.1)
	globals.set_int(1964171, 0) -- Clear in case the script does not
end, function()
	return script("freemode"):is_active()
end)