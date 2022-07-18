local mpx = stats.get_int("MPPLY_LAST_MP_CHAR")
 
local DDSt = menu.add_submenu("D'day")
 
local DDHeist = {}
DDHeist[1] = "Data Breaches"
DDHeist[2] = "Bogdan Problem"
DDHeist[3] = "Doomsday Scenario"
DDSt:add_array_item("Setup D'Day", DDHeist, function() return 3 end, function(ActNum)
	if ActNum == 1 then
		DProg = 503
		DStat = 229383
	elseif ActNum == 2 then
		DProg = 240
		DStat = 229378
	else
		DProg = 16368
		DStat = 229380
	end
		stats.set_int("MP"..mpx.."_GANGOPS_FLOW_MISSION_PROG", DProg)
		stats.set_int("MP"..mpx.."_GANGOPS_HEIST_STATUS", DStat)
		stats.set_int("MP"..mpx.."_GANGOPS_FLOW_NOTIFICATIONS", 1557)
end)
 
DDC1 = 0
DDC2 = 0
DDC3 = 0
DDC4 = 0

if globals.get_int(1791588) <= 10000 then
	DDSt:add_int_range("Doomsday Player 1", 5.0, 15, 100, function() return globals.get_int(1963626) end, function(p1)
		DDC1=p1
	end)
	DDSt:add_int_range("Doomsday Player 2", 5.0, 15, 100, function() return globals.get_int(1963627) end, function(p2)
		DDC2=p2
	end)
	DDSt:add_int_range("Doomsday Player 3", 5.0, 15, 100, function() return globals.get_int(1963628) end, function(p3)
		DDC3=p3
	end)
	DDSt:add_int_range("Doomsday Player 4", 5.0, 15, 100, function() return globals.get_int(1963629) end, function(p4)
		DDC4=p4
	end)
	local DDHE = {}
	DDHE[1] = "Selected"
	DDHE[2] = "All 100%"
	DDHE[3] = "Others 100%"
	DDHE[4] = "Others 85%"
	DDSt:add_array_item("                        ---[[Set]]---", DDHE, function() return 1 end, function(DDc)
		if DDc == 1 then goto ONT
		elseif DDc == 2 then
			DDC1, DDC2, DDC3, DDC4 = 100, 100, 100, 100
		elseif DDc == 3 then
			DDC1 = 15
			DDC2, DDC3, DDC4 = 100, 100, 100
		elseif DDc == 4 then
			DDC1 = 15
			DDC2, DDC3, DDC4 = 85, 85, 85
		end
		::ONT::
		globals.set_int(1963626, DDC1)
		globals.set_int(1963627, DDC2)
		if globals.get_int(1963628) == nil then
			goto CT
		elseif globals.get_int(1963628) >= 0 then
			globals.set_int(1963628, DDC3)
			if globals.get_int(1963629) == nil then
				goto CT
			elseif globals.get_int(1963629) >= 0 then
				globals.set_int(1963629, DDC4)
			end
		end
		::CT::
	end)
end
 
local AptH = menu.add_submenu("Apartment Heists")
AptH:add_action("Go to Current Heist Finale", function()
	PlayerIndex = globals.get_int(1574907)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		stats.set_int("MP"..mpx.."_HEIST_PLANNING_STAGE", -1)
end)
 
 
--Text("         ((((HEIST CUT - Set to change))))")
if globals.get_int(1765608) <= 10000 then
	AC1 = 0
	AC2 = 0
	AC3 = 0
	AC4 = 0
 
	AptH:add_int_range("Apt Player 1", 5.0, 15, 100, function() 
		return globals.get_int(1937645)
	end, function(AP1Cut)
		AC1 = AP1Cut
	end)
 
	AptH:add_int_range("Apt Player 2", 5.0, 15, 100, function() 
		return globals.get_int(1937646)
	end, function(AP2Cut)
		AC2 = AP2Cut
	end)
 
	AptH:add_int_range("Apt Player 3", 5.0, 15, 100, function() 
		return globals.get_int(1937647)
	end, function(AP3Cut)
		AC3 = AP3Cut
	end)
 
	AptH:add_int_range("Apt Player 4", 5.0, 15, 100, function() 
		return globals.get_int(1937648)
	end, function(AP4Cut)
		AC4 = AP4Cut
	end)
 	local H4C1 = 15
	local H4C2 = 15
	local H4C3 = 15
	local H4C4 = 15
	local APHE = {}
	APHE[1] = "Selected"
	APHE[2] = "All 100%"
	APHE[3] = "Others 100%"
	APHE[4] = "Others 85%"
	AptH:add_array_item("                 ---[[Set]]---", APHE, function() return 1 end, function(ApC)
		if ApC == 1 then goto CON
		elseif ApC == 2 then
			AC1, AC2, AC3, AC4 = 100, 100, 100, 100
		elseif ApC == 3 then
			AC1 = 15
			AC2, AC3, AC4 = 100, 100, 100
		elseif ApC == 4 then
			AC1 = 15
			AC2, AC3, AC4 = 85, 85, 85
		end
		::CON::
		globals.set_int(1937645, AC1)
		globals.set_int(1937646, AC2)
		globals.set_int(1937647, AC3)
		globals.set_int(1937648, AC4)
	end)
end