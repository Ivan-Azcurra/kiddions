local playerlist_submenu = menu.add_submenu("Playerlist")
 
local function get_player_text(i)
	local ply = player.get_player_ped(i)
	if not ply then return end
	return player.get_player_name(i) .. "|" .. 
	(ply:get_godmode() and "GOD " or "\u{2764}" .. string.format("%1.0f", ply:get_health() / ply:get_max_health() * 100) .. "% " .. "\u{26E8}" .. string.format("%1.0f", ply:get_armour()) .. "% ") ..
	(ply:is_in_vehicle() and "\u{1F697} " or " \u{1F6B6} ") ..
	ply:get_wanted_level() .. "\u{2605}"
end
 
local function teleport_to_player(i)
	local ply = player.get_player_ped(i)
	if not ply then return end
	local pos = ply:get_position()
	if not pos then return end
	localplayer:set_position(pos)
end
 
for i = 0, 31 do
	playerlist_submenu:add_bare_item("Player" .. i + 1, function()
		return get_player_text(i) or ""
	end, function()
		teleport_to_player(i)
	end, function()
		-- action menu left
	end, function()
		-- action menu right
	end)
end