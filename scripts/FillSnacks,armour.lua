local function refillInventory()
	mpx = "MP0_"
	mpIndex = globals.get_int(1574907)
	if mpIndex == 1 then
		mpx = "MP1_"
	end
	stats.set_int(mpx.."NO_BOUGHT_YUM_SNACKS", 30)
	stats.set_int(mpx.."NO_BOUGHT_HEALTH_SNACKS", 15)
	stats.set_int(mpx.."NO_BOUGHT_EPIC_SNACKS", 5)
	stats.set_int(mpx.."NUMBER_OF_ORANGE_BOUGHT", 10)
	stats.set_int(mpx.."NUMBER_OF_BOURGE_BOUGHT", 10)
	stats.set_int(mpx.."NUMBER_OF_CHAMP_BOUGHT", 5)
	stats.set_int(mpx.."CIGARETTES_BOUGHT", 20)
	stats.set_int(mpx.."MP_CHAR_ARMOUR_1_COUNT", 10)
	stats.set_int(mpx.."MP_CHAR_ARMOUR_2_COUNT", 10)
	stats.set_int(mpx.."MP_CHAR_ARMOUR_3_COUNT", 10)
	stats.set_int(mpx.."MP_CHAR_ARMOUR_4_COUNT", 10)
	stats.set_int(mpx.."MP_CHAR_ARMOUR_5_COUNT", 10)
	stats.set_int(mpx.."BREATHING_APPAR_BOUGHT,", 20)
end
 
menu.add_action("Refill Inventory", function()
	refillInventory()
end)