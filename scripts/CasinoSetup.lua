local mpx = stats.get_int("MPPLY_LAST_MP_CHAR")
local Weapon = 0

local CsSet = menu.add_submenu("Casino Setup")

local CSHT = {}
CSHT[3] = "Diamonds"
CSHT[2] = "Artwork"
CSHT[2] = "Gold"
CSHT[0] = "Cash"
CsSet:add_array_item("()Choose Target>", CSHT, function() return stats.get_int("MP"..mpx.."_H3OPT_TARGET") end, function(H3t)
	stats.set_int("MP"..mpx.."_H3OPT_TARGET", H3t)
end)

local CSHRA = {}
CSHRA[0] = "Normal Mode"
CSHRA[1] = "Hard Mode"
if stats.get_int("MP"..mpx.."_H3_HARD_APPROACH") ~= stats.get_int("MP"..mpx.."_H3OPT_APPROACH") then
	DIFF = 0
else
	DIFF = 1
end
CsSet:add_array_item("(a)Randm Approach with>", CSHRA, function() return DIFF end, function(H3lvl)
	LstAp = stats.get_int("MP"..mpx.."_H3_LAST_APPROACH")
	HrdAp = stats.get_int("MP"..mpx.."_H3_HARD_APPROACH")
	if H3lvl == 1 then
		Apr = HrdAp
	else
		if LstAp ~= 1 and HrdAp ~= 1 then
		Apr = 1
		Weapon = 1
		elseif LstAp ~= 2 and HrdAp ~= 2 then
		Apr = 2
		Weapon = 0
		else
		Apr = 3
		Weapon = 0
		end
	end
	stats.set_int("MP"..mpx.."_H3OPT_APPROACH", Apr)
end)

local CSA = 0
if stats.get_int("MP"..mpx.."_H3_HARD_APPROACH") ~= stats.get_int("MP"..mpx.."_H3OPT_APPROACH") then
	CSA = 2*stats.get_int("MP"..mpx.."_H3OPT_APPROACH")-1
else
	CSA = 2*stats.get_int("MP"..mpx.."_H3OPT_APPROACH")
end
local weapon = 0
local CSHAP = {}
CSHAP[1] = "Silent&Sneaky-EASY"
CSHAP[2] = "Silent&Sneaky-HARD"
CSHAP[3] = "TheBigCON-EASY"
CSHAP[4] = "TheBigCON-HARD"
CSHAP[5] = "Aggressive-EASY"
CSHAP[6] = "Aggressive-HARD"
CsSet:add_array_item("(a)Choose Approach>", CSHAP, function() return CSA end, function(H3AO)
	if H3AO == 1 then
		CSAP = 1
		LSTA = 3
		HRDA = 2
		Weapon = 1
	elseif H3AO == 2 then
		CSAP = 1
		LSTA = 3
		HRDA = 1
		Weapon = 1
	elseif H3AO == 3 then
		CSAP = 2
		LSTA = 3
		HRDA = 1
		Weapon = 0
	elseif H3AO == 4 then
		CSAP = 2
		LSTA = 3
		HRDA = 2
		Weapon = 0
	elseif H3AO == 5 then
		CSAP = 3
		LSTA = 1
		HRDA = 2
		Weapon = 0
	else
		CSAP = 3
		LSTA = 1
		HRDA = 3
		Weapon = 0
	end
	stats.set_int("MP"..mpx.."_H3_LAST_APPROACH", LSTA)
	stats.set_int("MP"..mpx.."_H3_HARD_APPROACH", HRDA)
	stats.set_int("MP"..mpx.."_H3OPT_APPROACH", CSAP)
end)

local CSHHKR = {}
CSHHKR[1] = "Rickie Lukens"
CSHHKR[3] = "Yohan Blair"
CSHHKR[2] = "Christian Feltz"
CSHHKR[5] = "Paige Harris"
CSHHKR[4] = "Avi Schwartzman"
CsSet:add_array_item("Choose Hacker>", CSHHKR, function() return stats.get_int("MP"..mpx.."_H3OPT_CREWHACKER") end, function(Hkr)
	stats.set_int("MP"..mpx.."_H3OPT_CREWHACKER", Hkr)
end)

local CSHCRO = {}
CSHCRO[1] = "Choose In-Game"
CSHCRO[2] = "Cheap(Karl,Karim)"
CSHCRO[3] = "2xChester Mccoy"
CSHCRO[4] = "Best(Chester,Eddie)"
CsSet:add_array_item("(b)Rest of the Crew>", CSHCRO, function() return 1 end, function(CrS)
	if CrS == 1 then
		if stats.get_int("MP"..mpx.."_H3OPT_APPROACH") == 1 then
			BT = 115
		elseif stats.get_int("MP"..mpx.."_H3OPT_APPROACH") == 2 then
			BT = 147
		elseif stats.get_int("MP"..mpx.."_H3OPT_APPROACH") == 3 then
			BT = 787
		end
		stats.set_int("MP"..mpx.."_H3OPT_BITSET1", BT)
	elseif CrS == 2 then
		stats.set_int("MP"..mpx.."_H3OPT_CREWWEAP", 1)
		stats.set_int("MP"..mpx.."_H3OPT_CREWDRIVER", 1)
	elseif CrS == 3 then
		stats.set_int("MP"..mpx.."_H3OPT_CREWWEAP", 4)
		stats.set_int("MP"..mpx.."_H3OPT_CREWDRIVER", 5)
	else
		stats.set_int("MP"..mpx.."_H3OPT_CREWWEAP", 4)
		stats.set_int("MP"..mpx.."_H3OPT_CREWDRIVER", 3)
	end
	

end)
CsSet:add_action("--[[Complete Board 1(SelectCrew1st)]]--", function() stats.set_int("MP"..mpx.."_H3OPT_BITSET1", -1) end)

local CSHHKR = {}
CSHHKR[1] = "Geometric"
CSHHKR[3] = "Hunter"
CSHHKR[2] = "Christian Feltz"
CSHHKR[5] = "Oni Half Mask"
CSHHKR[4] = "Emoji"
CSHHKR[5] = "Ornate Skull"
CSHHKR[6] = "Lucky Fruit"
CSHHKR[7] = "Guerilla"
CSHHKR[8] = "Clown"
CSHHKR[9] = "Animal"
CSHHKR[10] = "Riot"
CSHHKR[11] = "Oni"
CSHHKR[12] = "Hockey"
CsSet:add_array_item("()Choose Mask>", CSHHKR, function() return stats.get_int("MP"..mpx.."_H3OPT_MASKS") end, function(H3Msk)
		stats.set_int("MP"..mpx.."_H3OPT_MASKS", H3Msk)
end)

CSetEx = CsSet:add_submenu("(b)(c)CustomizeMore[Don'tFinalize,Rest..]")
local EMP, INFS, BUG, YNG, Grp6, MTC, NOO, FrF, ARM, BrM = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

APRSP = CSetEx:add_submenu("Approach Specific options")
APRSP:add_action("         Choose current method", function() end)
APSnS = APRSP:add_submenu("Silent and Sneaky")
APSnS:add_int_range("Get EMP device", 1, 0, 1, function() return 1 end, function(Em)
	if Em == 1 then
		EMP = 32
	else
		EMP = 0
	end
end)
APSnS:add_int_range("Get Infiltration Suits", 1, 0, 1, function() return 1 end, function(Inf)
	if Inf == 1 then
		INFS = 8
	else
		INFS = 0
	end
end)
APBC = APRSP:add_submenu("The Big Con")
APBC:add_action("         __EntryDisguise__", function() end)
APBC:add_int_range("Get Bugstars Gear", 1, 0, 1, function() return 1 end, function(BGS)
	if BGS == 1 then
		BUG = 768
	else
		BUG = 0
	end
end)APBC:add_int_range("Get Yung Ancestors Gear", 1, 0, 1, function() return 1 end, function(YA)
	if YA == 1 then
		YNG = 49152
	else
		YNG = 0
	end
end)
APBC:add_int_range("Get Grouppe6 Gear", 1, 0, 1, function() return 1 end, function(G6)
	if G6 == 1 then
		Grp6 = 12288
	else
		Grp6 = 0
	end
end)
APBC:add_int_range("Get Maintenance Gear", 1, 0, 1, function() return 1 end, function(MNt)
	if MNt == 1 then
		MTC = 3072
	else
		MTC = 0
	end
end)

APBC:add_action("              __ExitDisguise__", function() end) 
APBC:add_int_range("Get Fire Fighter Outfit", 1, 0, 1, function() return 1 end, function(FR)
	if FR == 1 then
		FrF = 131072
	else
		FrF = 0
	end
end)
APBC:add_int_range("Get Noose Outfit", 1, 0, 1, function() return 1 end, function(Nse)
	if Nse == 1 then
		NOO = 65536
	else
		NOO = 0
	end
end)
APAGR = APRSP:add_submenu("Aggressive")
APAGR:add_int_range("Get Reinforced Armour", 1, 0, 1, function() return 1 end, function(Ar)
	if Ar == 1 then
		ARM = 1048576
	else
		ARM = 0
	end
end)
APAGR:add_int_range("Get Boring Machine", 1, 0, 1, function() return 1 end, function(Br)
	if Br == 1 then
		BrM = 524288
	else
		BrM = 0
	end
end)

GUN = CSetEx:add_submenu("Choose a Gunman and Weapon")
GUN:add_action("    (IfnotSetAlready)Choose one", function() end)
local KaAb = {}
if stats.get_int("MP"..mpx.."_H3OPT_APPROACH") == 1 then
	KaAb[0] = "MicroSMG"
	KaAb[1] = "MachinePistol"
elseif stats.get_int("MP"..mpx.."_H3OPT_APPROACH") == 2 then
	KaAb[0] = "MicroSMG"
	KaAb[1] = "Shotgun"
elseif stats.get_int("MP"..mpx.."_H3OPT_APPROACH") == 3 then
	KaAb[0] = "Shotgun"
	KaAb[1] = "Revolver"
end
GUN:add_array_item("Karl Abolaji ", KaAb, function() return 0 end, function(KaW)
	stats.set_int("MP"..mpx.."_H3OPT_CREWWEAP", 1)
	stats.set_int("MP"..mpx.."_H3OPT_WEAPS", KaW)
end)

local ChRe = {}
if stats.get_int("MP"..mpx.."_H3OPT_APPROACH") == 1 or stats.get_int("MP"..mpx.."_H3OPT_APPROACH") == 3 then
	ChRe[0] = "SMG"
	ChRe[1] = "Shotgun"
elseif stats.get_int("MP"..mpx.."_H3OPT_APPROACH") == 2 then
	ChRe[0] = "Machine Pistol"
	ChRe[1] = "Shotgun"
end
GUN:add_array_item("Charlie Reed", ChRe, function() return 0 end, function(ChW)
	stats.set_int("MP"..mpx.."_H3OPT_CREWWEAP", 3)
	stats.set_int("MP"..mpx.."_H3OPT_WEAPS", ChW)
end)

local PaMc = {}
if stats.get_int("MP"..mpx.."_H3OPT_APPROACH") == 1 then
	PaMc[0] = "MicroSMG"
	PaMc[1] = "MachinePistol"
elseif stats.get_int("MP"..mpx.."_H3OPT_APPROACH") == 2 then
	PaMc[0] = "MicroSMG"
	PaMc[1] = "Shotgun"
elseif stats.get_int("MP"..mpx.."_H3OPT_APPROACH") == 3 then
	PaMc[0] = "Shotgun"
	PaMc[1] = "Revolver"
end
GUN:add_array_item("Patrick Mcreary", PaMc, function() return 0 end, function(PaW)
	stats.set_int("MP"..mpx.."_H3OPT_CREWWEAP", 5)
	stats.set_int("MP"..mpx.."_H3OPT_WEAPS", PaW)
end)

local GuMo = {}
GuMo[0] = "Rifle"
GuMo[1] = "Shotgun"
GUN:add_array_item("Gustavo Mota", GuMo, function() return 0 end, function(GuW)
	stats.set_int("MP"..mpx.."_H3OPT_CREWWEAP", 2)
	stats.set_int("MP"..mpx.."_H3OPT_WEAPS", GuW)
end)

local ChMc = {}
if stats.get_int("MP"..mpx.."_H3OPT_APPROACH") == 1 then
	ChMc[0] = "MicroSMG"
	ChMc[1] = "MachinePistol"
elseif stats.get_int("MP"..mpx.."_H3OPT_APPROACH") == 2 then
	ChMc[0] = "MicroSMG"
	ChMc[1] = "Shotgun"
elseif stats.get_int("MP"..mpx.."_H3OPT_APPROACH") == 3 then
	ChMc[0] = "MkII Shotgun"
	ChMc[1] = "MkII Rifle"
end
GUN:add_array_item("Chester Mccoy", ChMc, function() return 0 end, function(ChW)
	stats.set_int("MP"..mpx.."_H3OPT_CREWWEAP", 4)
	stats.set_int("MP"..mpx.."_H3OPT_WEAPS", ChW)
end)

CAR = CSetEx:add_submenu("Choose a Driver and Car")
CAR:add_action("   (IfnotSetAlready)Choose one", function() end)
local KaDe = {}
KaDe[0] = "Issi Classic"
KaDe[1] = "ASBO"
KaDe[2] = "Kanjo"
KaDe[3] = "Sentinel Classic"
CAR:add_array_item("Karim Denz", KaDe, function() return 3 end, function(KaC)
	stats.set_int("MP"..mpx.."_H3OPT_CREWDRIVER", 1)
	stats.set_int("MP"..mpx.."_H3OPT_VEHS", KaC)
end)

local ZaNe = {}
ZaNe[0] = "Manchez"
ZaNe[1] = "Stryder"
ZaNe[2] = "Defiler"
ZaNe[3] = "Lectro"
CAR:add_array_item("Zach Nelson(Bikes)", ZaNe, function() return 3 end, function(ZaC)
	stats.set_int("MP"..mpx.."_H3OPT_CREWDRIVER", 4)
	stats.set_int("MP"..mpx.."_H3OPT_VEHS", ZaC)
end)

local TaMa = {}
TaMa[0] = "Retinue MKII"
TaMa[1] = "Drift Yosemite"
TaMa[2] = "Sugoi"
TaMa[3] = "Jugular"
CAR:add_array_item("Taliana Martinez", TaMa, function() return 3 end, function(TaC)
	stats.set_int("MP"..mpx.."_H3OPT_CREWDRIVER", 2)
	stats.set_int("MP"..mpx.."_H3OPT_VEHS", TaC)
end)

local EdTo = {}
EdTo[0] = "Sultan Classic"
EdTo[1] = "Gauntlet Classic"
EdTo[2] = "Elie"
EdTo[3] = "Komoda"
CAR:add_array_item("Eddie Toh", EdTo, function() return 3 end, function(EdC)
	stats.set_int("MP"..mpx.."_H3OPT_CREWDRIVER", 3)
	stats.set_int("MP"..mpx.."_H3OPT_VEHS", EdC)
end)

local CcMc = {}
CcMc[0] = "Zhaba"
CcMc[1] = "Vagrant"
CcMc[2] = "Outlaw"
CcMc[3] = "Everon"
CAR:add_array_item("Chester Mccoy", CcMc, function() return 3 end, function(ChC)
	stats.set_int("MP"..mpx.."_H3OPT_CREWDRIVER", 5)
	stats.set_int("MP"..mpx.."_H3OPT_WEAPS", ChC)
end)

Comm = CSetEx:add_submenu("Common Missions")

local ClVeh, GuDec, PowD, DuSh, PRoute = 0, 0, 0, 0, 0

Comm:add_int_range("Security Pass Level", 1, 0, 2, function() return 2 end, function(SPss)
	stats.set_int("MP"..mpx.."_H3OPT_KEYLEVELS", SPss)
end)
Comm:add_int_range("Patrol Routes", 1, 0, 1, function() return 1 end, function(CPrt)
	if CPrt == 1 then
		PRoute = 2
	else
		PRoute = 0
	end

end)
Comm:add_int_range("Duggan Shipments", 1, 0, 1, function() return 1 end, function(DugS)
	if DugS == 1 then
		DuSh = 4
		stats.set_int("MP"..mpx.."_H3OPT_DISRUPTSHIP", 3)
	else
		DuSh = 0
		stats.set_int("MP"..mpx.."_H3OPT_DISRUPTSHIP", 0)
	end

end)
Comm:add_int_range("Power Drills", 1, 0, 1, function() return 1 end, function(PwDr)
	if PwDr == 1 then
		PowD = 16
	else
		PowD = 0
	end

end)
Comm:add_int_range("GunMan Decoy", 1, 0, 1, function() return 1 end, function(Dec)
	if ClVeh == 1 then
		GuDec = 64
	else
		GuDec = 0
	end

end)
Comm:add_int_range("Clean Vehicle", 1, 0, 1, function() return 1 end, function(ClV)
	if ClV == 1 then
		ClVeh = 128
	else
		ClVeh = 0
	end

end)

CSetEx:add_action("    *--Set values and Finalize--", function()
		stats.set_int("MP"..mpx.."_H3OPT_BITSET0", ClVeh+GuDec+PowD+DuSh+PRoute+EMP+INFS+BUG+YNG+Grp6+MTC+NOO+FrF+ARM+BrM)
end)

CsSet:add_action("(c)       ---[[Complete Board2 - Finalize]]---", function()
		stats.set_int("MP"..mpx.."_H3OPT_DISRUPTSHIP", 3)
		stats.set_int("MP"..mpx.."_H3OPT_KEYLEVELS", 2)
		stats.set_int("MP"..mpx.."_H3OPT_VEHS", 3)
		stats.set_int("MP"..mpx.."_H3OPT_WEAPS", Weapon)
		stats.set_int("MP"..mpx.."_H3OPT_BITSET0", -210) --without drill,cleanveh,deco
--		stats.set_int("MP"..mpx.."_H3OPT_BITSET0", -129)
end)

local H3C1 = 15
local H3C2 = 15
local H3C3 = 15
local H3C4 = 15

--Text("         ((((HEIST CUT - Set to change))))")
if globals.get_int(1797014) <= 1000 then
	local CsCT = menu.add_submenu("    Casino Cut")
	CsCT:add_int_range("Player 1", 5, 15, 100, function() return globals.get_int(1969065) end, function(p1)
		H3C1 = p1
	end)
	CsCT:add_int_range("Player 2", 5, 15, 100, function() return globals.get_int(1969066) end, function(p2)
		H3C2 = p2
	end)
	CsCT:add_int_range("Player 3", 5, 15, 100, function() return globals.get_int(1969067) end, function(p3)
		H3C3 = p3
	end)
	CsCT:add_int_range("Player 4", 5, 15, 100, function() return globals.get_int(1969068) end, function(p4)
		H3C4 = p4
	end)
	local CaSHE = {}
	CaSHE[1] = "Selected"
	CaSHE[2] = "All 100%"
	CaSHE[3] = "Others 100%"
	CaSHE[4] = "Others 85%"
	CsCT:add_array_item("          <[[Set>>>>>", CaSHE, function() return 1 end, function(CasC)
		if CasC == 1 then goto CONT
		elseif CasC == 2 then
			H3C1, H3C2, H3C3, H3C4 = 100, 100, 100, 100
		elseif CasC == 3 then
			H3C1 = 15
			H3C2, H3C3, H3C4 = 100, 100, 100
		elseif CasC == 4 then
			H3C1 = 15
			H3C2, H3C3, H3C4 = 85, 85, 85
		end
		::CONT::
		globals.set_int(1969065, H3C1)
		globals.set_int(1969066, H3C2)
		if globals.get_int(1969067) == nil then
			goto CNT
		elseif globals.get_int(1969067) >= 0 then
			globals.set_int(1969067, H3C3)
			if globals.get_int(1969068) == nil then
				goto CNT
			elseif globals.get_int(1969068) >= 0 then
				globals.set_int(1969068, H3C4)
			end
		end
		::CNT::
	end)
end

local CsHs = menu.add_submenu("        Casino Heist")
local HS0=script("fm_mission_controller")
CsHs:add_action("Complete Fingerprint", function()
	if HS0:get_int(52899)==3 or HS0:get_int(52899)==4 then
		HS0:set_int(52899, 5)
	end
end)

CsHs:add_int_range("Set Potential Take", 100000, 3290000, 20000000, function() return globals.get_int(290614+stats.get_int("MP"..mpx.."_H3OPT_TARGET")) end, function(PTv) 
	globals.set_int(290614+stats.get_int("MP"..mpx.."_H3OPT_TARGET"), PTv)
end)
CsHs:add_int_range("Set Real Take", 100000, 500000, 4438000, function() return HS0:get_int(22337) end, function(RTv) 
	HS0:set_int(22337, RTv)
end)

CsHs:add_action("TP-Double KeyCard", function()
	localplayer:set_rotation(vector3(-1.049023,0,0))
	localplayer:set_position((vector3(2469.234863, -281.168030, -71.994225)))
end)
CsHs:add_action("TP-Staff Lobby Entrance", function()
	localplayer:set_rotation(vector3(3.134611,0,0))
	localplayer:set_position((vector3(2547.100098, -269.579987, -60.022987)))
end)


function MYCREATE_VEHICLE(Hash,cord_x,cord_y,cord_z,pegasus)
	local oVMCreate = 2725269
 
	local model = Hash:lower()
	local spawner_x = cord_x
	local spawner_y = cord_y
	local spawner_z = cord_z
 
	globals.set_float(oVMCreate+7+0, spawner_x)
	globals.set_float(oVMCreate+7+1, spawner_y)
	globals.set_float(oVMCreate+7+2, spawner_z)
	globals.set_int(oVMCreate+27+66, joaat(Hash))
	globals.set_int(oVMCreate+27+28, 1)  -- Weaponised ownerflag
	globals.set_int(oVMCreate+27+60, 1)
	globals.set_int(oVMCreate+27+95, 14) -- Ownerflag
	globals.set_int(oVMCreate+27+94, 2)  -- Personal car ownerflag
	globals.set_int(oVMCreate+5, 1)      -- SET('i',CarSpawn+0x1168, 1)  --can spawn flag must be odd
	globals.set_int(oVMCreate+2, 1)      -- SET('i',CarSpawn+0x1180, 1) --spawn toggle gets reset to 0 on car spawn
	globals.set_int(oVMCreate+3, pegasus)
	globals.set_int(oVMCreate+27+74, 1) -- Red Neon Amount 1-255 100%-0%
	globals.set_int(oVMCreate+27+75, 1) -- Green Neon Amount 1-255 100%-0%
	globals.set_int(oVMCreate+27+76, 0) -- Blue Neon Amount 1-255 100%-0%
	globals.set_int(oVMCreate+27+60, 1) --landinggear/vehstate
	globals.set_int(oVMCreate+27+5, -1) -- default paintjob primary -1 auto 120
	globals.set_int(oVMCreate+27+6, -1) -- default paintjob secondary -1 auto 120
	globals.set_int(oVMCreate+27+7, -1)
	globals.set_int(oVMCreate+27+8, -1)
	globals.set_int(oVMCreate+27+19, 4)
	globals.set_int(oVMCreate+27+21, 4)  -- Engine (0-3)
	globals.set_int(oVMCreate+27+22, 3)
	globals.set_int(oVMCreate+27+23, 3)  -- Transmission (0-9)
	globals.set_int(oVMCreate+27+24, 58)
	globals.set_int(oVMCreate+27+26, 5)  -- Armor (0-18)
	globals.set_int(oVMCreate+27+27, 1)  -- Turbo (0-1)
	globals.set_int(oVMCreate+27+65, 2) -- Window tint 0-6
	globals.set_int(oVMCreate+27+69, -1) -- Wheel type
	globals.set_int(oVMCreate+27+33, -1) -- Wheel Selection
	globals.set_int(oVMCreate+27+25, 8)  -- Suspension (0-13)
	globals.set_int(oVMCreate+27+19, -1)
 
	local weapon1,weapon2 = 2,1
	if model == 'oppressor2' then
		weapon1 = 2
	elseif model == 'apc' or model == 'deluxo' then
		weapon1 = -1
	elseif model == 'bombushka' then
		weapon1 = 1
	elseif model == 'tampa3' or model == 'insurgent3' or model == 'halftrack' then
		weapon1 = 3
	elseif model == 'barrage' then
		weapon1 = 30
	end
 
	globals.set_int(oVMCreate+27+15, weapon1)  -- primary weapon
	globals.set_int(oVMCreate+27+20, weapon2) -- secondary weapon
end
 
 

CsHs:add_action("Spawn Unmarked Cruiser", function()
	MYCREATE_VEHICLE("police4",982.24,-27.73,81.0,0)
end)
CsHs:add_action("Spawn Police Maverick", function()
	MYCREATE_VEHICLE("polmav",966.54,42.75,122.0,0)
end)
CsHs:add_action("Spawn Police Mav- side", function()
	MYCREATE_VEHICLE("polmav",964.94,-131.53,73.5,0)
end)