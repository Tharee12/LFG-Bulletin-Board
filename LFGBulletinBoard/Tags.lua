local TOCNAME,GBB=...

-- IMPORTANT, everything must be in low-case and with now space!

local function langSplit(source)
	local ret={}
	for lang,pat in pairs(source) do
		if pat~="-" then 
			ret[lang]=GBB.Tool.Split(pat," ")
		end
	end
	return ret
end

GBB.suffixTagsLoc=langSplit({
	enGB ="s group run runs",
	deDE ="gruppe",
	ruRU ="группран фарм фарма фармить",
	frFR = "groupe",
	zhTW = "",
})

GBB.searchTagsLoc =langSplit({
	enGB = "group lfg lf lfm lftank lfheal lfhealer lfdps lfdd dd heal healer tank dps xdd xheal xhealer xtank druid hunter mage pala paladin priest rogue rouge shaman warlock warrior elite quest elitequest elitequests",				

	deDE = "gesucht suche suchen sucht such gruppe grp sfg sfm druide dudu jäger magier priester warri schurke rschami schamane hexer hexenmeister hm krieger heiler xheiler go run",

	ruRU = "лфг ищет ищу нид нужны лфм лф2м ищем пати похилю лф танк хил нужен дд рдд мдд ршам рога вар прист армс пал",
	frFR = "groupe cherche chasseur druide mage paladin pretre voleur chaman quete",

	zhTW = "缺 來 找 徵 坦 補 DD 輸出 戰 聖 薩 獵 德 賊 法 牧 術",
})

GBB.badTagsLoc = langSplit({
	enGB = "layer",
	deDE = "fc",
	ruRU = "гильдию гильдия слой",
	frFR = "",
	zhTW = "影布 回流",
})

GBB.heroicTagsLoc=langSplit({
	enGB ="h hc heroic",
	deDE ="h hc heroic",
	ruRU ="гер героик",
	frFR = "h hc heroic",
	zhTW = "h 英雄",
})



GBB.dungeonTagsLoc={
	enGB = langSplit({
		["RFC"] = 	"rfc ragefire chasm" ,
		["DM"]  = 	"deadmines vc vancleef dead mines mine" ,
		["WC"]  = 	"wc wailing caverns" ,	
		["SFK"] = 	"sfk shadowfang" ,
		["STK"] = 	"stk stock stockade stockades" ,
		["BFD"] = 	"bfd blackfathom fathom" ,
		["GNO"] =  	"gnomer gno gnomeregan gnomeragan gnome gnomregan gnomragan gnom gnomergan" ,
		["RFK"] = 	"rfk kraul" ,
		["SM2"] =	"sm scarlet monastery mona",
		["SMG"] = 	"smgy smg gy graveyard" ,
		["SML"] = 	"smlib sml lib library" ,
		["SMA"] = 	"smarm sma arm armory herod armoury arms" ,
		["SMC"] =  	"smcath smc cath cathedral",
		["RFD"] = 	"rfd downs" ,
		["ULD"] = 	"uld ulda uldaman ulduman uldman uldama udaman" ,
		["ZF"]  = 	"zf zul farrak zul'farrak zulfarrak zulfarak zul´farrak zul`farrak zulfa zulf" ,
		["MAR"] = 	"mar mara maraudon mauradon mauro maurodon princessrun maraudin maura marau mauraudon" ,
		["ST"]  = 	"st sunken atal temple" ,
		["BRD"] = 	"brd emperor emp arenarun angerforge blackrockdepth",
		["DM2"] =	"dire maul diremaul",
		["DME"] =  	"dme dmeast east puzilin jumprun",
		["DMN"] = 	"dmn dmnorth north tribute",
		["DMW"] = 	"dmw dmwest west",
		["STR"] = 	"stratlive live living stratUD undead ud baron stratholme stath stratholm strah strath strat starth",
		["SCH"] = 	"scholomance scholo sholo sholomance",
		["LBRS"] = 	"lower lbrs lrbs",
		["UBRS"] =	"upper ubrs urbs rend",
		["RAMPS"] = "ramparts rampart ramp ramps",
		["BF"] = "furnace furn bf",
		["SP"] = 	"slavepens pens sp",
		["UB"] = 	"underbog ub",
		["MT"] = 	"manatombs mana mt tomb tombs",
		["CRYPTS"] = "crypts crypt auchenai ac acrypts acrypt",
		["SETH"] = 	"sethekk seth sethek",
		["OHB"] = 	"ohb oh ohf durnholde hillsbrad escape",
		["MECH"] = 	"mech mechanar",
		["BM"] = 	"morass bm black",
		["MGT"] = 	"mgt mrt terrace magisters magister",
		["SH"] = 	"sh shattered shatered shaterred",
		["BOT"] = 	"botanica bot",
		["SL"] = 	"sl slab labyrinth lab",
		["SV"] = 	"sv steamvault steamvaults steam vault valts",
		["ARC"] = 	"arc arcatraz alcatraz",
		["KARA"] = 	"kara kz karazhan",
		["GL"] = 	"gl gruul gruuls gruul's",
		["MAG"] = 	"mag magtheridon magtheridon's magth",
		["SSC"] = 	"ssc serpentshrine serpentshine",
		["ZA"] = 	"za zulaman zul-aman zaman aman zul'aman",
		["EYE"] = 	"eye tk",
		["HYJAL"] = "hyjal hs hyj",
		["BT"] = 	"bt",
		["SWP"] = 	"swp sunwell plateau plataeu sunwel",
		["ONY"] = 	"onyxia ony",
		["MC"]  = 	"molten core mc",
		["ZG"]  = 	"zg gurub zul'gurub zulgurub zul´gurub zul`gurub zulg",
		["AQ20"] = 	"ruins aq20",
		["BWL"] = 	"blackwing bwl",
		["AQ40"] = 	"aq40" ,
		["NAX"] = 	"naxxramas nax naxx",
		["WSG"] = 	"wsg warsong ws",
		["AB"]  = 	"basin",
		["AV"]  = 	"av valley",	
		["EOTS"] =  "storm eots",
		["ARENA"] = "2s 3s 5s 3v3 5v5 2v2 2vs2 3vs3 5vs5",
		["TRADE"] = "buy buying sell selling wts wtb hitem henchant htrade enchanter", --hlink
	}),
	deDE =langSplit({
		["RFC"] = 	"rfa ragefireabgrund flammenschlund flamenschlund rf rfg" ,
		["DM"]  = 	"todesminen todesmine tm" ,
		["WC"]  = 	"hdw wehklagens" ,	
		["SFK"] = 	"burg bsf schattenfang" ,
		["STK"] = 	"verlies verließ verliess" ,
		["BFD"] = 	"bft blackfathomtiefen tiefschwarze grotte tsg" ,
		--["GNO"] =  	{} ,
		["RFK"] = 	"kral krall karl" ,
		["SMG"] = 	"friedhof hof fh freidhof" ,
		["SML"] = 	"bibli bibi bibliothek bib bücherei bibo biblio biblo bibl" ,
		["SM2"]	=	"kloster",
		["SMA"] = 	"wk waffenkammer arsenal" ,
		["SMC"] =  	"kathe kathedrale kath katha kahte",
		["RFD"] = 	"hügel huegel" ,
		["ULD"] = 	"uldamann" ,
		["ZF"]  = 	"zul zulfarrak farrak" ,
		["MAR"] = 	"prinzessinnenrun prinzessinenrun prinzessinrun prinzessrun" ,
		["ST"]  = 	"tempel" ,
		["BRD"] = 	"blackrocktiefen blackrock brt imperator imp",
		["DM2"] =	"düsterbruch duesterbruch db",
		["DME"] =  	"ost dbo dbost",
		["DMN"] = 	"tribut dbn nord dbnord",
		["DMW"] = 	"dbw dbwest",
		["STR"] = 	"lebend untot",
		--["SCH"] = 	{},
		--["LBRS"] = 	{},
		--["UBRS"] =	{},
		--["ONY"] = 	{},
		["MC"]  = 	"kern",
		--["ZG"]  = 	{},
		--["AQ20"] = 	{},
		--["BWL"] = 	{},
		--["AQ40"] = 	{} ,
		--["NAX"] = 	{},
		["RAMPS"] = "bm bollwerk höllenfeuerbollwerk bw" ,
		["BF"] = "bk kessel blutkessel" ,
		["SP"] = 	"sp sklaven sklavenunterkünfte" ,
		["UB"] = 	"ts sumpf tiefensumpf tiefen" ,
		["MT"] = 	"mg gruft managruft manatomb tomb" ,
		["CRYPTS"] = "krypta auchenaikrypta auchen" ,
		["SETH"] = 	"sh sethekhallen seth sethek" ,
		["OHB"] = 	"hdz1 hillsbrad" ,
		["MECH"] = 	"mecha mechanar mech" ,
		["BM"] = 	"hdz2 morast" ,
		["MGT"] = 	"tdm terasse" ,
		["SH"] = 	"zh zerschmetterte hallen" ,
		["BOT"] = 	"bota botanika botanica" ,
		["SL"] = 	"sl schlabby schattenlab shadow schattenlaby shadowlab" ,
		["SV"] = 	"dk dampfkammer" ,
		["ARC"] = 	"arca arka arkatraz arcatraz" ,
		["KARA"] = 	"kara karazahn"  ,
		["GL"] = 	"grull grul gruul"  ,
		["MAG"] = 	"maggi magi magtheridons magtheridon" ,
		["SSC"] = 	"ssc vashi schlangenschrein" ,
		["ZA"] = 	"za zulaman aman zul" ,
		["EYE"] = 	"auge tk fds" ,
		["HYJAL"] = "hdz3 mount hyjal mounthyjal " ,
		["BT"] = 	"tempel bt black blacktempel blacktemple temple" ,
		--["SWP"] = {},
 
		["WSG"] = 	"warsongschlucht schlucht",
		--["AB"]  = 	{},
		--["AV"]  = 	{},
		["EOTS"] =  "ads",
		["ARENA"] = "2s 3s 5s 3v3 5v5 2v2 2vs2 3vs3 5vs5",	
		["TRADE"] =	"kaufe verkauf kauf verkaufe ah vk tg trinkgeld trinkgold vz schneider verzauberer verzaubere schliesskassetten schließkassetten kassetten schlossknacken schloßknacken alchimie",
	}),	
 	ruRU = langSplit({
		["AB"] = "низина арати",
		["AQ20"] = "руины ра20",
		["AQ40"] = "ан40",
		["AV"] = "ад альтеракская долина ",
		["BFD"] = "нп непроглядная пучина пучину",
		["BRD"] = "брд гчг глубины генерал арена ран глубины черной горы",
		["BWL"] = "логово крыла тьмы лкт",
		["DM"] = "мк мертвые копи ванклиф",
		["DM2"] = "дм забытый город",
		["DME"] = "восток вдм дмвосток джампран",
		["DMN"] = "дмн дмсевер север трибут трибьют",
		["DMW"] = "дмв запад дмзапад",
		["GNO"] = "гномреган гномер гномрег гномериган гномерган",
		["LBRS"] = "лбрс нвчг нпчг нижний низ",
		["MAR"] = "мар мара марадон мараудон мару мародон мароудон мродон мородон",
		["MC"] = "недра",
		["NAX"] = "наксрамас накс",
		["ONY"] = "ониксия оня ониксию",
		["RFC"] = "оп огненная пропасть",
		["RFD"] = "ки курганы",
		["RFK"] = "ли лабиринты",
		["SCH"] = "шоло некроситет некр",
		["SFK"] = "ктк темного клыка",
		["SM2"] = "мао монастырь",
		["SMA"] = "оружейная армори арм оружейка",
		["SMC"] = "собор",
		["SMG"] = "кладбон кладбище",
		["SML"] = "библиотека библиотеку библу библа",
		["ST"] = "зх затанувший храм санкен сункен темпл",
		["STK"] = "тюрьма тюрьму тюрягу",
		["STR"] = "ст страт стратхольм",
		["RAMPS"] = "бастионы адского пламени цап бастион бап",
		["BF"] = "кузня крови кк кузню кузни",
		["SP"] = "узилище узилише улилище узилища узилеще узлще",
		["UB"] = "нижетопь нт нежитопь нижнетопь",
		["MT"] = "маны гм манатомбс манатомбы томбы мана томбс манатобс манатомб манатомс ману",
		["CRYPTS"] = "аукенайские аг аукенские аукинайские аук аукен",
		["SETH"] = "сетеккские залы сз сетеки сеттек сетекские сетеков сетеккскиезалы сеттекские",
		["OHB"] = "cтарые предгорья хилсбрада спх старый хилсбрад хилсбард",
		["MECH"] = "механар кбм механар мех меха меху",
		["BM"] = 	"черные топи",
		["MGT"] = 	"терраса магистров тм",
		["SH"] = 	"разрушенные рз разрушенных разрушеные",
		["BOT"] = "ботаника кбб ботанику бот боту",
		["SL"] = "темный тёмный  лаберинт лабиринт шл лаба",
		["SV"] = "резервуар паровое паравое паровые пп парового",
		["ARC"] = "аркатрац кба алькатрац аркатрас алькатрас алькатраз арка аркатраз",
		["TRADE"] = "куплю продам втс втб чантера чант энчантера скрафчу сделаю чарю чары",
		["UBRS"] = "убрс ввчг вчвчг впчг вчпчг верх верхний",
		["ULD"] = "ульд ульда ульдаман ульду ульдман улдаман ульдуман",
		["WC"] = "пс стенаний пещеры",
		["WSG"] = "упв ущелье песни войны варсонг всг",
		["ZF"] = "зф фарак фаррак зул'фаррак зулфарак зулфаррак зульфарак",
		["ZG"] = "зг гуруб зул'гуруб  зулгуруб  зул´гуруб зул`гуруб зул'гуруба",
		["KARA"] = "каражан кара караджан кару",
		["ARENA"] = "2s 3s 5s 3v3 5v5 2v2 2vs2 3vs3 5vs5",
		["GL"] = "грул груула",
	}),		
	frFR = langSplit({
		["RFC"] = "rfc ragefeu",
		["DM"] = "mm mortemines mine mortemine",
		["WC"] = "lams lam lamentations",
		["SFK"] = "ombrecroc",
		["STK"] = "prison",
		["BFD"] = "brassenoire",
		--["GNO"] = "",
		["RFK"] = "kraal",
		--["SM2"] =	"",
		["SMG"] = "cimetière cimetiere cim",
		["SML"] = "bibli bibliothèque bibliotheque librairie",
		["SMA"] = "armu armurerie",
		["SMC"] = "cathé cathe",
		["RFD"] = "souille souilles",
		--["ULD"] = "",
		--["ZF"]  = "",
		--["MAR"] = "",
		["ST"]  = "st sunken englouti atal",
		["BRD"] = "brd profondeur profondeurs",
		["DM2"] = "ht hache-tripes hachetripes hache tripe tripes",
		["DME"] = "htest",
		["DMN"] = "tribut nord",
		["DMW"] = "ouest",
		--["STR"] = "",
		--["SCH"] = "",
		--["LBRS"] = "",
		--["UBRS"] = "",
		["RAMPS"] = "remparts rempart  renpart ranpart renparts rampart ramparts",
		["BF"] = "fournaise",
		["SP"] = "enclos enclo",
		["UB"] = "bt basse tourbière tourbiere",
		["MT"] = "tombe mana tm manatomb",
		["CRYPTS"] = "crypte cryptes crypts crypt auchenaï auchenai",
		["SETH"] = "sethekk seth sethek setthek settek",
		["OHB"] = "gt1",
		["MECH"] = "méca mech mechanar méchanar",
		["BM"] = "gt2",
		--["MGT"] = "",
		["SH"] = "salles salle brisées brisees brise brisés brisé",
		--["BOT"] = "",
		["SL"] = "labyrinth lab laby shadowlab",
		["SV"] = "steam vault réservoir reservoir caveau",
		--["ARC"] = "",
		--["KARA"] = "",
		--["GL"] = "",
		--["MAG"] = "",
		--["SSC"] = "",
		--["ZA"] = "",
		--["EYE"] = "",
		--["HYJAL"] = "",
		--["BT"] = "",
		--["SWP"] = "",
		--["ONY"] = "",
		--["MC"] = "",
		--["ZG"] = "",
		--["AQ20"] = "",
		--["BWL"] = "",
		--["AQ40"] = "" ,
		--["NAX"] = "",
		--["WSG"] = "",
		["AB"] = "arathi",
		["AV"] = "alterac",
		["ARENA"] = "2s 3s 5s 3v3 5v5 2v2 2vs2 3vs3 5vs5",
		--["EOTS"] = "",
		["TRADE"] = "achete vends enchanteur vend",
	}),
	zhTW = langSplit({
		["RFC"] = 	"怒焰裂谷 怒驗 怒焰" ,
		["DM"]  = 	"死亡礦坑 死況 死礦" ,
		["WC"]  = 	"哀嚎洞穴 哀號 哀嚎" ,	
		["SFK"] = 	"影牙城堡 影牙" ,
		-- ["STK"] = 	"" ,
		["BFD"] = 	"黑暗深淵" ,
		["GNO"] =  	"諾姆瑞根" ,
		["RFK"] = 	"剃刀沼澤" ,
		["SM2"] =	"血色",
		["SMG"] = 	"血色墓地" ,
		["SML"] = 	"血色圖書館" ,
		["SMA"] = 	"軍械" ,
		["SMC"] =  	"教堂",
		["RFD"] = 	"剃刀高地" ,
		["ULD"] = 	"奧達曼" ,
		["ZF"]  = 	"ZF 組爾法 祖爾法" ,
		["MAR"] = 	"馬拉 瑪拉" ,
		["ST"]  = 	"神廟 阿塔哈卡" ,
		["BRD"] = 	"黑深 深淵",
		["DM2"] =	"厄運 惡運 噩運",
		["DME"] =  	"厄東 惡東 噩東",
		["DMN"] = 	"厄北 惡北 噩北 完美厄運 完美惡運 完美噩運",
		["DMW"] = 	"厄西 惡西 噩西",
		["STR"] = 	"斯坦",
		["SCH"] = 	"通靈",
		["LBRS"] = 	"黑下 黑石塔下",
		["UBRS"] =	"黑上 黑石塔上",
		["RAMPS"] = 	"堡壘 壁壘 火堡 火壘 火堡壘 火壁壘",
		["BF"] = 	"血熔爐 熔爐 融爐 血熔盧 熔盧 融盧",
		["SP"] = 	"奴隸 監獄 奴監",
		["UB"] = 	"深幽 泥沼",
		["MT"] = 	"法力 墓地 法墓",
		["CRYPTS"] = 	"地穴",
		["SETH"] = 	"鳥廳 塞斯克 塞司克 賽司克 賽斯克 鳥聽",
		["OHB"] = 	"索爾 丘陵",
		["MECH"] = 	"麥克",
		["BM"] = 	"18波 黑色沼澤 黑沼 沼澤",
		["MGT"] = 	"博學",
		["SH"] = 	"破碎",
		["BOT"] = 	"波塔 波卡",
		["SL"] = 	"迷宮 暗影 暗宮",
		["SV"] = 	"蒸氣 蒸汽",
		["ARC"] = 	"亞克",
		["KARA"] = 	"卡拉 卡啦",
		["GL"] = 	"戈魯 魯爾 戈魯爾",
		["MAG"] = 	"馬肥 瑪色 馬瑟 瑪瑟",
		-- ["SSC"] = 	"",
		["ZA"] = 	"ZA 阿曼",
		-- ["EYE"] = 	"",
		["HYJAL"] = 	"海珊 海山 海加爾",
		["BT"] = 	"黑暗神廟 黑廟",
		["SWP"] = 	"太陽",
		["ONY"] = 	"黑妹 龍妹 奧妮 ONYX",
		["MC"]  = 	"MC 熔火 螺絲",
		["ZG"]  = 	"ZG 祖爾格 組爾格 龍虎",
		["AQ20"] = 	"RAQ AQ20 廢墟",
		["BWL"] = 	"BWL 黑翼",
		["AQ40"] = 	"TAQ AQ40 安琪拉 安其拉" ,
		["NAX"] = 	"NAXX 老克 納克",
		["WSG"] = 	"戰哥 戰歌",
		["AB"]  = 	"阿拉溪 阿拉希 阿拉西",
		["AV"]  = 	"奧山 奧特蘭",	
		["EOTS"] = 	"暴風眼 暴風之眼",
		["TRADE"] = 	"買 賣 售 收 代工 出售 附魔 COD", --hlink
	}),
}

GBB.dungeonTagsLoc.enGB["DEADMINES"]={"dm"}

GBB.dungeonSecondTags = {
	["DEADMINES"] = {"DM","-DMW","-DME","-DMN"},
	["SM2"] = {"SMG","SML","SMA","SMC"},
	["DM2"] = {"DMW","DME","DMN","-DM"},
}
