local mpx = stats.get_int("MPPLY_LAST_MP_CHAR")

local cayoset_menu = menu.add_submenu("Cayo Setup")
local CHPT = {}
CHPT[5] = "Panther Statue"
CHPT[3] = "Pink Diamond"
CHPT[2] = "Bearer Bonds"
CHPT[1] = "Ruby Necklace"
CHPT[0] = "Sinsimito Tequila"
cayoset_menu:add_array_item("()Choose Primary Target>", CHPT, function() return stats.get_int("MP"..mpx.."_H4CNF_TARGET") end, function(CyT)
	stats.set_int("MP"..mpx.."_H4CNF_TARGET", CyT)
end)

cayoset_menu:add_action("()              ---[[Set Hard Mode*4Max]]---", function()
		stats.set_int("MP"..mpx.."_H4_PROGRESS", 131055)
end)

local CHPC = {}
CHPC[24] = "2 Paintings"  --2777726
CHPC[0] = "No Paintings"
cayoset_menu:add_array_item("()OfficePaintings/rmve all>", CHPC, function() return 24 end, function(CyPc)
	stats.set_int("MP"..mpx.."_H4LOOT_PAINT", CyPc)
end)

local CHSh = {}
CHSh[1] = "Solo(100%)"
CHSh[2] = "2Players(50%)"
CHSh[3] = "2Players(15%)"
CHSh[4] = "3Players(35%)"
CHSh[5] = "3Players(15%)"
CHSh[6] = "4Players(25%)"
CHSh[7] = "4Players(15%)"
CHSh[8] = "Revert Prices"
cayoset_menu:add_array_item("()Maxfor(yourCut)>", CHSh, function() return 1 end, function(SHT)
	Mode = 1
	if stats.get_int("MP"..mpx.."_H4_PROGRESS") >= 131054 then
		Mode = 1.1
	end
	PTv = globals.get_int(291777+stats.get_int("MP"..mpx.."_H4CNF_TARGET"))*Mode
	if SHT == 1 then
		CyPV = math.floor((2777726-PTv)/2)
		CyCV = math.floor((2777726-PTv)/4)
		CyGV = math.floor((2777726-PTv)/1.5)
	elseif SHT == 2 then
		CyPV = math.floor((5675452-PTv)/4)
		CyCV = math.floor((5675452-PTv)/8)
		CyGV = math.floor((5675452-PTv)/3)
	elseif SHT == 3 then
		CyPV = math.floor((3189088-PTv)/4)
		CyCV = math.floor((3189088-PTv)/8)
		CyGV = math.floor((3189088-PTv)/3)
	elseif SHT == 4 then
		CyCV = math.floor((7451542-PTv)/12)
		CyPV = math.floor((7451542-PTv)/6)
		CyGV = math.floor((7451542-PTv)/4.5)
	elseif SHT == 5 then
		CyCV = math.floor((6219390-PTv)/12)
		CyPV = math.floor((6219390-PTv)/6)
		CyGV = math.floor((6219390-PTv)/4.5)
	elseif SHT == 6 then
		CyCV = math.floor((7451544-PTv)/16)
		CyPV = math.floor((7451544-PTv)/8)
		CyGV = math.floor((7451544-PTv)/6)
	elseif SHT == 7 then
		CyCV = math.floor((7351544-PTv)/16)
		CyPV = math.floor((7351544-PTv)/8)
		CyGV = math.floor((7351544-PTv)/6)
	elseif SHT == 8 then
		CyCV = 91800
		CyPV = 191300
		CyGV = 330300
	end
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_C", 255)
	stats.set_int("MP"..mpx.."_H4LOOT_CASH_V", CyCV)
	stats.set_int("MP"..mpx.."_H4LOOT_PAINT_V", CyPV)
	stats.set_int("MP"..mpx.."_H4LOOT_GOLD_V", CyGV)
end)

local CHSh = {}
CHSh[1] = "Aggressor"
CHSh[2] = "Conspirator"
CHSh[3] = "Crackshot"
CHSh[4] = "Saboteur"
CHSh[5] = "Marksman"
cayoset_menu:add_array_item("Choose Weapon>", CHSh, function() return stats.get_int("MP"..mpx.."_H4CNF_WEAPONS") end, function(CyW)
	stats.set_int("MP"..mpx.."_H4CNF_WEAPONS", CyW)
end)

local StEx = cayoset_menu:add_submenu("(a)Customize More[Don't Finalize]")

local CHWEAP, CHKST, CHALK, CHVEL, CHANN, CHPAT, CHLON, CHDEM, CHWDIS, CHADIS, CHHDIS, SUP, CHPOW, CHSTr, CHGrp1, CHGrp2, CHGrp3, CHGrp4, CHGCL1, CHGCL2, CHGCL3, CHGCL4, CHBCT1, CHBCT2, CHBCT3, CHBCT4, PIL  = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
local KS, ALK, VEL, ANN, PAT, LON, DEM, WDIS, ADIS, HDIS, POW = 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
local CHSUP = 4096



if stats.get_int("MP"..mpx.."_H4CNF_WEAPONS") >= 0 then
	CHWEAP = 4096
end

StEx:add_action("     !Select Finalize to Set all Choices!", function() end)
APRVEH = StEx:add_submenu("Approach Vehicles")
APRVEH:add_action("     __Choose Atleast one__", function() end)

APRVEH:add_int_range("Kosatka Submarine", 1, 0, 1, function() return KS end, function(KS)
	if KS == 1 then
		CHKST = 2
	else 
		CHKST = 0
	end
end)
APRVEH:add_int_range("RO-86 Alkonost", 1, 0, 1, function() return ALK end, function(ALK)
	if ALK == 1 then
		CHALK = 4
	else 
		CHALK = 0
	end
end)
APRVEH:add_int_range("Velum 5-Seater", 1, 0, 1, function() return VEL end, function(VEL)
	if VEL == 1 then
		CHVEL = 8
	else 
		CHVEL = 0
	end
end)
APRVEH:add_int_range("Stealth Annihilator", 1, 0, 1, function() return ANN end, function(ANN)
	if ANN == 1 then
		CHANN = 16
	else 
		CHANN = 0
	end
end)
APRVEH:add_int_range("Kurtz Patrol Boat", 1, 0, 1, function() return PAT end, function(PAT)
	if PAT == 1 then
		CHPAT = 32
	else 
		CHPAT = 0
	end
end)
APRVEH:add_int_range("Longifin Boat", 1, 0, 1, function() return LON end, function(LON)
	if LON == 1 then
		CHLON = 64
	else 
		CHLON = 0
	end
end)

DSDIS = StEx:add_submenu("()Demolition-Disruption-Suppressor")
DSDIS:add_int_range("Demolition Charges", 1, 0, 1, function() return DEM end, function(DEM)
	if DEM == 1 then
		CHDEM = 256
	else 
		CHDEM = 0
	end
end)
DSDIS:add_int_range("Weapons Disruption", 1, 0, 1, function() return WDIS end, function(WDIS)
	if WDIS == 1 then
		CHWDIS = 8192
	else 
		CHWDIS = 0
	end
end)
DSDIS:add_int_range("Armor Disruption", 1, 0, 1, function() return ADIS end, function(ADIS)
	if ADIS == 1 then
		CHADIS = 16384
	else 
		CHADIS = 0
	end
end)
DSDIS:add_int_range("Air Support Disruption", 1, 0, 1, function() return HDIS end, function(HDIS)
	if HDIS == 1 then
		CHHDIS = 32768
	else 
		CHHDIS = 0
	end
end)
DSDIS:add_int_range("Weapon Suppressor", 1, 0, 1, function() return SUP end, function(SUP)
	if SUP == 1 then
		CHSUP = 4096
	else 
		CHSUP = 0
	end
end)
DSDIS:add_int_range("Cutting Powder", 1, 0, 1, function() return POW end, function(POW)
	if POW == 1 then
		CHPOW = 8192
	else 
		CHPOW = 0
	end
end)

POI = StEx:add_submenu("()POI(SupplyTruck,BoltCutters,etc)")
local ITR = {}
ITR[0] = "None"
ITR[1] = "Airstrip"
ITR[5] = "Outside Compound "
ITR[4] = "Main Dock"
ITR[3] = "besideMain Dock"
ITR[2] = "North Dock"
POI:add_array_item("Put Supply Truck in", ITR, function() return stats.get_int("MP"..mpx.."_H4CNF_TROJAN") end, function(SpTr)
	if SpTr >= 0 then
		CHSTr = 32768
	else
		CHSTr = 0
	end
		stats.set_int("MP"..mpx.."_H4CNF_TROJAN", SpTr)
end)
POI:add_action("     You can choose multiple for below", function() end)
POI:add_int_range("Put Grappling Eq in Airstrip", 1, 0, 1, function() return 1 end, function(CHGrp1) end)
POI:add_int_range("_Put Grappling Eq in MainDock", 1, 0, 1, function() return 1 end, function(GrM) 
	if GrM == 1 then
		CHGrp2 = 4
	else
		CHGrp2 = 0
	end
		
end)
POI:add_int_range("_Put Grappling Eq in NorthDock", 1, 0, 1, function() return 1 end, function(GrN) 
	if GrN == 1 then
		CHGrp3 = 2
	else
		CHGrp3 = 0
	end
end)
POI:add_int_range("_GrapplingEq Near Lighthouse", 1, 0, 1, function() return 1 end, function(GrL) 
	if Grl == 1 then
		CHGrp4 = 8
	else
		CHGrp3 = 0
	end
end)
POI:add_int_range("Put Guard Clothes in Airstrip", 1, 0, 1, function() return 1 end, function(GCA) 
	if GCA == 1 then
		CHGCL1 = 16
	else
		CHGCL1 = 0
	end
end)
POI:add_int_range("  Put Guard Clothes in NorthDock", 1, 0, 1, function() return 1 end, function(GCN) 
	if GCN == 1 then
		CHGCL2 = 32
	else
		CHGCL2 = 0
	end
end)
POI:add_int_range("  Put Guard Clothes in MainDock", 1, 0, 1, function() return 1 end, function(GCM) 
	if GCM == 1 then
		CHGCL3 = 64
	else
		CHGCL3 = 0
	end
end)
POI:add_int_range("Guard Clothes in Tower NearCompound", 1, 0, 1, function() return 1 end, function(GCT) 
	if GCT == 1 then
		CHGCL4 = 128
	else
		CHGCL4 = 0
	end
end)
POI:add_int_range("Bolt Cutters in Airstrip", 1, 0, 1, function() return 1 end, function(BCA) 
	if BCA == 1 then
		CHBCT1 = 256
	else
		CHBCT1 = 0
	end
end)
POI:add_int_range("  Bolt Cutters in NorthDock", 1, 0, 1, function() return 1 end, function(BCN) 
	if BCN == 1 then
		CHBCT2 = 512
	else
		CHBCT2 = 0
	end
end)
POI:add_int_range("  Bolt Cutters in MainDock", 1, 0, 1, function() return 1 end, function(BCM) 
	if Grl == 1 then
		CHBCT3 = 1024
	else
		CHBCT3 = 0
	end
end)
POI:add_int_range("  Bolt Cutters in FarmArea", 1, 0, 1, function() return 1 end, function(BCF) 
	if Grl == 1 then
		CHBCT4 = 2048
	else
		CHBCT4 = 0
	end
end)

StEx:add_action("(UnslectdItmsMaybRemvd)--[[Finalize]]--", function()
	BSGEN = 81920+CHSUP+CHPOW
	if CHWDIS == 8192 then
		stats.set_int("MP"..mpx.."_H4CNF_WEP_DISRP", 3)
	else
		stats.set_int("MP"..mpx.."_H4CNF_WEP_DISRP", 0)
	end
	if CHADIS == 16384 then
		stats.set_int("MP"..mpx.."_H4CNF_ARM_DISRP", 3)
	else
		stats.set_int("MP"..mpx.."_H4CNF_ARM_DISRP", 0)
	end
	if CHHDIS == 32768 then
		stats.set_int("MP"..mpx.."_H4CNF_HEL_DISRP", 3)
	else
		stats.set_int("MP"..mpx.."_H4CNF_HEL_DISRP", 0)
	end
	if CHGrp4 >= 0 and CHGrp4 ~= 8 then
		stats.set_int("MP"..mpx.."_H4CNF_GRAPPEL", 5156)
		if CHBCT1+CHBCT2+CHBCT3+CHBCT4 >= 0 then
			stats.set_int("MP"..mpx.."_H4CNF_BOLTCUT", 4424)
		end
		if CHGCL1+CHGCL2+CHGCL3+CHGCL4 >= 0 then
			stats.set_int("MP"..mpx.."_H4CNF_UNIFORM", 5256)
		end
	end
	if CHKST+CHANN >= 0 then
		PIL = 128
	end
	BSGEN = 81920+CHSUP+CHPOW+CHSTr+CHBCT1+CHBCT2+CHBCT3+CHBCT4+CHGCL1+CHGCL2+CHGCL3+CHGCL4+CHGrp1+CHGrp2+CHGrp3+CHGrp4
	MISSN = 3585+CHWEAP+CHKST+CHALK+CHVEL+CHANN+CHPAT+CHLON+CHDEM+CHWDIS+CHADIS+CHHDIS+PIL
	stats.set_int("MP"..mpx.."_H4CNF_BS_GEN", BSGEN)
	stats.set_int("MP"..mpx.."_H4_MISSIONS", MISSN)
end)

StLt = StEx:add_submenu("Set Loot as much u like>")
local R1G, R1C, R1P, R2G, R2C, R2P, R3G, R3C, R3P, R4G, R4C, R4P, OFP, R5C, R5W, R5K, R6C, R6W, R6K, R7C, R7W, R7K, R8C, R8W, R8K, R9C, R9W, R9K, R10C, R10W, R10K, R11C, R11W, R11K, R12C, R12W, R12K, R13C, R13W, R13K, R14C, R14W, R14K, R15C, R15W, R15K = 0 
local CHR1L = {}
CHR1L[1] = "Gold"
CHR1L[2] = "Cash"
CHR1L[3] = "Add Painting"
StLt:add_array_item("Fill Room1(North) with>", CHR1L, function() return 1 end, function(R1L)
	if R1L == 1 then
		R1G = 3
		R1C = 0
	elseif R1L == 2 then
		R1C = 3
		R1G = 0
	else
		R1P = 1
	end
end)
local CHR2L = {}
CHR2L[1] = "Gold"
CHR2L[2] = "Cash"
CHR2L[3] = "Add Painting"
StLt:add_array_item("  Fill Room2(Center) with>", CHR2L, function() return 1 end, function(R2L)
	if R2L == 1 then
		R2G = 12
		R2C = 0
	elseif R2L == 2 then
		R2C = 12
		R2G = 0
	else
		R2P = 2
	end
end)
local CHR3L = {}
CHR3L[1] = "Gold"
CHR3L[2] = "Cash"
CHR3L[3] = "Add Painting"
StLt:add_array_item("  Fill Room3(South) with>", CHR3L, function() return 1 end, function(R3L)
	if R3L == 1 then
		R3G = 48
		R3C = 0
	elseif R3L == 2 then
		R3C = 48 
		R3G = 0
	else
		R3P = 4
	end
end)
local CHR4L = {}
CHR4L[1] = "Gold"
CHR4L[2] = "Cash"
CHR4L[3] = "Add 1Painting"
CHR4L[3] = "Add 2Paintings"
StLt:add_array_item("Fill Basement Room with>", CHR4L, function() return 1 end, function(R4L)
	if R4L == 1 then
		R4G = 192
		R4C = 0
	elseif R4L == 2 then
		R4C = 192
		R4G = 0
	elseif R4L == 3 then
		R4P = 96
	else
		R4P = 32
	end
end)
local CHROL = {}
CHROL[1] = "2Paintings"
CHROL[2] = "1Painting"
CHROL[3] = "No Painting"
StLt:add_array_item("Paintings in Rubio's office with>", CHROL, function() return 1 end, function(ROL)
	if ROL == 1 then
		OFP = 24
	elseif ROL == 2 then
		OFP = 16
	else
		OFP = 0
	end
end)

StLt:add_action("                  Outside of Compound", function() end)
local CHR5L = {}
CHR5L[1] = "Coke"
CHR5L[2] = "Cash"
CHR5L[3] = "Weed"
StLt:add_array_item("FarmLand Tin Shed>", CHR5L, function() return 1 end, function(R5L)
	if R5L == 1 then
		R5K = 24576
		R5C = 0
		R5W = 0
	elseif R5L == 2 then
		R5C = 24576
		R5K = 0
		R5W = 0
	else
		R5W = 24576
		R5C = 0
		R5K = 0
	end
end)
local CHR6L = {}
CHR6L[1] = "Coke"
CHR6L[2] = "Cash"
CHR6L[3] = "Weed"
StLt:add_array_item("MainDock Wooden Shed>", CHR6L, function() return 1 end, function(R6L)
	if R6L == 1 then
		R6K = 12582912
		R6C = 0
		R6W = 0
	elseif R6L == 2 then
		R6C = 12582912
		R6K = 0
		R6W = 0
	else
		R6W = 12582912
		R6C = 0
		R6K = 0
	end
end)
local CHR7L = {}
CHR7L[1] = "Coke"
CHR7L[2] = "Cash"
CHR7L[3] = "Weed"
StLt:add_array_item("  MainDock Tin Shed>", CHR7L, function() return 1 end, function(R7L)
	if R7L == 1 then
		R7K = 98304
		R7C = 0
		R7W = 0
	elseif R7L == 2 then
		R7C = 98304
		R7K = 0
		R7W = 0
	else
		R7W = 98304
		R7C = 0
		R7K = 0
	end
end)
local CHR8L = {}
CHR8L[1] = "Coke"
CHR8L[2] = "Cash"
CHR8L[3] = "Weed"
StLt:add_array_item("  MainDock Lockup>", CHR8L, function() return 1 end, function(R8L)
	if R8L == 1 then
		R8K = 393216
		R8C = 0
		R8W = 0
	elseif R8L == 2 then
		R8C = 393216
		R8K = 0
		R8W = 0
	else
		R8W = 393216
		R8C = 0
		R8K = 0
	end
end)
local CHR9L = {}
CHR9L[1] = "Coke"
CHR9L[2] = "Cash"
CHR9L[3] = "Weed"
StLt:add_array_item("  MainDock Wooden Shed2>", CHR9L, function() return 1 end, function(R9L)
	if R9L == 1 then
		R9K = 3670016
		R9C = 0
		R9W = 0
	elseif R9L == 2 then
		R9C = 3670016
		R9K = 0
		R9W = 0
	else
		R9W = 3670016
		R9C = 0
		R9K = 0
	end
end)
local CHR10L = {}
CHR10L[1] = "Coke"
CHR10L[2] = "Cash"
CHR10L[3] = "Weed"
StLt:add_array_item("NorthDock Lockup>", CHR10L, function() return 1 end, function(R10L)
	if R10L == 1 then
		R10K = 1729
		R10C = 0
		R10W = 0
	elseif R10L == 2 then
		R10C = 1729
		R10K = 0
		R10W = 0
	else
		R10W = 1729
		R10C = 0
		R10K = 0
	end
end)
local CHR11L = {}
CHR11L[1] = "Coke"
CHR11L[2] = "Cash"
CHR11L[3] = "Weed"
StLt:add_array_item("  NorthDock Wooden Shed>", CHR11L, function() return 1 end, function(R11L)
	if R11L == 1 then
		R11K = 6144
		R11C = 0
		R11W = 0
	elseif R11L == 2 then
		R11C = 6144
		R11K = 0
		R11W = 0
	else
		R11W = 6144
		R11C = 0
		R11K = 0
	end
end)
local CHR12L = {}
CHR12L[1] = "Coke"
CHR12L[2] = "Cash"
CHR12L[3] = "Weed"
StLt:add_array_item("  NorthDock Warehouse>", CHR12L, function() return 1 end, function(R12L)
	if R12L == 1 then
		R12K = 192
		R12C = 0
		R12W = 0
	elseif R12L == 2 then
		R12C = 192
		R12K = 0
		R12W = 0
	else
		R12W = 192
		R12C = 0
		R12K = 0
	end
end)
local CHR13L = {}
CHR13L[1] = "Coke"
CHR13L[2] = "Cash"
CHR13L[3] = "Weed"
StLt:add_array_item("Fill Airstrip Wooden Shed with>", CHR13L, function() return 1 end, function(R13L)
	if R13L == 1 then
		R13K = 48
		R13C = 0
		R13W = 0
	elseif R13L == 2 then
		R13C = 48
		R13K = 0
		R13W = 0
	else
		R13W = 48
		R13C = 0
		R13K = 0
	end
end)
local CHR14L = {}
CHR14L[1] = "Coke"
CHR14L[2] = "Cash"
CHR14L[3] = "Weed"
StLt:add_array_item("  Fill Airstrip Hanger floor with>", CHR14L, function() return 1 end, function(R14L)
	if R14L == 1 then
		R14K = 12
		R14C = 0
		R14W = 0
	elseif R14L == 2 then
		R14C = 12
		R14K = 0
		R14W = 0
	else
		R14W = 12
		R14C = 0
		R14K = 0
	end
end)
local CHR15L = {}
CHR15L[1] = "Coke"
CHR15L[2] = "Cash"
CHR15L[3] = "Weed"
StLt:add_array_item("  Fill Airstrip Hanger top with>", CHR15L, function() return 1 end, function(R15L)
	if R15L == 1 then
		R15K = 3
		R15C = 0
		R15W = 0
	elseif R15L == 2 then
		R15C = 3
		R15K = 0
		R15W = 0
	else
		R15W = 3
		R15C = 0
		R15K = 0
	end
end)
StLt:add_action("             ----[SET LOOT]----", function()
	if R1G+R2G+R3G+R4G >= 0 then
		stats.set_int("MP"..mpx.."_H4LOOT_GOLD_C", R1G+R2G+R3G+R4G)
		stats.set_int("MP"..mpx.."_H4LOOT_GOLD_C_SCOPED", R1G+R2G+R3G+R4G)
	end
	if R1C+R2C+R3C+R4C >= 0 then
		stats.set_int("MP"..mpx.."_H4LOOT_CASH_C", R1C+R2C+R3C+R4C)
		stats.set_int("MP"..mpx.."_H4LOOT_CASH_C_SCOPED", R1C+R2C+R3C+R4C)
	end
	if R1P+R2P+R3P+R4P+OFP >= 0 then
		stats.set_int("MP"..mpx.."_H4LOOT_PAINT", R1P+R2P+R3P+R4P+OFP)
		stats.set_int("MP"..mpx.."_H4LOOT_PAINT_SCOPED", R1P+R2P+R3P+R4P+OFP)
	end
	if R5C+R6C+R7C+R8C+R9C+R10C+R11C+R12C+R13C+R14C+R15C >= 0 then
		stats.set_int("MP"..mpx.."_H4LOOT_CASH_I", R5C+R6C+R7C+R8C+R9C+R10C+R11C+R12C+R13C+R14C+R15C)
		stats.set_int("MP"..mpx.."_H4LOOT_CASH_I_SCOPED", R5C+R6C+R7C+R8C+R9C+R10C+R11C+R12C+R13C+R14C+R15C)
	end
	if R5K+R6K+R7K+R8K+R9K+R10K+R11K+R12K+R13K+R14K+R15K >= 0 then
		stats.set_int("MP"..mpx.."_H4LOOT_COKE_I", R5K+R6K+R7K+R8K+R9K+R10K+R11K+R12K+R13K+R14K+R15K)
		stats.set_int("MP"..mpx.."_H4LOOT_COKE_I_SCOPED", R5K+R6K+R7K+R8K+R9K+R10K+R11K+R12K+R13K+R14K+R15K)
	end
	if R5W+R6W+R7W+R8W+R9W+R10W+R11W+R12W+R13W+R14W+R15W >= 0 then
		stats.set_int("MP"..mpx.."_H4LOOT_WEED_I", R5W+R6W+R7W+R8W+R9W+R10W+R11W+R12W+R13W+R14W+R15W)
		stats.set_int("MP"..mpx.."_H4LOOT_WEED_I_SCOPED", R5W+R6W+R7W+R8W+R9W+R10W+R11W+R12W+R13W+R14W+R15W)
	end
end)


local SCTY = {}
SCTY[1] = "Do Nothing"
SCTY[2] = "Remove Suppressor"
SCTY[3] = "Remove CuttingPow"
SCTY[4] = "Remove Both"
StEx:add_array_item("(exceptLoot)ScopeOut all and", SCTY, function() return 1 end, function(ScTer)
	if ScTer == 1 then
		stats.set_int("MP"..mpx.."_H4CNF_BS_GEN", 131071)
	elseif ScTer == 2 then
		stats.get_int("MP"..mpx.."_H4CNF_BS_GEN", 122879)
	elseif ScTer == 3 then
		stats.set_int("MP"..mpx.."_H4CNF_BS_GEN", 126975)
	else
		stats.set_int("MP"..mpx.."_H4CNF_BS_GEN", 118783)
	end
end)

local CHAv = {}
CHAv[1] = "Kosatka"
CHAv[2] = "Alkonost"
CHAv[3] = "Velum"
CHAv[4] = "Annihilator"
CHAv[5] = "Patrol Boat"
CHAv[6] = "Longifin"
CHAv[7] = "All Vehicles&Missions"
cayoset_menu:add_array_item("(a)--[[[Finalize]]]--Approach>", CHAv, function() return 1 end, function(CyApV)
	if CyApV == 1 then
		CyM = 7683
	elseif CyApV == 2 then
		CyM = 7813
	elseif CyApV == 3 then
		CyM = 7689
	elseif CyApV == 4 then
		CyM = 7825
	elseif CyApV == 5 then
		CyM = 7713
	elseif CyApV == 6 then
		CyM = 7745
	else
		CyM = 65535
		stats.set_int("MP"..mpx.."_H4CNF_WEP_DISRP", 3)
		stats.set_int("MP"..mpx.."_H4CNF_ARM_DISRP", 3)
		stats.set_int("MP"..mpx.."_H4CNF_HEL_DISRP", 3)
	end
		stats.set_int("MP"..mpx.."_H4CNF_BS_GEN", 131071)
		stats.set_int("MP"..mpx.."_H4_MISSIONS", CyM)
end)

local H4C1 = 15
local H4C2 = 15
local H4C3 = 15
local H4C4 = 15
local CHHE = {}
CHHE[1] = "Selected"
CHHE[2] = "All 100%"
CHHE[3] = "Others 100%"
CHHE[4] = "Others 85%"
if globals.get_int(1974405) <= 1000 and globals.get_int(1974405) >= -1 then
	local cayocut_menu = menu.add_submenu("    Cayo Cut")
	cayocut_menu:add_int_range("Player 1", 5.0, 0, 100, function() return globals.get_int(1974405) end, function(p1)
		H4C1=p1
	end)
	cayocut_menu:add_int_range("Player 2", 5.0, 0, 100, function() return globals.get_int(1974406) end, function(p2)
		H4C2=p2
	end)
	cayocut_menu:add_int_range("Player 3", 5.0, 15, 100, function() return globals.get_int(1974407) end, function(p3)
		H4C3=p3
	end)
	cayocut_menu:add_int_range("Player 4", 5.0, 15, 100, function() return globals.get_int(1974408) end, function(p4)
		H4C4=p4
	end)
	cayocut_menu:add_array_item("          <Set>>>>>", CHHE, function() return 1 end, function(CyC)
		if CyC == 1 then goto CONT
		elseif CyC == 2 then
			H4C1, H4C2, H4C3, H4C4 = 100, 100, 100, 100
		elseif CyC == 3 then
			H4C1 = 15
			H4C2, H4C3, H4C4 = 100, 100, 100
		elseif CyC == 4 then
			H4C1 = 15
			H4C2, H4C3, H4C4 = 85, 85, 85
		end
		::CONT::
		globals.set_int(1974405, H4C1)
			globals.set_int(1974406, H4C2)
			if globals.get_int(1974407) == nil then
				goto CNT
			elseif globals.get_int(1974407) >= 14 then
				globals.set_int(1974407, H4C3)
				if globals.get_int(1974408) == nil then
					goto CNT
				elseif globals.get_int(1974408) >= 14 then
					globals.set_int(1974408, H4C4)
				end
			end
			::CNT::
	end)
end

local cayoplay_menu = menu.add_submenu("        Cayo Heist")

local HS = script("fm_mission_controller_2020")
cayoplay_menu:add_action("Complete Fingerprint Clone", function()
	if HS and HS:is_active() then
		if HS:get_int(23177) == 4 then
			HS:set_int(23177, 5)
		end
	end
end)
cayoplay_menu:add_action("QuickCut(click,ContinueCutting)", function()
	if HS then
		local CtPrg = HS:get_float(28269 + 3)
		if CtPrg then
			if CtPrg > 0.0 and CtPrg < 99.9 then
				HS:set_float(28269 + 3, 99.9)
			end
		end
	end
end)

cayoplay_menu:add_action("Voltlab(last math)", function()
	if HS:set_int(1776)>=0 then
		HS:set_int(1776, HS:get_int(1777))
	end
end)

cayoplay_menu:add_action("                       Modify Loot", function() end)
cayoplay_menu:add_int_range("Set Primary Value", 100000, 100000, 2100000, function() return globals.get_int(291777+stats.get_int("MP"..mpx.."_H4CNF_TARGET")) end, function(PTv)
	globals.set_int(291777+stats.get_int("MP"..mpx.."_H4CNF_TARGET"), PTv)
end)

cayoplay_menu:add_int_range("Cayo Bag Cap.-", 500.0, 1800, 10000, function() return globals.get_int(291540) end, function(value)
	globals.set_int(291540, value)
end)

cayoplay_menu:add_int_range("Real/Addon Take(in/out cmpnd) ", 100000, 900000, 6662960, function() return HS:get_int(41449) end, function(RTk)
	HS:set_int(41449, RTk)
end)
cayoplay_menu:add_action("                       Spawn Vehicle", function() end)

function MYCREATE_VEHICLE(Hash,cord_x,cord_y,cord_z,pegasus)
	local CrVh = 2725269
 
	local model = Hash:lower()
	local spawner_x = cord_x
	local spawner_y = cord_y
	local spawner_z = cord_z
 
	globals.set_float(CrVh+7+0, spawner_x)
	globals.set_float(CrVh+7+1, spawner_y)
	globals.set_float(CrVh+7+2, spawner_z)
	globals.set_int(CrVh+27+66, joaat(Hash))
	globals.set_int(CrVh+27+28, 1)  -- Weaponised ownerflag
	globals.set_int(CrVh+27+60, 1)
	globals.set_int(CrVh+27+95, 14) -- Ownerflag
	globals.set_int(CrVh+27+94, 2)  -- Personal car ownerflag
	globals.set_int(CrVh+5, 1)      -- SET('i',CarSpawn+0x1168, 1)  --can spawn flag must be odd
	globals.set_int(CrVh+2, 1)      -- SET('i',CarSpawn+0x1180, 1) --spawn toggle gets reset to 0 on car spawn
	globals.set_int(CrVh+3, pegasus)
	globals.set_int(CrVh+27+74, 1) -- Red Neon Amount 1-255 100%-0%
	globals.set_int(CrVh+27+75, 1) -- Green Neon Amount 1-255 100%-0%
	globals.set_int(CrVh+27+76, 0) -- Blue Neon Amount 1-255 100%-0%
	globals.set_int(CrVh+27+60, 1) --landinggear/vehstate
	globals.set_int(CrVh+27+5, -1) -- default paintjob primary -1 auto 120
	globals.set_int(CrVh+27+6, -1) -- default paintjob secondary -1 auto 120
	globals.set_int(CrVh+27+7, -1)
	globals.set_int(CrVh+27+8, -1)
	globals.set_int(CrVh+27+19, 4)
	globals.set_int(CrVh+27+21, 4)  -- Engine (0-3)
	globals.set_int(CrVh+27+22, 3)
	globals.set_int(CrVh+27+23, 3)  -- Transmission (0-9)
	globals.set_int(CrVh+27+24, 58)
	globals.set_int(CrVh+27+26, 5)  -- Armor (0-18)
	globals.set_int(CrVh+27+27, 1)  -- Turbo (0-1)
	globals.set_int(CrVh+27+65, 2) -- Window tint 0-6
	globals.set_int(CrVh+27+69, -1) -- Wheel type
	globals.set_int(CrVh+27+33, -1) -- Wheel Selection
	globals.set_int(CrVh+27+25, 8)  -- Suspension (0-13)
	globals.set_int(CrVh+27+19, -1)
 
	local WP,WS = 2,1
	if model == 'oppressor2' then
		WP = 2
	elseif model == 'apc' or model == 'deluxo' then
		WP = -1
	elseif model == 'bombushka' then
		WP = 1
	elseif model == 'tampa3' or model == 'insurgent3' or model == 'halftrack' then
		WP = 3
	elseif model == 'barrage' then
		WP = 30
	end
 
	globals.set_int(CrVh+27+15, WP)  -- primary weapon
	globals.set_int(CrVh+27+20, WS) -- secondary weapon
end
cayoplay_menu:add_action("Winky", function()
	MYCREATE_VEHICLE("winky",4965.86,-5719.61,18.34,0)
end)
cayoplay_menu:add_action("Manchez Scout", function()
	MYCREATE_VEHICLE("manchez2",4965.24,-5723.78,18.38,0)
end)
cayoplay_menu:add_action("Valkyrie(MainDockHelipad)", function()
	MYCREATE_VEHICLE("valkyrie2",4882.62,-5282.87,8.13,0)
end)

local TP2LooT=cayoplay_menu:add_submenu("  _____________Teleport to loot_____________")

local function TP2L(TPx,TPy,TPz,Yaw,Pitch,Roll)
	localplayer:set_rotation(vector3(Yaw,Pitch,Roll))
	localplayer:set_position((vector3(TPx, TPy, TPz)))
end
TP2LooT:add_action("TP-Cayo Below Office", function() 
	TP2L(5002.835938, -5745.856934, 18.580250, 2.360836,0,0)
end)
TP2LooT:add_action("TP-Cayo Room1", function()
	TP2L(5078.780273, -5758.335449, 14.529647,2.856643,0,0)
end)
TP2LooT:add_action("TP-Cayo Room2", function()
	TP2L(5027.184082, -5733.711426, 16.565582,1.164920,0,0)
end)
TP2LooT:add_action("TP-Cayo Room3", function()
	TP2L(5009.367676, -5790.344727, 16.531700,-2.891438,0,0)
end)
TP2LooT:add_action("TP-Cayo UGRoom IN", function()
	TP2L(5001.265625, -5747.136230, 13.540489,2.603355,0,0)
end)
TP2LooT:add_action("                  Outside of Compound", function() end)
TP2LooT:add_action("TP-FarmLand", function()
	TP2L(5330.995605, -5269.349609, 31.885937,2.326673,0,0)
end)
TP2LooT:add_action("TP-MainDock1", function()
	TP2L(4922.276855, -5240.867676, 1.223460,-2.543614,0,0)
end)
TP2LooT:add_action("TP-MainDock2", function()
	TP2L(4999.680664, -5165.188477, 1.464381,-0.834566,0,0)
end)
TP2LooT:add_action("TP-MainDock3", function()
	TP2L(4961.548828, -5108.381836, 1.682062,-1.170775,0,0)
end)
TP2LooT:add_action("TP-MainDock4", function()
	TP2L(5193.768066, -5134.060059, 2.046071,-2.121594,0,0)
end)
TP2LooT:add_action("TP-NorthDock1", function()
	TP2L(5090.226074, -4683.037598, 1.107162,-1.704092,0,0)
end)
TP2LooT:add_action("TP-NorthDock2", function()
	TP2L(5133.788086, -4613.124512, 1.239483,2.694417,0,0)
end)
TP2LooT:add_action("TP-NorthDock3", function()
	TP2L(5065.334961, -4593.392090, 1.554311,0.143540,0,0)
end)
TP2LooT:add_action("TP-Airstrip1", function()
	TP2L(4503.551270, -4552.833496, 2.867439,-2.928557,0,0)
end)
TP2LooT:add_action("TP-Airstrip2", function()
	TP2L(4438.547852, -4448.449219, 3.028436,0.956232,0,0)
end)
TP2LooT:add_action("TP-Airstrip3", function()
	TP2L(4445.028320, -4444.031738, 5.936793,-1.704661,0,0)
end)