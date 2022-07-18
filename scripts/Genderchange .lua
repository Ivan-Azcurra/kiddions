menu.add_action("Allow Gender Change", function()
	mpIndex = globals.get_int(1312763)
	if mpIndex == 0 then
		stats.set_int("MP0_ALLOW_GENDER_CHANGE", 52)
	else
		stats.set_int("MP1_ALLOW_GENDER_CHANGE", 52)
	end
end)