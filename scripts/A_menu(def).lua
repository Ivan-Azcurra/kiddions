local enable = false   --QuickFire default(on/off>true/false)
local enable2 = true  --QuickTP default(on/off>true/false)
local enable4 = true   --VehAcclTweaks

local mpx = stats.get_int("MPPLY_LAST_MP_CHAR")

local original_max_health = 0.0
local function GetUndeadOffradar()
	if localplayer == nil then
		return nil
	end
	max_health = localplayer:get_max_health()
	return max_health < 100.0
end
local function SetUndeadOffradar(value)
	if value == nil or localplayer == nil then
		return
	end
	if value then
		max_health = localplayer:get_max_health()
		if max_health >= 100.0 then
			original_max_health = max_health
		end
		localplayer:set_max_health(0.0)
	else
		if original_max_health >= 100 then
			localplayer:set_max_health(original_max_health)
		else
			localplayer:set_max_health(328.0)
		end
	end
end
menu.add_toggle("Undead offradar", GetUndeadOffradar, SetUndeadOffradar)
local function ToggleUndeadOffradar()
	value = GetUndeadOffradar()
	if value ~= nil then
		SetUndeadOffradar(not value)
	end
end
menu.register_hotkey(120, ToggleUndeadOffradar)

local bT = 0
local WR = 0
local function OnWeaponChanged(oldWeapon, newWeapon)
	if newWeapon ~= nil then
		if bT==0 then
			if localplayer:get_current_weapon():get_model_hash() == 1609356763 then
				newWeapon:set_time_between_shots(1)
			elseif localplayer:get_current_weapon():get_model_hash() == -697859071 then
				newWeapon:set_time_between_shots(0.5)
			end
		else
			newWeapon:set_time_between_shots(bT)
		end
		if WR~=0 then
			newWeapon:set_range(WR)
		else
			if localplayer:get_current_weapon():get_model_hash() == -697859071 then
				newWeapon:set_range(840)
			elseif localplayer:get_current_weapon():get_model_hash() == 1609356763 then
				newWeapon:set_range(610)
			end
		end
	end
end
------
if enable then
	local WCD = menu.register_callback('OnWeaponChanged', OnWeaponChanged)
else
	local WCD
end

WepCD=menu.add_submenu("Weapon CD and extras")
local function WpCD(e)
	if e then
		WCD = menu.register_callback('OnWeaponChanged', OnWeaponChanged)
	else
		menu.remove_callback(WCD)
		bT = 0
		WR = 0
	end
end
WepCD:add_toggle("QuickFire-Atmzer,StnGun/Auto2,3)", function()
	return enable
end, function()
	enable = not enable 
	WpCD(enable)
end)
WepCD:add_float_range("2Time Between Shots for all", 0.1, 0.05, 4, function() return localplayer:get_current_weapon():get_time_between_shots() end, function(bT)
	localplayer:get_current_weapon():set_time_between_shots(bT)
end)
WepCD:add_float_range("3Weapon Range for all", 11, 10, 1000, function() return localplayer:get_current_weapon():get_range() end, function(WR)
	localplayer:get_current_weapon():set_range(WR)
end)


local TPF, TPU, TPD
local enable3 = false
local function TPup()
	if not enable3 then return end
	local newpos = localplayer:get_position() + vector3(0,0,2.5)
	if not localplayer:is_in_vehicle() then
		localplayer:set_position(newpos)
	else
		localplayer:get_current_vehicle():set_position(newpos)
	end
end
local function TPdn()
	if not enable3 then return end
	local newpos = localplayer:get_position() + vector3(0,0,-2.5)
	if not localplayer:is_in_vehicle() then
		localplayer:set_position(newpos)
	else
		localplayer:get_current_vehicle():set_position(newpos)
	end
end
local function TPfr()
	if not enable3 then return end
	menu.teleport_forward()
end
local function TPHk(e)
	if e then
		TPF = menu.register_hotkey(38, TPfr)
		TPU = menu.register_hotkey(39, TPup)
		TPD = menu.register_hotkey(37, TPdn)
	else
		menu.remove_hotkey(TPF)
		menu.remove_hotkey(TPU)
		menu.remove_hotkey(TPD)
	end
end
------
if enable2 then
	local TPH = menu.register_hotkey(110, function() enable3 = not enable3 TPHk(enable3) end)
else
	local TPH
end
local function TPHkS(e)
	if e then
		TPH = menu.register_hotkey(110, function() enable3 = not enable3 TPHk(enable3) end)
	else
		menu.remove_hotkey(TPH)
	end
end

WepCD:add_toggle("QuickTP(NumDel)", function()
	return enable2
end, function()
	enable2 = not enable2
	TPHkS(enable2)
end)

local OlA=0.2
local OlG=9.8
local function VehicleTweaks()
	if localplayer:is_in_vehicle() then
		if localplayer:get_current_vehicle():get_acceleration() == 0.47 then
			localplayer:get_current_vehicle():set_acceleration(OlA)
			localplayer:get_current_vehicle():set_gravity(OlG)
		elseif localplayer:get_current_vehicle():get_acceleration() <= 0.47 then
			if localplayer:get_current_vehicle():get_acceleration() >= 0.1 then
				OlA = localplayer:get_current_vehicle():get_acceleration()
				OlG = localplayer:get_current_vehicle():get_gravity()
				localplayer:get_current_vehicle():set_acceleration(0.47)
				localplayer:get_current_vehicle():set_gravity(14.8)
			end
		end
	end
end
if enable4 then
	menu.register_hotkey(192, VehicleTweaks)
end

local CD = menu.add_submenu("Mission CD")
CD:add_float_range("Security mission cooldown", 300000.0, 0, 300000, function() 
	return globals.get_int(262145 + 31345)
end, function(value)
	globals.set_int(262145 + 31345, value)
end)
CD:add_float_range("Payphone hit cooldown", 1200000.0, 60, 1200000, function() 
	return globals.get_int(262145 + 31423)
end, function(value)
	globals.set_int(262145 + 31423, value)
end)
CD:add_int_range("Between Jobs", 300000, 0, 300000, function() 
	return globals.get_int(262145 + 24304)
end, function(value)
	globals.set_int(262145 + 24304, value)
end)
CD:add_int_range("Robbery in Progress", 1800000, 0, 1800000, function() 
	return globals.get_int(262145 + 24305)
end, function(value)
	globals.set_int(262145 + 24305, value)
end)
CD:add_int_range("Data Sweep", 1800000, 0, 1800000, function() 
	return globals.get_int(262145 + 24306)
end, function(value)
	globals.set_int(262145 + 24306, value)
end)
CD:add_int_range("Targeted Data", 1800000, 0, 1800000, function() 
	return globals.get_int(262145 + 24307)
end, function(value)
	globals.set_int(262145 + 24307, value)
end)
CD:add_int_range("Diamond Shopping", 1800000, 0, 1800000, function() 
	return globals.get_int(262145 + 24308)
end, function(value)
	globals.set_int(262145 + 24308, value)
end)

menu.add_action("Dr. Dre Final Mission", function()
		stats.set_int("MP"..mpx.."_FIXER_STORY_BS", -1)
		stats.set_int("MP"..mpx.."_FIXER_STORY_STRAND", -1)
		stats.set_int("MP"..mpx.."_FIXER_STORY_COOLDOWN", -1)
end)

--menu.add_action("Check Player No. LEFT=0, Right=1", function()
	--if mpx == 0 then
	--	menu.send_key_down(65)
	--	sleep(1.0)
	--	menu.send_key_up(65)
	--else
		--menu.send_key_down(68)
		--sleep(1.0)
		--menu.send_key_up(68)
	--end
	
--end)

local function refillInventory()
	stats.set_int("MP"..mpx.."_NO_BOUGHT_YUM_SNACKS", 30)
	stats.set_int("MP"..mpx.."_NO_BOUGHT_HEALTH_SNACKS", 15)
	stats.set_int("MP"..mpx.."_NO_BOUGHT_EPIC_SNACKS", 5)
	stats.set_int("MP"..mpx.."_NUMBER_OF_ORANGE_BOUGHT", 10)
	stats.set_int("MP"..mpx.."_NUMBER_OF_BOURGE_BOUGHT", 10)
	stats.set_int("MP"..mpx.."_NUMBER_OF_CHAMP_BOUGHT", 5)
	stats.set_int("MP"..mpx.."_CIGARETTES_BOUGHT", 20)
	stats.set_int("MP"..mpx.."_MP_CHAR_ARMOUR_5_COUNT", 10)
	stats.set_int("MP"..mpx.."_BREATHING_APPAR_BOUGHT", 20)
end
menu.register_hotkey(107, refillInventory)	--num+

local LSCh = 2
if stats.get_bool("MP"..mpx.."_CARMEET_PV_CHLLGE_CMPLT") == true then
	LSCh = 1
else 
	LSCh = 0
end
menu.add_int_range("No. of Chllngs to Get Carmeet Prize", 1, 1, 100, function() 
	return LSCh
end, function(ChCn)
	stats.set_bool("MP"..mpx.."_CARMEET_PV_CHLLGE_CMPLT", true)
	stats.set_int("MP"..mpx.."_CARMEET_PV_CHLLGE_PRGSS", ChCn)
end)