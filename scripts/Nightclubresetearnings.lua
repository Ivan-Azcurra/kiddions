menu.add_action("RestEarningsstock", function()
	PlayerIndex = globals.get_int(1312763)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
	stats.set_int(mpx.."NIGHTCLUB_JOBS_DONE", 0)
	stats.set_int(mpx.."NIGHTCLUB_EARNINGS", 0)
        stats.set_int(mpx.."NIGHTCLUB_VIP_APPEAR", 0)
        stats.set_int(mpx.."NIGHTCLUB_JOBS_DONE", 0) 
        stats.set_int(mpx.."HUB_SALES_COMPLETED", 0)
        stats.set_int(mpx.."HUB_EARNINGS", 0)
        stats.set_int(mpx.."DANCE_COMBO_DURATION_MINS", 0)
        stats.set_int(mpx.."NIGHTCLUB_PLAYER_APPEAR", 0)
        stats.set_int(mpx.."LIFETIME_HUB_GOODS_SOLD", 0)
        stats.set_int(mpx.."LIFETIME_HUB_GOODS_MADE", 0)
end)
