-- Function definitions
 
local function Text(text)
	menu.add_action(text, function() end)
end
 
local function sqrt(i)
	return i^0.5
end
 
local function DistanceToSqr(vec1, vec2)
	return ((vec2.x - vec1.x)^2) + ((vec2.y - vec1.y)^2) + ((vec2.z - vec1.z)^2)
end
 
local function Distance(vec1, vec2)
	return sqrt(DistanceToSqr(vec1, vec2))
end
 
local function floor(num)
	return num//1
end
 
-- Player / Ped functions
 
local function IsPlayer(ped)
	if ped == nil or ped:get_pedtype() >= 4 then
		return false
	end
	return true
end
 
local function IsNPC(ped)
	if ped == nil or ped:get_pedtype() < 4 then
		return false
	end
	return true
end
 
local function IsModder(ply)
	if not IsPlayer(ply) then return false end
	
	if ply:get_max_health() < 100 then return true end
	if ply:is_in_vehicle() and ply:get_godmode() then return true end
	if ply:get_run_speed() > 1.0 or ply:get_swim_speed() > 1.0 then return true end
 
	return false
end
 
local function GetPlayerCount()
	return player.get_number_of_players()
end
 
-- Action functions
 
local function TeleportToPlayer(ply)
	if not ply or ply == nil then return end 
 
	local pos = ply:get_position()
 
	if not localplayer:is_in_vehicle() then
		localplayer:set_position(pos)
	else
		localplayer:get_current_vehicle():set_position(pos)
	end
end
 
local function TeleportVehiclesToPlayer(ply)
	if not ply or ply == nil then return end 
 
	local pos = ply:get_position()
	local currentvehicle = nil 
 
	if localplayer:is_in_vehicle() then
		currentvehicle = localplayer:get_current_vehicle()
	end
 
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
			veh:set_position(pos)
		end
	end
end
 
local function TeleportClosestVehicleToPlayer(ply)
	if not ply or ply == nil then return end 
 
	local pos = ply:get_position()
	local veh = localplayer:get_nearest_vehicle()
	if not veh then return end
 
	veh:set_position(pos)
end
 
local function TeleportPedsToPlayer(ply)
	if not ply or ply == nil then return end 
 
	local pos = ply:get_position()
	for ped in replayinterface.get_peds() do
		if IsNPC(ped) then
			ped:set_position(pos)
		end
	end
end
 
local function ExplodePlayer(ply)
	if not ply or ply == nil then return end 
 
	local pos = ply:get_position()
	local currentvehicle = nil 
 
	if localplayer:is_in_vehicle() then
		currentvehicle = localplayer:get_current_vehicle()
	end
 
	for veh in replayinterface.get_vehicles() do
		if not currentvehicle or currentvehicle ~= veh then
			veh:set_rotation(vector3(0,0,180))
			veh:set_health(-1)
			veh:set_position(pos)
		end
	end
end
 
-- Player option 
local selectedplayer = -1
 
local function add_player_option(ply_id, ply, ply_name)
	local text = ""
 
	-- Player Name
	if ply == localplayer then
		text = text.."YOU"
	else
		text = text..ply_name
	end
 
	if IsModder(ply) then
		text = text.."*"
	end
 
	text = text.." -"
 
	-- Is In GodMode, if not then Player Health
	if ply:get_godmode() then
		text = text.." God"
	else
		text = text.." "..floor(ply:get_health()).." HP"
	end
 
	-- Is In Vehicle
	if ply:is_in_vehicle() then
		text = text.." | Veh"
	end
 
	-- Player Wanted Level
	text = text.." | "..ply:get_wanted_level().."*"
 
	-- Player's Distance From You
	text = text.." | "..floor(Distance(ply:get_position(), localplayer:get_position())).." m"
 
	local d = ply_id
 
	menu.add_toggle(text, function()
		if selectedplayer == d then
			return true
		else
			return false
		end
	end, function(val)
		selectedplayer = d
	end)
end
 
menu.add_action("Teleport To Player", function() TeleportToPlayer(player.get_player_ped(selectedplayer)) end)
menu.add_action("Teleport Closest Vehicle To Player", function() TeleportClosestVehicleToPlayer(player.get_player_ped(selectedplayer)) end)
menu.add_action("Teleport Vehicles To Player", function() TeleportVehiclesToPlayer(player.get_player_ped(selectedplayer)) end)
menu.add_action("Teleport Peds To Player", function() TeleportPedsToPlayer(player.get_player_ped(selectedplayer)) end)
menu.add_action("Explode Player", function() ExplodePlayer(player.get_player_ped(selectedplayer)) end)
 
-- Building Player List
 
Text("---AppleVegas's Player List, "..GetPlayerCount().." Players---")
 
for i = 0, 31 do
	local ply = player.get_player_ped(i)
	if ply then 
		add_player_option(i, ply, player.get_player_name(i))
	end
end
 
 
Text("---End---")
 
-- Info Panel
 
Text("")
 
menu.add_toggle("Is Selected Player Valid", function()
	if selectedplayer == -1 then return false end
	if not player.get_player_ped(selectedplayer) then return false end
	return true 
end, function() end)
 
menu.add_float_range("Distance To Selected Player", 1, 0, 0, function()
	if selectedplayer == -1 then return 0 end
 
	local ply = player.get_player_ped(selectedplayer)
 
	if not IsPlayer(ply) then return 0 end
 
	return floor(Distance(ply:get_position(), localplayer:get_position()))
end, function() end)