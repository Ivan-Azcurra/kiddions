menu.register_hotkey(17, function()
	local heistScript = script("fm_mission_controller_2020")
	if heistScript then
		local cutterProgress = heistScript:get_float(28273 + 3)
		if cutterProgress then
			if cutterProgress > 0.0 and cutterProgress < 99.9 then
				heistScript:set_float(28273 + 3, 99.9)
			end
		end
	end
end)