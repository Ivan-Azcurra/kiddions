local enable = false  --ExplodeLoop hotkey default(on/off>true/false)
local mpx = stats.get_int("MPPLY_LAST_MP_CHAR")
local function switch()
	if stats.get_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED") == 0 then
		stats.set_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED", 8192)
		sleep(1.0)
		menu.send_key_press(155)
	else
		stats.set_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED", 0)
	end
end
if enable then
	local Exploop = menu.register_hotkey(105, switch)
else
	local Exploop
end
local function LooP(e)
	if e then
		Exploop = menu.register_hotkey(105, switch)
	else
		menu.remove_hotkey(Exploop)
	end
end
menu.add_toggle("ExplodeLoop(NUM9)", function()
	return enable
end, function()
	enable = not enable 
	LooP(enable)
end)

