local GTr = 2671447+59
local GHs = 2671447+46

local function getDelay()
	local delay = 0
	local incr = 0.01
	globals.set_int(GTr, 1)
	while (true) do
		delay = delay + incr
		sleep(incr)
		if globals.get_int(GTr) == 0 then 
			return delay + incr -- "in order to build a complete solution we must multiply incr to something tied to a framerate, then it would work for everyone"~AppleVegass
		end
	end
end

local function set_model_hash(h)
	local d = getDelay()
	globals.set_int(GTr, 1)
	globals.set_int(GHs, h)
	sleep(d)
	globals.set_int(GTr, 0)
	globals.set_int(GHs, 0)
end

local ShpShft = menu.add_submenu("ShapeShift")
Info=ShpShft:add_submenu("                   Greyed out but works")
Info:add_action("Only way to keep the selections still...", function() end)
Info:add_action("...and select same item multiple times", function() end)
Info:add_action("Otherwise returns to value mentioned in ...", function() end)
Info:add_action("...the script", function() end)
local MP = {}
MP[-1667301416] = "MP Female"
MP[1885233650] = "MP Male"
ShpShft:add_array_item("Turn Back Into", MP, function() return 1885233650 end, function(Mp)
	set_model_hash(Mp)
	localplayer:set_godmode(false)
end)

local ANM = {}
ANM[-832573324] = "Boar"
ANM[1462895032] = "Cat"
ANM[-1469565163] = "Chimp"
ANM[351016938] = "Chop"
ANM[-50684386] = "Cow"
ANM[1682622302] = "Coyote"
ANM[-664053099] = "Deer"
ANM[-1318032802] = "Husky"
ANM[307287994] = "Mountain Lion"
ANM[-1323586730] = "Pig"
ANM[1125994524] = "Poodle"
ANM[1832265812] = "Pug"
ANM[-541762431] = "Rabbit"
ANM[-1011537562] = "Rat"
ANM[882848737] = "Retriever"
ANM[1126154828] = "Shepherd"
ANM[-1026527405] = "Rhesus"
ANM[-1384627013] = "Westy"
ShpShft:add_array_item("Become Animal", ANM, function() return Anm end, function(Anm)
	set_model_hash(Anm)
	localplayer:set_godmode(true)
end)

local CosP ={}
CosP[71929310] = "Clown01SMY"
CosP[880829941] = "ImpoRage"
CosP[-835930287] = "Jesus01"
CosP[1684083350] = "MovAlien01"
CosP[-407694286] = "MovSpace01SMM"
CosP[-598109171] = "Pogo01"
CosP[1681385341] = "Priest"
CosP[1011059922] = "RsRanger01AMO"
CosP[-1404353274] = "Zombie01"
CosP[-2016771922] = "JohnnyKlebitz"
CosP[1021093698] = "MimeSMY"
CosP[-1389097126] = "Orleans"
ShpShft:add_array_item("Become ....", CosP, function() return Rnd end, function(Rnd)
	set_model_hash(Rnd)
end)


local BRD = {}
BRD[1794449327] = "Chicken"
BRD[-1430839454] = "ChickenHawk"
BRD[1457690978] = "Comorant-swan like"
BRD[-1469565163] = "Crow"
BRD[1794449327] = "Hen"
BRD[-745300483] = "Seagull"
ShpShft:add_array_item("Become Bird", BRD, function() return Brd end, function(Brd)
	set_model_hash(Brd)
end)

local SCRe = {}
SCRe[1015224100] = "HammerHead Shark"
SCRe[-1920284487] = "KillerWhale"
SCRe[113504370] = "Tiger Shark"
SCRe[-1528782338] = "Sting Ray"
SCRe[1193010354] = "Humpback"
SCRe[-1950698411] = "Dolphin"
ShpShft:add_array_item("Become Sea creature", SCRe, function() return SAn end, function(SAn)
	set_model_hash(SAn)
	localplayer:set_godmode(true)
end)

local FCHarSt = {}
FCHarSt[1830688247] = "AmandaTownley"
FCHarSt[2113195075] = "Denise"
FCHarSt[-1249041111] = "DeniseFriendCutscene"
FCHarSt[1552967674] = "Maryann"
FCHarSt[946007720] = "MrsPhillips"
FCHarSt[226559113] = "Tanisha"
FCHarSt[-892841148] = "Tonya"
FCHarSt[-566941131] = "TracyDisanto"
FCHarSt[-988619485] = "PrologueHostage01"
FCHarSt[379310561] = "PrologueHostage01AFM"
ShpShft:add_array_item("Become Story Female", FCHarSt, function() return FSt end, function(FSt)
	set_model_hash(FSt)
end)

local MCHarSt = {}
MCHarSt[-566941131] = "Agent14"
MCHarSt[797459875] = "Barry"
MCHarSt[-1111799518] = "Brad"
MCHarSt[365775923] = "DaveNorton"
MCHarSt[1952555184] = "Devin"
MCHarSt[-1688898956] = "DevinSec01SMY"
MCHarSt[-1674727288] = "Dom"
MCHarSt[-872673803] = "DrFriedlander"
MCHarSt[-795819184] = "Fabien"
MCHarSt[-1313761614] = "Floyd"
MCHarSt[-1692214353] = "Franklin"
MCHarSt[-1715797768] = "Hacker"
MCHarSt[1704428387] = "Hao"
MCHarSt[2050158196] = "JayNorris"
MCHarSt[1459905209] = "JimmyDisanto"
MCHarSt[1706635382] = "LamarDavis"
MCHarSt[-538688539] = "Lazlow"
MCHarSt[1302784073] = "LesterCrest"
MCHarSt[1401530684] = "LifeInvad01"
MCHarSt[-570394627] = "LifeInvad01SMM"
MCHarSt[666718676] = "LifeInvad02"
MCHarSt[1129928304] = "MartinMadrazoCutscene"
MCHarSt[225514697] = "Michael"  --704
MCHarSt[-304305299] = "MrK"
MCHarSt[-1124046095] = "NervousRon"
MCHarSt[-287649847] = "Niko01"
MCHarSt[357551935] = "Paige"
MCHarSt[940326374] = "Rashkovsky"
MCHarSt[1283141381] = "SiemonYetarian"
MCHarSt[941695432] = "SteveHain"
MCHarSt[-597926235] = "TaoCheng"
MCHarSt[2089096292] = "TaosTranslator"
MCHarSt[-1686040670] = "Trevor"  --704
MCHarSt[-1835459726] = "Wade"
MCHarSt[-2057423197] = "PrologueDriver"
MCHarSt[-1760377969] = "PrologueHostage01AMM"
MCHarSt[-829029621] = "PrologueMournMale01"
MCHarSt[1888624839] = "PrologueSec01"
MCHarSt[2141384740] = "PrologueSec01Cutscene"
MCHarSt[666086773] = "PrologueSec02"
MCHarSt[379310561] = "PrologueHostage01AFM"
MCHarSt[915948376] = "Stretch"
ShpShft:add_array_item("Become Story Male", MCHarSt, function() return MSt end, function(MSt)
	set_model_hash(MSt)
end)

local FChar = {}
FChar[1015224100] = "Abigail"
FChar[1567728751] = "AirHostess01SFY"
FChar[2014052797] = "Bartender01SFY"
FChar[1250841910] = "BayWatch01SFY"
FChar[808859815] = "Beach01AFM"
FChar[-945854168] = "Beach01AFY"
FChar[1546450936] = "BevHills02AFY"
FChar[549978415] = "Bevhills03AFY"
FChar[920595805] = "BevHills04AFY"
FChar[-96953009] = "BikerChic"
FChar[848542878] = "BoatStaff01F"
FChar[1633872967] = "Bride"
FChar[664399832] = "Business01AFY"
FChar[2120901815] = "Business01AMM"
FChar[-912318012] = "Business01AMY"
FChar[532905404] = "Business02AFM"
FChar[826475330] = "Business02AFY"
FChar[-1280051738] = "Business02AMY"
FChar[-1366884940] = "Business03AFY"
FChar[-1211756494] = "Business04AFY"
FChar[773063444] = "Corpse01"
FChar[228356856] = "Corpse02"
FChar[1943971979] = "Drowned"
FChar[-1656894598] = "EastSA01AFM"
FChar[-173013091] = "EastSA01AFY"
FChar[1674107025] = "EastSA02AFM"
FChar[70821038] = "EastSA02AFY"
FChar[1371553700] = "EastSA03AFY"
FChar[1755064960] = "Epsilon01AFY"
FChar[1777626099] = "Factory01SFY"
FChar[-88831029] = "FatBla01AFM"
FChar[-1244692252] = "FatCult01AFM"
FChar[951767867] = "FatWhite01AFM"
FChar[373000027] = "FemBarberSFM"
FChar[1165780219] = "Fitness01AFY"
FChar[-1667301416] = "FreemodeFemale01"
FChar[793439294] = "GenHot01AFY"
FChar[2111372120] = "Golfer01AFY"
FChar[813893651] = "Hiker01AFY"
FChar[343259175] = "Hippie01AFY"
FChar[-2109222095] = "Hipster01AFY"
FChar[-1745486195] = "Hipster02AFY"
FChar[-1514497514] = "Hipster03AFY"
FChar[429425116] = "Hipster04AFY"
FChar[42647445] = "Hooker01SFY"
FChar[348382215] = "Hooker02SFY"
FChar[51789996] = "Hooker03SFY"
FChar[-1768198658] = "HotPosh01"
FChar[-1160266880] = "Indian01AFO"
FChar[153984193] = "Indian01AFY"
FChar[225287241] = "Janet"
FChar[-254493138] = "JewelAss01"
FChar[257763003] = "JewelAss"
FChar[-619494093] = "Juggalo01AFY"
FChar[-346957479] = "KarenDaniels"
FChar[1530648845] = "KerryMcintosh"
FChar[1090617681] = "KTown02AFM"
FChar[-52653814] = "Magenta"
FChar[-527186490] = "Maid01SFM"
FChar[411185872] = "Marnie"
FChar[1005070462] = "Maude"
FChar[-1080659212] = "Michelle"
FChar[-715445259] = "Migrant01SFY"
FChar[1573528872] = "Mistress"
FChar[1095737979] = "Miranda"
FChar[-785842275] = "Misty01"
FChar[-1358701087] = "Molly"
FChar[894928436] = "MovieStar"
FChar[587253782] = "MovPrem01SFY"
FChar[503621995] = "MrsThornhill"
FChar[-568861381] = "Natalia"
FChar[357551935] = "Paige"
FChar[-982642292] = "Patricia"
FChar[602513566] = "PoppyMich"
FChar[-756833660] = "Princess"
FChar[-951490775] = "Runner01AFY"
FChar[1064866854] = "RurMeth01AFY"
FChar[-1420211530] = "ScreenWriter"
FChar[-614546432] = "SCDressy01AFY"
FChar[-1371020112] = "ShopHighSFM"
FChar[-1452399100] = "ShopLowSFY"
FChar[1055701597] = "ShopMidSFY"
FChar[1767892582] = "Skater01AFY"
FChar[1951946145] = "SouCent01AFM"
FChar[1039800368] = "SouCent01AFO"
FChar[744758650] = "SouCent01AFY"
FChar[-1519524074] = "SouCent02AFO"
FChar[1519319503] = "SouCent02AFY"
FChar[-2018356203] = "SouCent03AFY"
FChar[-840346158] = "SouCentMC01AFM"
FChar[1535236204] = "SpyActress"
FChar[1381498905] = "Stripper01SFY"
FChar[1846523796] = "Stripper02SFY"
FChar[695248020] = "StripperLite"
FChar[824925120] = "SweatShop01SFM"
FChar[-2063419726] = "SweatShop01SFY"
FChar[-409745176] = "Talina"
FChar[1426880966] = "Tennis01AFY"
FChar[-1661836925] = "Topless01AFY"
FChar[1347814329] = "Tourist01AFM"
FChar[1446741360] = "Tourist01AFY"
FChar[-1859912896] = "Tourist02AFY"
FChar[-1935621530] = "TrampBeac01AFM"
FChar[-521758348] = "TranVest01AMM"
FChar[-150026812] = "TranVest02AMM"
FChar[435429221] = "Vinewood01AFY"
FChar[-625565461] = "Vinewood02AFY"
FChar[933092024] = "Vinewood03AFY"
FChar[-85696186] = "Vinewood04AFY"
FChar[-1004861906] = "Yoga01AFY"
ShpShft:add_array_item("Become Female Ped", FChar, function() return FCh end, function(FCh)
	set_model_hash(FCh)
end)

local MChar = {}
MChar[-257153498] = "Abner"
MChar[1413662315] = "Acult01AMM"
MChar[1430544400] = "Acult01AMO"
MChar[-1251702741] = "Acult01AMY"
MChar[1268862154] = "Acult02AMO"
MChar[-2132435154] = "Acult02AMY"
MChar[-781039234] = "AfriAmer01AMM"
MChar[1644266841] = "AirWorkerSMY"
MChar[-252946718] = "AlDiNapoli"
MChar[-1643617475] = "AmmuCity01SMY"
MChar[233415434] = "AmmuCountrySMM"
MChar[1206185632] = "Andreas"
MChar[-815646164] = "AntonB"
MChar[-1306051250] = "Autopsy01SMY"
MChar[68070371] = "AutoShop01SMM"
MChar[-261389155] = "Autoshop02SMM"
MChar[939183526] = "AviSchwartzman"
MChar[1752208920] = "Azteca01GMY"
MChar[-636391810] = "BabyD"
MChar[-1022961931] = "Bankman01"
MChar[-1868718465] = "Bankman"
MChar[-442429178] = "Barman01SMY"
MChar[1380197501] = "Baygor"
MChar[189425762] = "BayWatch01SMY"
MChar[1077785853] = "Beach01AMM"
MChar[-2077764712] = "Beach01AMO"
MChar[-771835772] = "Beach01AMY"
MChar[2021631368] = "Beach02AMM"
MChar[600300561] = "Beach02AMY"
MChar[-408329255] = "Beach03AMY"
MChar[2114544056] = "BeachVesp01AMY"
MChar[-900269486] = "Beachvesp02AMY"
MChar[-994634286] = "Benny"
MChar[1464257942] = "BestMen"
MChar[-1113448868] = "Beverly"
MChar[1423699487] = "BevHills01AMM"
MChar[1982350912] = "BevHills01AMY"
MChar[1068876755] = "BevHills02AMM"
MChar[1720428295] = "BevHills02AMY"
MChar[1984382277] = "BikeHire01"
MChar[-933295480] = "BoatStaff01M"
MChar[-1613485779] = "Bouncer01SMM"
MChar[933205398] = "BreakDance01AMY"
MChar[-1954728090] = "BurgerDrug"
MChar[-654717625] = "BusBoy01SMY"
MChar[-1697435671] = "Busicas01AMY"
MChar[2120901815] = "Business01AMM"
MChar[-912318012] = "Business01AMY"
MChar[-1280051738] = "Business02AMY"
MChar[-1589423867] = "Business03AMY"
MChar[-1382092357] = "Busker01SMO"
MChar[-2063996617] = "Car3Guy1"
MChar[1975732938] = "Car3Guy2"
MChar[-907676309] = "CCrew01SMM"
MChar[261586155] = "Chef01SMY"
MChar[-2054645053] = "Chef2"
MChar[1240128502] = "Chef"
MChar[-166363761] = "ChemWork01GMM"
MChar[788443093] = "ChemSec01SMM"
MChar[610290475] = "Chip"
MChar[-1057787465] = "Claude01"
MChar[1825562762] = "Clay"
MChar[-1660909656] = "ClayPain"
MChar[-429715051] = "Cletus"
MChar[436345731] = "CntryBar01SMM"
MChar[-673538407] = "Construct01SMY"
MChar[-973145378] = "Construct02SMY"
MChar[678319271] = "CrisFormage"
MChar[755956971] = "Cyclist01"
MChar[-37334073] = "Cyclist01amy"
MChar[1182012905] = "Dale"
MChar[-459818001] = "Dealer01SMY"
MChar[-12678997] = "DHill01AMY"
MChar[1646160893] = "DoaMan"
MChar[349680864] = "DockWork01SMM"
MChar[-2039072303] = "DockWork01SMY"
MChar[-730659924] = "Doctor01SMM"
MChar[579932932] = "Doorman01SMY"
MChar[579932932] = "Doorman01SMY"
MChar[766375082] = "DownTown01AMY"
MChar[-628553422] = "Dreyfuss"
MChar[1976765073] = "DWService01SMY"
MChar[-175076858] = "DWService02SMY"
MChar[-106498753] = "EastSA01AMM"
MChar[-1538846349] = "Eastsa01AMY"
MChar[131961260] = "EastSa02AMM"
MChar[377976310] = "EastSA02AMY"
MChar[712602007] = "EdToh"
MChar[2010389054] = "Epsilon01AMY"
MChar[-1434255461] = "Epsilon02AMY"
MChar[1097048408] = "Factory01SMY"
MChar[-398748745] = "FamCA01GMY"
MChar[866411749] = "FamDD01"
MChar[-613248456] = "FamDNF01GMY"
MChar[-2077218039] = "FamFor01GMY"
MChar[-1806291497] = "Farmer01AMM"
MChar[1641152947] = "FatLatin01AMM"
MChar[728636342] = "FilmDirector"
MChar[732742363] = "FilmNoir"
MChar[1189322339] = "FinGuru01"
MChar[1229853272] = "Fireman01SMY"
MChar[-2078561997] = "G"
MChar[-1453933154] = "Gaffer01SMM"
MChar[-294281201] = "GarbageSMY"
MChar[1240094341] = "Gardener01SMM"
MChar[-775102410] = "Gay01AMY"
MChar[-1519253631] = "Gay02AMY"
MChar[115168927] = "GenFat01AMM"
MChar[330231874] = "GenFat02AMM"
MChar[-1386944600] = "GenStreet01AMO"
MChar[-1736970383] = "GenStreet01AMY"
MChar[891398354] = "GenStreet02AMY"
MChar[411102470] = "GenTransportSMM"
MChar[1169888870] = "GlenStank01"
MChar[-1444213182] = "Golfer01AMM"
MChar[-685776591] = "Golfer01AMY"
MChar[-1001079621] = "Griff01"
MChar[815693290] = "Grip01SMY"
MChar[-20018299] = "Groom"
MChar[-961242577] = "Guido01"
MChar[-1289578670] = "GunVend01"
MChar[1099825042] = "HairDress01SMM"
MChar[1809430156] = "HasJew01AMM"
MChar[-512913663] = "HasJew01AMY"
MChar[1358380044] = "Hiker01AMY"
MChar[1822107721] = "HillBilly01AMM"
MChar[2064532783] = "HillBilly02AMM"
MChar[-264140789] = "Hippie01"
MChar[2097407511] = "Hippy01AMY"
MChar[587703123] = "Hipster01AMY"
MChar[349505262] = "Hipster02AMY"
MChar[1312913862] = "Hipster03AMY"
MChar[429425116] = "Hipster04AFY"
MChar[-573920724] = "Indian01AMM"
MChar[706935758] = "Indian01AMY"
MChar[-1452549652] = "JanitorSMM"
MChar[767028979] = "JetSki01AMY"
MChar[-1395868234] = "JewelSec01"
MChar[-422822692] = "JewelThief"
MChar[-308279251] = "JimmyBoston"
MChar[-1105179493] = "JoeMinuteman"
MChar[-518348876] = "Josef"
MChar[2040438510] = "Josh"
MChar[2109968527] = "Justin"
MChar[-782401935] = "KTown01AMM"
MChar[355916122] = "KTown01AMO"
MChar[452351020] = "KTown01AMY"
MChar[696250687] = "KTown02AMY"
MChar[-1635724594] = "Lathandy01SMM"
MChar[321657486] = "Latino01AMY"
MChar[-610530921] = "LineCookSMM"
MChar[1985653476] = "LSMetro01SMM"
MChar[803106487] = "Malibu01AMM"
MChar[-927261102] = "Mani"
MChar[-46035440] = "Manuel"
MChar[2124742566] = "Mariachi01SMM"
MChar[479578891] = "Markfost"
MChar[1768677545] = "MethHead01AMY"
MChar[-317922106] = "Migrant01SMM"
MChar[-886023758] = "Milton"
MChar[-664900312] = "MovPrem01SMM"
MChar[1264920838] = "MusclBeac01AMY"
MChar[-920443780] = "MusclBeac02AMY"
MChar[-322270187] = "Paparazzi01AMM"
MChar[1346941736] = "Paparazzi"
MChar[-1717894970] = "Paper"
MChar[-1286380898] = "Paramedic01SMM"
MChar[921110016] = "Party01"
MChar[-2114499097] = "PartyTarget"
MChar[1209091352] = "PestCont01SMY"
MChar[994527967] = "PestContDriver"
MChar[193469166] = "PestContGunman"
MChar[-413447396] = "Pilot01SMM"
MChar[-1422914553] = "Pilot01SMY"
MChar[-163714847] = "Pilot02SMM"
MChar[-1445349730] = "Polynesian01AMM"
MChar[-2088436577] = "Polynesian01AMY"
MChar[645279998] = "Popov"
MChar[1650036788] = "Postal01SMM"
MChar[1936142927] = "Postal02SMM"
MChar[1596003233] = "PrisMuscl01SMY"
MChar[2073775040] = "Prisoner01"
MChar[2073775040] = "Prisoner01SMY"
MChar[-449965460] = "RampGang"
MChar[1165307954] = "RampHic"
MChar[-554721426] = "RampHipster"
MChar[623927022] = "Runner01AMY"
MChar[-2076336881] = "Runner02AMY"
MChar[1001210244] = "RurMeth01AMM"
MChar[1024089777] = "RussianDrunk"
MChar[1328415626] = "Salton01AMM"
MChar[539004493] = "Salton01AMO"
MChar[1626646295] = "Salton02AMM"
MChar[-1299428795] = "Salton03AMM"
MChar[-1773858377] = "Salton04AMM"
MChar[-1872961334] = "SalvaBoss01GMY"
MChar[416176080] = "ShopKeep01"
MChar[1846684678] = "ShopMaskSMY"
MChar[-640198516] = "Skater01AMM"
MChar[-1044093321] = "Skater01AMY"
MChar[-1342520604] = "Skater02AMY"
MChar[32417469] = "SkidRow01AMM"
MChar[193817059] = "SoCenLat01AMM"
MChar[718836251] = "SouCent01AMM"
MChar[-417940021] = "SouCent01AMY"
MChar[-1620232223] = "SouCent02AMM"
MChar[1082572151] = "SouCent02AMO"
MChar[-1398552374] = "SouCent02AMY"
MChar[238213328] = "SouCent03AMM"
MChar[-1007618204] = "SouCent03AMY"
MChar[-1023672578] = "SouCent04AMM"
MChar[-1976105999] = "SouCent04AMY"
MChar[-1408326184] = "SpyActor"
MChar[-1852518909] = "StagGrm01AMO"
MChar[-812470807] = "StBla01AMY"
MChar[-1731772337] = "Stbla02AMY"
MChar[-2039163396] = "StLat01AMY"
MChar[-1029146878] = "StLat02AMM"
MChar[2035992488] = "StrPerf01SMM"
MChar[469792763] = "StrPreach01SMM"
MChar[-48477765] = "StrPunk01GMY"
MChar[228715206] = "StrPunk02GMY"
MChar[-829353047] = "StrVend01SMM"
MChar[-1837161693] = "StrVend01SMY"
MChar[605602864] = "StWhi01AMY"
MChar[919005580] = "StWhi02AMY"
MChar[-1222037748] = "SunBathe01AMY"
MChar[-356333586] = "Surfer01AMY"
MChar[-1709285806] = "TapHillBilly"
MChar[-1800524916] = "Tattoo01AMO"
MChar[1416254276] = "Tennis01AMM"
MChar[-1573167273] = "TennisCoach"
MChar[1728056212] = "Terry"
MChar[-847807830] = "TomEpsilon"
MChar[-929103484] = "Tourist01AMM"
MChar[1461287021] = "TrafficWarden"
MChar[1787764635] = "Tramp01"
MChar[516505552] = "Tramp01AMM"
MChar[390939205] = "Tramp01AMO"
MChar[1404403376] = "TrampBeac01AMM"
MChar[1498487404] = "Trucker01SMM"
MChar[1382414087] = "TylerDixon"
MChar[-1614577886] = "UPS01SMM"
MChar[-792862442] = "UPS02SMM"
MChar[-905948951] = "USCG01SMY"
MChar[999748158] = "Valet01SMY"
MChar[-1047300121] = "VinDouche01AMY"
MChar[1264851357] = "VineWood01AMY"
MChar[1561705728] = "VineWood02AMY"
MChar[534725268] = "Vinewood03AMY"
MChar[835315305] = "Vinewood04AMY"
MChar[-1387498932] = "Waiter01SMY"
MChar[-1427838341] = "WeiCheng"
MChar[-1871275377] = "WillyFist"
MChar[1426951581] = "WinClean01SMY"
MChar[1142162924] = "XMech01SMY"
MChar[-1105135100] = "XMech02SMY"
MChar[-1425378987] = "Yoga01AMY"
MChar[188012277] = "Zimbor"
MChar[1092080539] = "Scientist01SMM"
ShpShft:add_array_item("Become Male Ped", MChar, function() return MCh end, function(MCh)
	set_model_hash(MCh)
end)

local FCutS = {}
FCutS[-1988720319] = "AbigailCutscene"
FCutS[-1779492637] = "AmandaTownleyCutscene"
FCutS[117698822] = "AnitaCutscene"
FCutS[-2101379423] = "BrideCutscene"
FCutS[-321892375] = "DebraCutscene"
FCutS[1870669624] = "DeniseCutscene"
FCutS[261428209] = "GuadalopeCutscene"
FCutS[-1022036185] = "GurkCutscene"
FCutS[1145088004] = "JewelAssCutscene"
FCutS[808778210] = "JanetCutscene"
FCutS[-1360365899] = "Stripper01Cutscene"
FCutS[161007533] = "MaryannCutscene"
FCutS[161007533] = "MaudeCutscene"
FCutS[1167167044] = "MollyCutscene"
FCutS[1334976110] = "MrsThornhillCutscene"
FCutS[-872569905] = "MrsPhillipsCutscene"
FCutS[1325314544] = "NataliaCutscene"
FCutS[1528799427] = "PaigeCutscene"
FCutS[-544533759] = "PatriciaCutscene"
FCutS[-1948177172] = "ScreenWriterCutscene"
FCutS[-1360365899] = "Stripper01Cutscene"
FCutS[-2126242959] = "Stripper02Cutscene"
FCutS[-2126242959] = "Stripper02Cutscene"
FCutS[1123963760] = "TanishaCutscene"
FCutS[1665391897] = "TonyaCutscene"
FCutS[101298480] = "TracyDisantoCutScene"
ShpShft:add_array_item("Female(CutScene)", FCutS, function() return FCt end, function(FCt)
	set_model_hash(FCt)
end)

local MCutS = {}
MCutS[1841036427] = "Agent14Cutscene"
MCutS[-680474188] = "AgentCutscene"
MCutS[-413773017] = "AndreasCutscene"
MCutS[-1513650250] = "AntonCutscene"
MCutS[-1734476390] = "AviSchwartzmanCuts"
MCutS[-1410400252] = "BallasOGCutscene"
MCutS[-1755309778] = "BankmanCutscene"
MCutS[-1267809450] = "BeverlyCutscene"
MCutS[1915268960] = "BradCadaverCutscene"
MCutS[-270159898] = "BradCutscene"
MCutS[-1931689897] = "BurgerDrugCutscene"
MCutS[71501447] = "Car3Guy1Cutscene"
MCutS[327394568] = "Car3Guy2Cutscene"
MCutS[-1932625649] = "CarBuyerCutscene"
MCutS[-359228352] = "CaseyCutscene"
MCutS[-1369710022] = "Chef2Cutscene"
MCutS[-1555576182] = "ChefCutscene"
MCutS[-1463670378] = "ChinGoonCutscene"
MCutS[-607414220] = "ClayCutscene"
MCutS[-890640939] = "CletusCutscene"
MCutS[-1041006362] = "CrisFormageCutscene"
MCutS[-1538297973] = "CustomerCutscene"
MCutS[216536661] = "DaleCutscene"
MCutS[-2054740852] = "DaveNortonCutscene"
MCutS[788622594] = "DevinCutscene"
MCutS[1198698306] = "DomCutscene"
MCutS[1012965715] = "DreyfussCutscene"
MCutS[-1549575121] = "DrFriedlanderCutscene"
MCutS[1191403201] = "FabienCutscene"
MCutS[103106535] = "FloydCutscene"
MCutS[466359675] = "FosRepCutscene"
MCutS[-1567723049] = "GCutscene"
MCutS[2058033618] = "GroomCutscene"
MCutS[-396800478] = "GroveStrDlrCutscene"
MCutS[-325152996] = "HaoCutscene"
MCutS[1863555924] = "HughCutscene"
MCutS[1531218220] = "HunterCutscene"
MCutS[-482210853] = "ImranCutscene"
MCutS[1153203121] = "JackHowitzerCutscene"
MCutS[-1040164288] = "JanitorCutscene"
MCutS[60192701] = "JimmyBostonCutscene"
MCutS[-1194552652] = "JimmyDisantoCutscene"
MCutS[-258122199] = "JoeMinutemanCutscene"
MCutS[-91572095] = "JohnnyKlebitzCutscene"
MCutS[1167549130] = "JosefCutscene"
MCutS[1158606749] = "JoshCutscene"
MCutS[1162230285] = "LamarDavisCutscene"
MCutS[949295643] = "LazlowCutscene"
MCutS[-1248528957] = "LesterCrestCutscene"
MCutS[1918178165] = "LifeInvad01Cutscene"
MCutS[-72125238] = "ManuelCutscene"
MCutS[1129928304] = "MartinMadrazoCutscene"
MCutS[-1217776881] = "MiltonCutscene"
MCutS[-1922568579] = "MoviePremMaleCutscene"
MCutS[-1010001291] = "MrKCutscene"
MCutS[2023152276] = "NervousRonCutscene"
MCutS[-515400693] = "NigelCutscene"
MCutS[518814684] = "OldMan1aCutscene"
MCutS[-1728452752] = "OldMan2Cutscene"
MCutS[-1389097126] = "OmegaCutscene"
MCutS[-1010001291] = "OrleansCutscene"
MCutS[-199280229] = "OscarCutscene"
MCutS[-1010001291] = "MrKCutscene"
MCutS[1798879480] = "PaperCutscene"
MCutS[1635617250] = "PopovCutscene"
MCutS[793443893] = "PornDudesCutscene"
MCutS[1299047806] = "PriestCutscene"
MCutS[-267695653] = "PrologueDriverCutscene"
MCutS[2141384740] = "PrologueSec01Cutscene"
MCutS[512955554] = "PrologueSec02Cutscene"
MCutS[-1031795266] = "RampGangCutscene"
MCutS[-2054384456] = "RampHicCutscene"
MCutS[569740212] = "RampHipsterCutscene"
MCutS[162605104] = "RampMexCutscene"
MCutS[411081129] = "RashkovskyCutscene"
MCutS[-1436281204] = "RoccoPelosiCutscene"
MCutS[1179785778] = "RussianDrunkCutscene"
MCutS[-1064078846] = "SiemonYetarianCutscene"
MCutS[-154017714] = "SolomonCutscene"
MCutS[-1528782338] = "SteveHainsCutscene"
MCutS[-1992464379] = "StretchCutscene"
MCutS[-2006710211] = "TaoChengCutscene"
MCutS[1397974313] = "TaosTranslatorCutscene"
MCutS[1545995274] = "TennisCoachCutscene"
MCutS[978452933] = "TerryCutscene"
MCutS[1776856003] = "TomCutscene"
MCutS[-1945119518] = "TomEpsilonCutscene"
MCutS[776079908] = "ReporterCutscene"
MCutS[-567724045] = "TrafficWardenCutscene"
MCutS[-277325206] = "UndercoverCopCutscene"
MCutS[1224690857] = "VagosSpeakCutscene"
MCutS[-765011498] = "WadeCutscene"
MCutS[819699067] = "WeiChengCutscene"
MCutS[-357782800] = "ZimborCutscene"
ShpShft:add_array_item("Male(CutScene)", MCutS, function() return MCt end, function(MCt)
	set_model_hash(MCt)
end)


local FGang = {}
FGang[361513884] = "Ballas01GFY"
FGang[1699403886] = "DownTown01AFM"
FGang[766375082] = "DownTown01AMY"
FGang[1520708641] = "Vagos01GFY"
ShpShft:add_array_item("Female(GangMem)", FGang, function() return FGn end, function(FGn)
	set_model_hash(FGn)
end)

local MGang = {}
MGang[-236444766] = "ArmBoss01GMM"
MGang[-39239064] = "ArmGoon01GMM"
MGang[-984709238] = "ArmGoon02GMY"
MGang[-412008429] = "ArmLieut01GMM"
MGang[-83995340] = "Armoured01"
MGang[-1782092083] = "Armoured01SMM"
MGang[1669696074] = "Armoured02SMM"
MGang[1657546978] = "ArmyMech01SMY"
MGang[-198252413] = "BallaEast01GMY"
MGang[588969535] = "BallaOrig01GMY"
MGang[-1492432238] = "BallasOG"
MGang[599294057] = "BallaSout01GMY"
MGang[-1176698112] = "ChiBoss01GMM"
MGang[275618457] = "ChiCold01GMM"
MGang[2119136831] = "ChiGoon01GMM"
MGang[-9308122] = "ChiGoon02GMM"
MGang[-837606178] = "Hunter"
MGang[891945583] = "KorBoss01GMM"
MGang[1330042375] = "Lost01GMY"
MGang[1032073858] = "Lost02GMY"
MGang[850468060] = "Lost03GMY"
MGang[1768677545] = "MethHead01AMY"
MGang[1466037421] = "MexBoss01GMM"
MGang[1226102803] = "MexBoss02GMM"
MGang[-578715987] = "MexCntry01AMM"
MGang[-1109568186] = "MexGang01GMY"
MGang[653210662] = "MexGoon01GMY"
MGang[832784782] = "MexGoon02GMY"
MGang[-1773333796] = "MexGoon03GMY"
MGang[-1302522190] = "MexLabor01AMM"
MGang[810804565] = "Mexthug01AMY"
MGang[1191548746] = "MilitaryBum"
MGang[1694362237] = "Motox01AMY"
MGang[2007797722] = "Motox02AMY"
MGang[1746653202] = "OGBoss01AMM"
MGang[1906124788] = "OldMan1A"
MGang[-283816889] = "OldMan2"
MGang[1625728984] = "Omega"
MGang[768005095] = "Oneil"
MGang[1624626906] = "RivalPaparazzi"
MGang[-178150202] = "RoadCyc01AMY"
MGang[-1067576423] = "Robber01SMY"
MGang[-1872961334] = "RoccoPelosi"
MGang[-709209345] = "SalvaBoss01GMY"
MGang[663522487] = "SalvaGoon01GMY"
MGang[846439045] = "SalvaGoon02GMY"
MGang[62440720] = "SalvaGoon03GMY"
MGang[1794381917] = "SBikeAMO"
MGang[-995747907] = "VagosFun01"
MGang[-100858228] = "VagosSpeak"
MGang[-1047300121] = "VinDouche01AMY"
ShpShft:add_array_item("Male(GangMem)", MGang, function() return MGn end, function(MGn)
	set_model_hash(MGn)
end)

local LAW = {}
LAW[1096929346] = "Sheriff01SFY"
LAW[-1275859404] = "BlackOps01SMY"
LAW[2047212121] = "BlackOps02SMY"
LAW[1349953339] = "BlackOps03SMY"
LAW[-520477356] = "Casey"
LAW[1650288984] = "CIASec01SMM"
LAW[1581098148] = "Cop01SMY"
LAW[368603149] = "Cop01SFY"
LAW[-1699520669] = "CopCutscene"
LAW[988062523] = "FBISuit01"
LAW[874722259] = "FIBArchitect"
LAW[-2051422616] = "FIBMugger01"
LAW[-306416314] = "FIBOffice01SMM"
LAW[653289389] = "FIBOffice02SMM"
LAW[1558115333] = "FIBSec01"
LAW[2072724299] = "FIBSec01SMM"
LAW[245247470] = "HighSec01SMM"
LAW[691061163] = "HighSec02SMM"
LAW[1939545845] = "HWayCop01SMY"
LAW[-220552467] = "Marine01SMM"
LAW[1702441027] = "Marine01SMY"
LAW[-265970301] = "Marine02SMM"
LAW[1490458366] = "Marine02SMY"
LAW[1925237458] = "Marine03SMY"
LAW[1631478380] = "MerryWeatherCutscene"
LAW[1822283721] = "MPros01"
LAW[1456041926] = "PrisGuard01SMM"
LAW[-1614285257] = "Ranger01SFY"
LAW[-277793362] = "Ranger01SMY"
LAW[-681004504] = "Security01SMM"
LAW[451459928] = "SnowCop01SMM"
LAW[-1920001264] = "SWAT01SMY"
LAW[-277325206] = "UndercoverCopCutscene"
ShpShft:add_array_item("Become Law enforcer", LAW, function() return Lw end, function(Lw)
	set_model_hash(Lw)
end)