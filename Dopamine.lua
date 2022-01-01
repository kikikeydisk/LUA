local rb_ref = gui.Reference("Ragebot")
local tab = gui.Tab(rb_ref, "KOL🌭BAS", ("Dopamine"))
local aa2 = gui.Groupbox(tab, "Anti-aims", 340, 15, 290, 350)
local aa1 = gui.Groupbox(tab, "AA values", 10, 15, 320, 450)
local vis1 = gui.Groupbox(tab, "Keybinds", 10, 1280, 320, 450)
local vis5 = gui.Groupbox(tab, "indicators", 10, 945, 320, 450)
local miscgroup = gui.Groupbox(tab, "Misc", 340, 295, 290, 350)
local aacontroller = gui.Combobox(aa1,"AA condition1","AA condition","Standind","Moving","In Air","On slowwalk")
local destupes = gui.Combobox(aa1,"AA_condition2","Desync type (standing)","Static desync","Sway Desync","Jitter Desync","One side desync jitter","Fake Flip(beta)")
local destupesm = gui.Combobox(aa1,"AA_condition2m","Desync type (moving)","Static desync","Sway Desync","Jitter Desync","One side desync jitter","Fake Flip(beta)")
local destupesa = gui.Combobox(aa1,"AA_condition2a","Desync type (in air)","Static desync","Sway Desync","Jitter Desync","One side desync jitter","Fake Flip(beta)")
local destupess = gui.Combobox(aa1,"AA_condition2s","Desync type (slowwalking)","Static desync","Sway Desync","Jitter Desync","One side desync jitter","Fake Flip(beta)")
local ScrW, ScrH = draw.GetScreenSize()
local enablewatermark = gui.Checkbox(miscgroup,"watermark","Enable watermark", false)
local watermarkposx=gui.Slider(miscgroup,"windpx","x", 916, 0, ScrW)
local watermarkposy=gui.Slider(miscgroup,"windpy","y", 1016, 0, ScrH)
local EnableIndicators= gui.Checkbox(vis1,"Indicator1s","EnableIndicators", false)
local dtchange = gui.Checkbox(miscgroup,"dtchange","Accurate dt", false)
local accurate2 = gui.Slider(miscgroup,"desv_maxusrcmdprocessticks","def sv_maxusrcmdprocessticks", 3, 3, 61)
local accurate3 = gui.Slider(miscgroup,"fsv_maxusrcmdprocessticksf","fd sv_maxusrcmdprocessticks", 3, 3, 61)
local accurate4 = gui.Slider(miscgroup,"dsv_maxusrcmdprocessticksd","dt sv_maxusrcmdprocessticks", 3, 3, 61)
local desnormalizer = gui.Checkbox(miscgroup,"desnorm","Desync normalizer", true)
local freestanding = gui.Checkbox(miscgroup,"freestanding","Freestand", false)
local freestandingst = gui.Combobox(miscgroup,"freestandingst","Freestand type","Enemy targered", "Peek desync","Peek real","Avoid overlap")
local freestandswitch = gui.Slider(miscgroup,"freestandreac","reaction speed (ticks)", 10, 1, 128)
local freestandingac = gui.Combobox(miscgroup,"freestandingac","Freestand speed","Fast","Medium","Slow","Custom")
local freestandspeed = gui.Slider(miscgroup,"freestandspeed","custom freestand speed", 10, 1, 20)
local rotationr = gui.Slider(aa1, "angler", "Right Limit", 1, 0, 58);
local rotationl = gui.Slider(aa1, "anglel", "Left Limit", 1, 0, 58);
local rotationrm = gui.Slider(aa1, "anglerm", "Right Limit", 1, 0, 58);
local rotationlm = gui.Slider(aa1, "anglelm", "Left Limit", 1, 0, 58);
local rotationra = gui.Slider(aa1, "anglera", "Right Limit", 1, 0, 58);
local rotationla = gui.Slider(aa1, "anglela", "Left Limit", 1, 0, 58);
local rotationrs = gui.Slider(aa1, "anglers", "Right Limit", 1, 0, 58);
local rotationls = gui.Slider(aa1, "anglels", "Left Limit", 1, 0, 58);
local lbyr = gui.Slider(aa1, "lbyr", "LBY right", 0, -180, 180);
local lbyrm = gui.Slider(aa1, "lbyrm", "LBY right", 0, -180, 180);
local lbyra = gui.Slider(aa1, "lbyra", "LBY right", 0, -180, 180);
local lbyrs= gui.Slider(aa1, "lbyrs", "LBY right", 0, -180, 180);
local lbyl = gui.Slider(aa1, "lbyl", "LBY left", 0, -180, 180);
local lbylm = gui.Slider(aa1, "lbylm", "LBY left", 0, -180, 180);
local lbyla = gui.Slider(aa1, "lbyla", "LBY left", 0, -180, 180);
local lbyls= gui.Slider(aa1, "lbyls", "LBY left", 0, -180, 180);
local yawtypesyaw = gui.Combobox(aa1,"yaw_types","Jitter type","None","Center","Random","Rotation")
local yawtypesyawm = gui.Combobox(aa1,"yaw_typesm","Jitter type","None","Center","Random","Rotation")
local yawtypesyawa = gui.Combobox(aa1,"yaw_typesa","Jitter type","None", "Center","Random","Rotation")
local yawtypesyawas = gui.Combobox(aa1,"yaw_typess","Jitter type","None","Center","Random","Rotation")
local jitter = gui.Slider(aa1, "jitter", "Range", 0, -180, 180);
local jitterm = gui.Slider(aa1, "jitterm", "Range", 0, -180, 180);
local jittera = gui.Slider(aa1, "jittera", "Range", 0, -180, 180);
local jitters = gui.Slider(aa1, "jitters", "Range", 0, -180, 180);
local jitterspeed = gui.Slider(aa1, "speed", "Speed", 2, 2, 64);
local jitterspeedm = gui.Slider(aa1, "speedm", "Speed", 2, 2, 64);
local jitterspeeda = gui.Slider(aa1, "speeda", "Speed", 2, 2, 64);
local jitterspeeds = gui.Slider(aa1, "speeds", "Speed", 2, 2, 64);
local yaw = gui.Slider(aa1, "yawangle", "Yaw hide", base, -180, 180);
local yawm = gui.Slider(aa1, "yawanglem", "Yaw hide", base, -180, 180);
local yawa = gui.Slider(aa1, "yawanglea", "Yaw hide", base, -180, 180);
local yaws = gui.Slider(aa1, "yawangles", "Yaw hide", base, -180, 180);
local defyaw= gui.Slider(aa1,"defya","yaw",3, -180, 180, 1)
local defyawm= gui.Slider(aa1,"defyam","yaw",3, -180, 180, 1)
local defyawa= gui.Slider(aa1,"defyaa","yaw",3, -180, 180, 1)
local defyaws= gui.Slider(aa1,"defyas","yaw",3, -180, 180, 1)
local standvelocitythreshold = gui.Slider(aa1,"standvelocity","stand velocity threshold", 1.0, 1.0, 250.0, 1.0)
--local kolbayaw = gui.Multibox(aa1,"kolbayaw")
local kolbayaw = gui.Combobox(aa1,"Dopamineyaw_types","Dopamine yaw","None","Type 1","Type2","Type3")
local kolbayawm = gui.Combobox(aa1,"Dopamineyaw_typesm","Dopamine yaw","None","Type 1","Type2","Type3")
local kolbayawa = gui.Combobox(aa1,"Dopamineyaw_typesa","Dopamine yaw","None","Type 1","Type2","Type3")
local kolbayaws = gui.Combobox(aa1,"Dopamineyaw_typess","Dopamine yaw","None","Type 1","Type2","Type3")
--local kolbayawt1=gui.Checkbox(kolbayaw, "type1", "TYPE 1", false)
--local kolbayawt2=gui.Checkbox(kolbayaw, "type2", "TYPE 2", false)
--local kolbayawm = gui.Multibox(aa1,"kolbayawm")
--local kolbayawt1m=gui.Checkbox(kolbayawm, "type1m", "TYPE 1", false)
--local kolbayawt2m=  gui.Checkbox(kolbayawm, "type2m", "TYPE 2", false)
--local kolbayawa = gui.Multibox(aa1,"kolbayawa")
--local kolbayawt1a=gui.Checkbox(kolbayawa, "type1a", "TYPE 1", false)
--local kolbayawt2a=gui.Checkbox(kolbayawa, "type2a", "TYPE 2", false)
--local kolbayaws = gui.Multibox(aa1,"kolbayaws")
--local kolbayawt1s=gui.Checkbox(kolbayaws, "type1s", "TYPE 1", false)
--local kolbayawt2s=gui.Checkbox(kolbayaws, "type2s", "TYPE 2", false)
local invert_key = gui.Keybox(aa2, "ikey", "Invert Key", 70)
local left_key = gui.Keybox(aa2, "left", "Manual AA to Left", 90)
local back_key = gui.Keybox(aa2,"back","Manual AA to Back", 88);
local right_key = gui.Keybox(aa2,"right","Manual AA to Right", 67)
local lowdelt=gui.Checkbox(aa1, "lowdelt", "lowdelta", false)
local lowdeltm=gui.Checkbox(aa1, "lowdeltm", "lowdelta", false)
local lowdeltaa=gui.Checkbox(aa1, "lowdeltaa", "lowdelta", false)
local lowdelts=gui.Checkbox(aa1, "lowdelts", "lowdelta", false)
local processticks = gui.Reference('Misc', 'General', 'Server', 'sv_maxusrcmdprocessticks')
local aw_wep_names = {"shared", "pistol", "hpistol", "smg", "rifle", "shotgun", "asniper", "lmg"}
local WEAPONID_PISTOLS          = { 2, 3, 4, 30, 32, 36, 61, 63 }
local WEAPONID_HEAVYPISTOLS     = { 1, 64 }
local WEAPONID_SUBMACHINEGUNS   = { 17, 19, 23, 24, 26, 33, 34 }
local WEAPONID_RIFLES           = { 7, 8, 10, 13, 16, 39, 60 }
local WEAPONID_SHOTGUNS         = { 25, 27, 29, 35 }
local WEAPONID_SCOUT            = { 40 }
local WEAPONID_AUTOSNIPERS      = { 11, 38 }
local WEAPONID_SNIPER           = { 9 }
local WEAPONID_LIGHTMACHINEGUNS = { 14, 28 }
local WEAPONID_ALLWEAPONS       = { WEAPONID_PISTOLS, WEAPONID_HEAVYPISTOLS, WEAPONID_SUBMACHINEGUNS, WEAPONID_RIFLES, WEAPONID_SHOTGUNS, WEAPONID_SCOUT, WEAPONID_AUTOSNIPERS, WEAPONID_SNIPER, WEAPONID_LIGHTMACHINEGUNS }
local WEAPON_GROUPS_NAME        = { 'PISTOL', 'HPISTOL', 'SMG', 'RIFLE', 'SHOTGUN', 'SCOUT', 'ASNIPER', 'SNIPER', 'LMG' }
local WEAPON_CURRENT_GROUP      = ''
local PERGROUP_ELEMENTS         = {}
local WEAPONID_KNIFE= { 59,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524}
local WEAPONID_NADE= {43,44,45,46,47,48}
local WEAPONID_TASER= {31}
local enablergbline= gui.Checkbox(miscgroup,"RaINBOWLINE","Enable rainbow line", false)
local rgblineweight= gui.Slider(miscgroup,"weihtrgb","rgb line weight", 2, 1, 5,1)
local r = gui.Slider(miscgroup, 'rs', 'rslider', 255, 0, 255,1)
local g = gui.Slider(miscgroup, 'gs', 'gslider', 0, 0, 255, 1)
local b = gui.Slider(miscgroup, 'bs', 'bslider', 0, 0, 255, 1)
local r1 = gui.Slider(miscgroup, 'r1s', 'rslider', 255, 0, 255,1)
local g1 = gui.Slider(miscgroup, 'g1s', 'gslider', 0, 0, 255, 1)
local b1 = gui.Slider(miscgroup, 'b1s', 'bslider', 0, 0, 255, 1)
local nadetrace = gui.Checkbox(miscgroup,"nadetr","grenade tracer on mouse1", false)
local stat = gui.Checkbox(miscgroup,"statik","show tracer after throw", false)
local nadel = gui.Checkbox(miscgroup,"nadeli","1st person on nade", false)
local indicatorsbox = gui.Combobox(vis1,"indicators_types","Keybinds","None","Style 1","Style 2","Style 3")
--local indicatosnew1 = gui.Checkbox(indicatorsbox,"newinda","indicators style 1", false)
--local indicatosnew2 = gui.Checkbox(indicatorsbox,"newindb","indicators style 2", false)
--local indicatosnew3 = gui.Checkbox(indicatorsbox,"newindc","indicators style 3", false)
local indicatorsbox1 = gui.Multibox(vis1,"Indicators color")
local rgbstyle = gui.Checkbox(indicatorsbox1,"newindr","RGB style", false)
local customcolor = gui.Checkbox(indicatorsbox1,"newindl","custom color style", false)
local indx = gui.Slider(vis1,"indpx","x", 445, 0, ScrW)
local indy= gui.Slider(vis1,"indpy","y", 346, 0,  ScrH)
local TEXTCOLOR =gui.ColorPicker(vis1,"TEXTCOLOR1","text color",255, 255, 255)
local linecolor =gui.ColorPicker(vis1,"linec321","indicator color",162, 153, 255)
local backcolor =gui.ColorPicker(vis1,"backc54","background color",42, 42, 42,255)
local backcolor2 =gui.ColorPicker(vis1,"backc2","background color2",62,62,62,255)
local bindcolor =gui.ColorPicker(vis1,"bindc435","binds color",255, 255, 255, 200)
local rdlinecolor =gui.ColorPicker(vis1,"bindc21","3rd binds style line color",255, 255, 255, 255)
local backcolor3 =gui.ColorPicker(vis1,"backc3","3rd binds style back color",20,20,20,110)
local fontn1 = draw.CreateFont( "Arial Black", 16, 800 )
local bindsFont = draw.CreateFont("Verdana", 12, 800)
local bindsFont2 = draw.CreateFont("Tahoma", 12, 650)
local sway= gui.Checkbox(aa1,"sway","Sway", false)
local swaym= gui.Checkbox(aa1,"swaym","Sway", false)
local swaya= gui.Checkbox(aa1,"swaya","Sway", false)
local sways= gui.Checkbox(aa1,"sways","Sway", false)
local EnableBB= gui.Checkbox(miscgroup,"buye","Enable Buybot", false)
local bybot = gui.Multibox(miscgroup,"Buybot")
local auto=gui.Checkbox(bybot, "autob", "AUTO", false)
local scout=gui.Checkbox(bybot, "scoutb", "SCOUT", false)
local AWP=gui.Checkbox(bybot, "awpb", "AWP", false)
local tecfivesevencz=gui.Checkbox(bybot, "tec", "CZ TEC FIVESEVEN", false)
local elite=gui.Checkbox(bybot, "eliteb", "ELITE", false)
local heavypistol=gui.Checkbox(bybot, "HEAVYPISTOLb", "HEAVYPISTOL", false)
local P250=gui.Checkbox(bybot, "p250b", "P250", false)
local armor=gui.Checkbox(bybot, "armorlb", "Armor", false)
local armorh=gui.Checkbox(bybot, "armorhb", "Armor+Helmet", false)
local nade=gui.Checkbox(bybot, "nadeb", "Nade", false)
local molotov=gui.Checkbox(bybot, "molotovb", "Molotov", false)
local smoke=gui.Checkbox(bybot, "smokeb", "Smoke", false)
local flash=gui.Checkbox(bybot, "flashb", "Flashbang", false)
local decoy=gui.Checkbox(bybot, "decoyb", "Decoy", false)
local zeus=gui.Checkbox(bybot, "zeus1b", "Zeus", false)
local defuse=gui.Checkbox(bybot, "defuseb", "Defuse kit", false)
local enabledmgandhc= gui.Checkbox(miscgroup,"DMGHC","Show damage and hitchance", false)
local dmghccolor =gui.ColorPicker(miscgroup,"dmg","indicator color",0, 255, 0,255)
local fontdmg= draw.CreateFont("Verdana", 26, 800)
local swayr= gui.Slider(aa1,"swayrange","Sway range",0, 0, 58, 1)
local swayrm= gui.Slider(aa1,"swayrangem","Sway range",0, 0, 58, 1)
local swayra= gui.Slider(aa1,"swayrangea","Sway range",0, 0, 58, 1)
local swayrs= gui.Slider(aa1,"swayranges","Sway range",0, 0, 58, 1)
local waterfont= draw.CreateFont("Verdana", 14, 800)
local legshaker= gui.Checkbox(miscgroup,"ls","legfucker", false)
local legshakers= gui.Slider(miscgroup,"speedleg","legfucker speed",32, 1, 128, 1)
local des = gui.Checkbox(vis5,"desind","desync side indicators(1st style)", false)
local des1 = gui.Checkbox(vis5,"desind1","desync side indicators(2nd style)", false)
local offdes = gui.ColorPicker(vis5,"ofdes","Off des. side",0,0,0,125)
local ondes = gui.ColorPicker(vis5,"ondes","Active des. side",0, 195, 235,230)
local scope= gui.Checkbox(miscgroup,"scope","disable scope on auto", false)
local forcecrosshaircheckbox= gui.Checkbox(miscgroup,"forcescope","force crosshair", false)
local legitaa= gui.Checkbox(aa1,"legita","legit aa", false)
local legityaw= gui.Slider(aa1,"legitya","legit aa yaw",-3, -180, 180, 1)
local fakeind= gui.Checkbox(vis5,"desinds","desync (skeet styled)", false)
local manulind= gui.Checkbox(vis5,"manulind1","manual indicator", false)
local offman = gui.ColorPicker(vis5,"ofman1","Off manual ind.",0,0,0,125)
local onman = gui.ColorPicker(vis5,"onman1","Active manual ind.",0, 195, 235,230)
local strafefix = gui.Checkbox(miscgroup,"strafer","autostrafe & jumpscout fix", false)
local velshow = gui.Checkbox(miscgroup,"velshow1","velocity indicator", false)
local slwrnd = gui.Checkbox(miscgroup,"slowwalkrnd","slowwalk jittermove", false)
local aspectratio= gui.Slider(miscgroup,"ratioval","aspectratio",0.00, 0.00, 2.50, 0.01)
local betternightmode= gui.Slider(miscgroup,"betternightmodeval","better nightmode",0, 0, 10, 1)
local rukibazuki= gui.Slider(miscgroup,"rukibazukival","ambient",0, 0, 100, 1)
local rukibazuki3v = gui.Checkbox(miscgroup,"rb3v1","turn off ambient in 3rd person", false)
local iambored= gui.Checkbox(miscgroup, "cringe", "Rage quit", false)
local defset= gui.Checkbox(miscgroup, "defset", "thank you to use Dopamine", false)
local defset1= gui.Checkbox(miscgroup, "defset1", "thank you to use Dopamine:)", false)
local swayleft= gui.Slider(aa1,"swa0","swaydefault",rotationl:GetValue(), 0, 58, 1)
local swaylefth= gui.Slider(aa1,"swa1","swayhelper",0, 0, 100, 1)
local swayright= gui.Slider(aa1,"swa2","swaydefault",rotationr:GetValue(), 0, 58, 1)
local swayrighth= gui.Slider(aa1,"swa3","swayhelper",0, 0, 100, 1)
local yaw3= gui.Slider(aa1,"yaw33","yawelper",0, -180, 180, 1)
local yaw3m= gui.Slider(aa1,"yaw34","yawelperm",0, -180, 180, 1)
local yaw3a= gui.Slider(aa1,"yaw35","yawelpera",0, -180, 180, 1)
local yaw3s= gui.Slider(aa1,"yaw36","yawelpers",0, -180, 180, 1)
local boredfont= draw.CreateFont("Verdana", 50, 800)
local curman=globals.CurTime()
--local flip=defyaw:GetValue()-14
--local notflip=defyaw:GetValue()
--local flipinv=defyaw:GetValue()+28
--local flipm=defyawm:GetValue()-14
--local flipinvm=defyawm:GetValue()+28
--local flipa=defyawa:GetValue()-14
--local flipinva=defyawa:GetValue()+28
--local flips=defyaws:GetValue()-14
--local flipinvs=defyaws:GetValue()+28
do  
local carenr = 0
local leftik = 0
local rightik = 0
local backik = 0
local current_angle = 0
end
legityaw:SetDescription("One to all conditions")
destupes:SetDescription("If u use sway des. type unrecommended to use other presets")
destupesm:SetDescription("If u use sway des. type unrecommended to use other presets")
destupesa:SetDescription("If u use sway des. type unrecommended to use other presets")
destupess:SetDescription("If u use sway des. type unrecommended to use other presets")
sway:SetDescription("Have another work style, not like sway desync type")
swaym:SetDescription("Have another work style, not like sway desync type")
swaya:SetDescription("Have another work style, not like sway desync type")
sways:SetDescription("Have another work style, not like sway desync type")
freestandspeed:SetDescription("I use 8-9")
standvelocitythreshold:SetDescription("If your velocity value>than this value you will switch condition")

	panorama.RunScript([[
 LoadoutAPI.IsLoadoutAllowed = () => {
 return true;
 };
]])
function exposure()
	if betternightmode:GetValue()>0 then 
		entities.FindByClass('CEnvTonemapController')[1]:SetProp('m_bUseCustomBloomScale', 1)
		entities.FindByClass('CEnvTonemapController')[1]:SetProp('m_bUseCustomAutoExposureMin', 1)
        entities.FindByClass('CEnvTonemapController')[1]:SetProp('m_bUseCustomAutoExposureMax', 1)
        entities.FindByClass('CEnvTonemapController')[1]:SetProp('m_flCustomAutoExposureMax', 1.01 - (betternightmode:GetValue() * 0.1))
        entities.FindByClass('CEnvTonemapController')[1]:SetProp('m_flCustomAutoExposureMin', 1.01 - (betternightmode:GetValue() * 0.1))
        else 
		entities.FindByClass('CEnvTonemapController')[1]:SetProp('m_bUseCustomAutoExposureMin', 0)
        entities.FindByClass('CEnvTonemapController')[1]:SetProp('m_bUseCustomAutoExposureMax', 0)
end
end
callbacks.Register('Draw', exposure)
callbacks.Register("CreateMove", exposure)
function ambientlgt()
local rdperson=gui.GetValue("esp.local.thirdperson")
if rukibazuki3v:GetValue() then 
	if rukibazuki:GetValue()>0 and rdperson==false then 
    client.SetConVar('r_modelAmbientMin', rukibazuki:GetValue(), true)
    else 
    client.SetConVar('r_modelAmbientMin', 0, true)	
    end
end
if rukibazuki3v:GetValue()==false then 
	if rukibazuki:GetValue()>0 then 
    client.SetConVar('r_modelAmbientMin', rukibazuki:GetValue(), true)
else 
    client.SetConVar('r_modelAmbientMin', 0, true)	
    end
end
end
callbacks.Register('Draw', ambientlgt)
callbacks.Register("CreateMove", ambientlgt)
function getVelocity(... )
	if velshow:GetValue() then
	local velsp =string.format( "%0.0f", entities.GetLocalPlayer():GetPropVector("localdata", "m_vecVelocity[0]"):Length())
	draw.SetFont(fontn1)
    txtsizew, txtsizeh = draw.GetTextSize(velsp)
	draw.Text(ScrW/2-txtsizew/2,ScrH/2-txtsizeh/2+350,velsp)
end
end
callbacks.Register('Draw', getVelocity)

function controller()
	if 	aacontroller:GetValue()==0 then 
 rotationrm:SetInvisible(true)
 rotationlm:SetInvisible(true)
 rotationra:SetInvisible(true)
 rotationla:SetInvisible(true)
 rotationrs:SetInvisible(true)
 rotationls:SetInvisible(true)
 rotationr:SetInvisible(false)
 rotationl:SetInvisible(false)
 lbyrm:SetInvisible(true)
 lbyra:SetInvisible(true)
 lbyrs:SetInvisible(true)
 lbyr:SetInvisible(false)
 lbylm:SetInvisible(true)
 lbyla:SetInvisible(true)
 lbyls:SetInvisible(true)
 lbyl:SetInvisible(false)
 jitterm:SetInvisible(true)
 jittera:SetInvisible(true)
 jitters:SetInvisible(true)
 jitter:SetInvisible(false)
 jitterspeedm:SetInvisible(true)
 jitterspeeda:SetInvisible(true)
 jitterspeeds:SetInvisible(true)
 jitterspeed:SetInvisible(false)
 yawm:SetInvisible(true)
 yawa:SetInvisible(true)
 yaws:SetInvisible(true)
 yaw:SetInvisible(true)
 defyawm:SetInvisible(true)
 defyawa:SetInvisible(true)
 defyaws:SetInvisible(true)
 defyaw:SetInvisible(false)
 kolbayawm:SetInvisible(true)
 kolbayawa:SetInvisible(true)
 kolbayaws:SetInvisible(true)
 kolbayaw:SetInvisible(false)
 destupes:SetInvisible(false)
 destupesm:SetInvisible(true)
 destupesa:SetInvisible(true)
 destupess:SetInvisible(true)
 lowdelt:SetInvisible(false)
 lowdeltm:SetInvisible(true)
 lowdeltaa:SetInvisible(true)
 lowdelts:SetInvisible(true)
 sway:SetInvisible(false)
 swaym:SetInvisible(true)
 swaya:SetInvisible(true)
 sways:SetInvisible(true)
 swayr:SetInvisible(false)
 swayrs:SetInvisible(true)
 swayrm:SetInvisible(true)
 swayra:SetInvisible(true)
 yawtypesyaw:SetInvisible(false)
 yawtypesyawm:SetInvisible(true)
 yawtypesyawa:SetInvisible(true)
 yawtypesyawas:SetInvisible(true)
 yaw3:SetInvisible(true)
 yaw3m:SetInvisible(true)
 yaw3a:SetInvisible(true)
 yaw3s:SetInvisible(true)
end
if aacontroller:GetValue()==1 then
 rotationr:SetInvisible(true)
 rotationl:SetInvisible(true)
 rotationra:SetInvisible(true)
 rotationla:SetInvisible(true)
 rotationrs:SetInvisible(true)
 rotationls:SetInvisible(true)
 rotationrm:SetInvisible(false)
 rotationlm:SetInvisible(false)
 lbyr:SetInvisible(true)
 lbyra:SetInvisible(true)
 lbyrs:SetInvisible(true)
 lbyrm:SetInvisible(false)
 lbyl:SetInvisible(true)
 lbyla:SetInvisible(true)
 lbyls:SetInvisible(true)
 lbylm:SetInvisible(false)
 jitter:SetInvisible(true)
 jittera:SetInvisible(true)
 jitters:SetInvisible(true)
 jitterm:SetInvisible(false)
 jitterspeed:SetInvisible(true)
 jitterspeeda:SetInvisible(true)
 jitterspeeds:SetInvisible(true)
 jitterspeedm:SetInvisible(false)
 yawm:SetInvisible(true)
 yawa:SetInvisible(true)
 yaws:SetInvisible(true)
 yaw:SetInvisible(true)
 defyaw:SetInvisible(true)
 defyawa:SetInvisible(true)
 defyaws:SetInvisible(true)
 defyawm:SetInvisible(false)
 kolbayaw:SetInvisible(true)
 kolbayawa:SetInvisible(true)
 kolbayaws:SetInvisible(true)
 kolbayawm:SetInvisible(false)
  destupesm:SetInvisible(false)
  destupes:SetInvisible(true)
  destupesa:SetInvisible(true)
  destupess:SetInvisible(true)
 lowdeltm:SetInvisible(false)
 lowdelt:SetInvisible(true)
 lowdeltaa:SetInvisible(true)
 lowdelts:SetInvisible(true) 
 swaym:SetInvisible(false)
 sway:SetInvisible(true)
 swaya:SetInvisible(true)
 sways:SetInvisible(true)
 swayrm:SetInvisible(false)
 swayr:SetInvisible(true)
 swayrs:SetInvisible(true)
 swayra:SetInvisible(true)
 yawtypesyawm:SetInvisible(false)
 yawtypesyaw:SetInvisible(true)
 yawtypesyawa:SetInvisible(true)
 yawtypesyawas:SetInvisible(true)
  yaw3:SetInvisible(true)
 yaw3m:SetInvisible(true)
 yaw3a:SetInvisible(true)
 yaw3s:SetInvisible(true)
end
if aacontroller:GetValue()==2 then
  rotationrm:SetInvisible(true)
 rotationlm:SetInvisible(true)
 rotationr:SetInvisible(true)
 rotationl:SetInvisible(true)
 rotationrs:SetInvisible(true)
 rotationls:SetInvisible(true)
 rotationra:SetInvisible(false)
 rotationla:SetInvisible(false)
 lbyrm:SetInvisible(true)
 lbyr:SetInvisible(true)
 lbyrs:SetInvisible(true)
 lbyra:SetInvisible(false)
 lbylm:SetInvisible(true)
 lbyl:SetInvisible(true)
 lbyls:SetInvisible(true)
 lbyla:SetInvisible(false)
 jitterm:SetInvisible(true)
 jitter:SetInvisible(true)
 jitters:SetInvisible(true)
 jittera:SetInvisible(false)
 jitterspeedm:SetInvisible(true)
 jitterspeed:SetInvisible(true)
 jitterspeeds:SetInvisible(true)
 jitterspeeda:SetInvisible(false)
 yawm:SetInvisible(true)
 yawa:SetInvisible(true)
 yaws:SetInvisible(true)
 yaw:SetInvisible(true)
 defyawm:SetInvisible(true)
 defyaw:SetInvisible(true)
 defyaws:SetInvisible(true)
 defyawa:SetInvisible(false)
 kolbayawm:SetInvisible(true)
 kolbayaw:SetInvisible(true)
 kolbayaws:SetInvisible(true)
 kolbayawa:SetInvisible(false)
 destupesa:SetInvisible(false)
  destupesm:SetInvisible(true)
  destupes:SetInvisible(true)
  destupess:SetInvisible(true)
 lowdeltaa:SetInvisible(false)
 lowdeltm:SetInvisible(true)
 lowdelt:SetInvisible(true)
 lowdelts:SetInvisible(true)
 swaya:SetInvisible(false)
 swaym:SetInvisible(true)
 sway:SetInvisible(true)
 sways:SetInvisible(true)
 swayra:SetInvisible(false)
 swayrs:SetInvisible(true)
 swayrm:SetInvisible(true)
 swayr:SetInvisible(true)
 yawtypesyawa:SetInvisible(false)
 yawtypesyawm:SetInvisible(true)
 yawtypesyaw:SetInvisible(true)
 yawtypesyawas:SetInvisible(true)
  yaw3:SetInvisible(true)
 yaw3m:SetInvisible(true)
 yaw3a:SetInvisible(true)
 yaw3s:SetInvisible(true)
end
if aacontroller:GetValue()==3 then
  rotationrm:SetInvisible(true)
 rotationlm:SetInvisible(true)
 rotationra:SetInvisible(true)
 rotationla:SetInvisible(true)
 rotationr:SetInvisible(true)
 rotationl:SetInvisible(true)
 rotationrs:SetInvisible(false)
 rotationls:SetInvisible(false)
  lbyrm:SetInvisible(true)
 lbyra:SetInvisible(true)
 lbyr:SetInvisible(true)
 lbyrs:SetInvisible(false)
 lbylm:SetInvisible(true)
 lbyla:SetInvisible(true)
 lbyl:SetInvisible(true)
 lbyls:SetInvisible(false)
 jitterm:SetInvisible(true)
 jittera:SetInvisible(true)
 jitter:SetInvisible(true)
 jitters:SetInvisible(false)
 jitterspeedm:SetInvisible(true)
 jitterspeeda:SetInvisible(true)
 jitterspeed:SetInvisible(true)
 jitterspeeds:SetInvisible(false)
 yawm:SetInvisible(true)
 yawa:SetInvisible(true)
 yaw:SetInvisible(true)
 yaws:SetInvisible(true)
 defyawm:SetInvisible(true)
 defyawa:SetInvisible(true)
 defyaw:SetInvisible(true)
 defyaws:SetInvisible(false)
 kolbayawm:SetInvisible(true)
 kolbayawa:SetInvisible(true)
 kolbayaw:SetInvisible(true)
 kolbayaws:SetInvisible(false)
  destupess:SetInvisible(false)
  destupesm:SetInvisible(true)
  destupesa:SetInvisible(true)
  destupes:SetInvisible(true)
 lowdelts:SetInvisible(false)
 lowdeltm:SetInvisible(true)
 lowdeltaa:SetInvisible(true)
 lowdelt:SetInvisible(true)
 sways:SetInvisible(false)
 swaym:SetInvisible(true)
 swaya:SetInvisible(true)
 sway:SetInvisible(true)
 swayrs:SetInvisible(false)
 swayr:SetInvisible(true)
 swayrm:SetInvisible(true)
 swayra:SetInvisible(true)
 yawtypesyawas:SetInvisible(false)
 yawtypesyawm:SetInvisible(true)
 yawtypesyawa:SetInvisible(true)
 yawtypesyaw:SetInvisible(true)
  yaw3:SetInvisible(true)
 yaw3m:SetInvisible(true)
 yaw3a:SetInvisible(true)
 yaw3s:SetInvisible(true)
end
end
callbacks.Register('Draw', controller)
function invis()
   r:SetInvisible(true)
   r1:SetInvisible(true)
   g:SetInvisible(true)
   g1:SetInvisible(true)
   b:SetInvisible(true)
   yaw:SetInvisible(true)
   b1:SetInvisible(true)
   swaylefth:SetInvisible(true)
   swayleft:SetInvisible(true)
   swayright:SetInvisible(true)
   swayrighth:SetInvisible(true)
end
callbacks.Register('Draw', invis)
function lp_weapon_id(WEAPONID)
    for k, v in pairs(WEAPONID) do
        if entities.GetLocalPlayer()~=nil and entities.GetLocalPlayer():IsAlive() and entities.GetLocalPlayer():GetWeaponID() == WEAPONID[k] then
            return true
        end
    end
end
function nadel1()
    if nadel:GetValue() then
        if lp_weapon_id(WEAPONID_NADE) then
            gui.SetValue("esp.local.thirdperson",0)
end
end
end
callbacks.Register('Draw', nadel1)
function sway7()
local slowwalk= gui.GetValue("rbot.accuracy.movement.slowkey")
local velsp1 = entities.GetLocalPlayer():GetPropVector("localdata", "m_vecVelocity[0]"):Length()
if legitaa:GetValue()==false then
if entities.GetLocalPlayer()~=nil and entities.GetLocalPlayer():IsAlive() then
if input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and destupes:GetValue()==1 and globals.CurTime()-curman>=0.032  then 
   curman=globals.CurTime()
if gui.GetValue("rbot.antiaim.base.rotation")>0 then 
 if swayleft:GetValue()==1 then
 	swaylefth:SetValue(100)
 end
 if swayleft:GetValue()==rotationl:GetValue() or swayleft:GetValue()==58 then
 	swaylefth:SetValue(0)
 	end	
 if swaylefth:GetValue()==0 and swayleft:GetValue()~=1 then
 	--curtimes=globals.CurTime()+0.032
 	swayleft:SetValue(swayleft:GetValue()-1)
 	gui.SetValue("rbot.antiaim.base.rotation",swayleft:GetValue())
 end
 if swaylefth:GetValue()==100 and swayleft:GetValue()>=1   then
 	swayleft:SetValue(swayleft:GetValue()+1)
 	-- curtimes=globals.CurTime()+0.032
 	gui.SetValue("rbot.antiaim.base.rotation",swayleft:GetValue())
end
end

if gui.GetValue("rbot.antiaim.base.rotation")<0 then 
if swayright:GetValue()==1 then
 	swayrighth:SetValue(100)
 end
 if swayright:GetValue()==rotationr:GetValue()  or swayright:GetValue()==58 then
 	swayrighth:SetValue(0)
 	end	
 if swayrighth:GetValue()==0 and swayright:GetValue()~=1  then
 	swayright:SetValue(swayright:GetValue()-1)
 	 --curtimes=globals.CurTime()+0.032
 	gui.SetValue("rbot.antiaim.base.rotation",-swayright:GetValue())
 end
 if swayrighth:GetValue()==100 and swayright:GetValue()>=1  then
 	swayright:SetValue(swayright:GetValue()+1)
 	--curtimes=globals.CurTime()+0.032
 	gui.SetValue("rbot.antiaim.base.rotation",-swayright:GetValue())
end
end
end
if input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and  input.IsButtonDown(slowwalk)==false and destupesm:GetValue()==1 and velsp1>standvelocitythreshold:GetValue() and globals.CurTime()-curman>=0.032  then 
   curman=globals.CurTime()
if gui.GetValue("rbot.antiaim.base.rotation")>0 then 
 if swayleft:GetValue()==1 then
 	swaylefth:SetValue(100)
 end
 if swayleft:GetValue()==rotationlm:GetValue()  or swayleft:GetValue()==58 then
 	swaylefth:SetValue(0)
 	end	
 if swaylefth:GetValue()==0 and swayleft:GetValue()~=1  then
 	swayleft:SetValue(swayleft:GetValue()-1)
 	 --curtimes=globals.CurTime()+0.032
 	gui.SetValue("rbot.antiaim.base.rotation",swayleft:GetValue())
 end
 if swaylefth:GetValue()==100 and swayleft:GetValue()>=1   then
 	swayleft:SetValue(swayleft:GetValue()+1)
 	 --curtimes=globals.CurTime()+0.032
 	gui.SetValue("rbot.antiaim.base.rotation",swayleft:GetValue())
end
end

if gui.GetValue("rbot.antiaim.base.rotation")<0 then 
if swayright:GetValue()==1 then
 	swayrighth:SetValue(100)
 end
 if swayright:GetValue()==rotationrm:GetValue()  or swayright:GetValue()==58 then
 	swayrighth:SetValue(0)
 	end	
 if swayrighth:GetValue()==0 and swayright:GetValue()~=1  then
 	swayright:SetValue(swayright:GetValue()-1)
 	-- curtimes=globals.CurTime()+0.032
 	gui.SetValue("rbot.antiaim.base.rotation",-swayright:GetValue())
 end
 if swayrighth:GetValue()==100 and swayright:GetValue()>=1  then
 	swayright:SetValue(swayright:GetValue()+1)
 	 --curtimes=globals.CurTime()+0.032
 	gui.SetValue("rbot.antiaim.base.rotation",-swayright:GetValue())
end
end
end
if input.IsButtonDown(32)==true and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and destupesa:GetValue()==1 and globals.CurTime()-curman>=0.032  then 
   curman=globals.CurTime()
if gui.GetValue("rbot.antiaim.base.rotation")>0 then 
 if swayleft:GetValue()==1 then
 	swaylefth:SetValue(100)
 end
 if swayleft:GetValue()==rotationla:GetValue()  or swayleft:GetValue()==58 then
 	swaylefth:SetValue(0)
 	end	
 if swaylefth:GetValue()==0 and swayleft:GetValue()~=1  then
 	swayleft:SetValue(swayleft:GetValue()-1)
 	--curtimes=globals.CurTime()+0.032
 	gui.SetValue("rbot.antiaim.base.rotation",swayleft:GetValue())
 end
 if swaylefth:GetValue()==100 and swayleft:GetValue()>=1   then
 	swayleft:SetValue(swayleft:GetValue()+1)
 	--curtimes=globals.CurTime()+0.032
 	gui.SetValue("rbot.antiaim.base.rotation",swayleft:GetValue())
end
end

if gui.GetValue("rbot.antiaim.base.rotation")<0 then 
if swayright:GetValue()==1 then
 	swayrighth:SetValue(100)
 end
 if swayright:GetValue()==rotationra:GetValue()  or swayright:GetValue()==58 then
 	swayrighth:SetValue(0)
 	end	
 if swayrighth:GetValue()==0 and swayright:GetValue()~=1  then
 	swayright:SetValue(swayright:GetValue()-1)
 	 --curtimes=globals.CurTime()+0.032
 	gui.SetValue("rbot.antiaim.base.rotation",-swayright:GetValue())
 end
 if swayrighth:GetValue()==100 and swayright:GetValue()>=1   then
 	swayright:SetValue(swayright:GetValue()+1)
 	 --curtimes=globals.CurTime()+0.032
 	gui.SetValue("rbot.antiaim.base.rotation",-swayright:GetValue())
end
end
end
if input.IsButtonDown(32)==false and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==true and destupess:GetValue()==1 and globals.CurTime()-curman>=0.032  then 
   curman=globals.CurTime()
if gui.GetValue("rbot.antiaim.base.rotation")>0 then 
 if swayleft:GetValue()==1 then
 	swaylefth:SetValue(100)
 end
 if swayleft:GetValue()==rotationls:GetValue()  or swayleft:GetValue()==58 then
 	swaylefth:SetValue(0)
 	end	
 if swaylefth:GetValue()==0 and swayleft:GetValue()~=1  then
 	swayleft:SetValue(swayleft:GetValue()-1)
 	-- curtimes=globals.CurTime()+0.032
 	gui.SetValue("rbot.antiaim.base.rotation",swayleft:GetValue())
 end
 if swaylefth:GetValue()==100 and swayleft:GetValue()>=1  then
 	swayleft:SetValue(swayleft:GetValue()+1)
 	--curtimes=globals.CurTime()+0.032
 	gui.SetValue("rbot.antiaim.base.rotation",swayleft:GetValue())
end
end

if gui.GetValue("rbot.antiaim.base.rotation")<0 then 
if swayright:GetValue()==1 then
 	swayrighth:SetValue(100)
 end
 if swayright:GetValue()==rotationrs:GetValue()  or swayright:GetValue()==58 then
 	swayrighth:SetValue(0)
 	end	
 if swayrighth:GetValue()==0 and swayright:GetValue()~=1  then
 	swayright:SetValue(swayright:GetValue()-1)
 	  --curtimes=globals.CurTime()+0.032
 	gui.SetValue("rbot.antiaim.base.rotation",-swayright:GetValue())
 end
 if swayrighth:GetValue()==100 and swayright:GetValue()>=1   then
 	swayright:SetValue(swayright:GetValue()+1)
 	-- curtimes=globals.CurTime()+0.032	
 	gui.SetValue("rbot.antiaim.base.rotation",-swayright:GetValue())
end
end
end
end
end
end
callbacks.Register('Draw', sway7)
function strafefixer()
	if input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and strafefix:GetValue() and input.IsButtonDown(83)==false and input.IsButtonDown(65)==false and input.IsButtonDown(68)==false then 
		gui.SetValue("misc.strafe.air",false)
	elseif input.IsButtonDown(32)==true and strafefix:GetValue() and (input.IsButtonDown(87) or input.IsButtonDown(65) or input.IsButtonDown(68)) then 
		gui.SetValue("misc.strafe.air",true)
end
end
callbacks.Register('Draw', strafefixer)
function GetActiveWeapon()
        local np=entities.GetLocalPlayer()
        local wepid=np:GetWeaponID()
        if wepid==2 or wepid==3 or wepid==4 or wepid==30 or wepid==32 or wepid==36 or wepid==61 or wepid==63 then
            cclass="pistol"
        elseif wepid==9 then
            cclass="sniper"
        elseif wepid==40 then
            cclass="scout"
        elseif wepid==1 then
            cclass="hpistol"
        elseif wepid==17 or wepid== 19 or wepid== 23 or wepid== 24 or wepid== 26 or wepid== 33 or wepid== 34 then
            cclass="smg"
        elseif wepid==7 or wepid== 8 or wepid== 10 or wepid== 13 or wepid== 16 or wepid== 39 or lwepid== 61 then
            cclass="rifle"
        elseif wepid== 25 or wepid== 27 or wepid== 29 or wepid== 35 then
            cclass="shotgun"
        elseif wepid == 38 or wepid== 11 then
            cclass="asniper"
        elseif wepid == 28 or wepid== 14 then
            cclass="lmg"
        else
            cclass="other"
        end
        return cclass
    end
  function autobuy(event)
 if event then
        local event_name = event:GetName()
   if event_name == "round_prestart" and EnableBB:GetValue() and auto:GetValue() then
       client.Command("buy scar20; buy g3sg1", true)
   end
    if event_name == "round_prestart" and EnableBB:GetValue() and scout:GetValue() then
       client.Command("buy ssg08", true)
    end
     if event_name == "round_prestart" and EnableBB:GetValue() and AWP:GetValue() then
       client.Command("buy awp", true)
    end
     if event_name == "round_prestart" and EnableBB:GetValue() and tecfivesevencz:GetValue() then
       client.Command("buy tec9; buy fn57", true)
    end
    if event_name == "round_prestart" and EnableBB:GetValue() and elite:GetValue() then
       client.Command("buy elite", true)
    end
    if event_name == "round_prestart" and EnableBB:GetValue() and heavypistol:GetValue() then
       client.Command("buy deagle", true)
    end
    if event_name == "round_prestart" and EnableBB:GetValue() and P250:GetValue() then
       client.Command("buy p250", true)
    end
    if event_name == "round_prestart" and EnableBB:GetValue() and armor:GetValue() then
       client.Command("buy vest", true)
    end
    if event_name == "round_prestart" and EnableBB:GetValue() and armorh:GetValue() then
       client.Command("buy vesthelm", true)
    end
    if event_name == "round_prestart" and EnableBB:GetValue() and nade:GetValue() then
       client.Command("buy hegrenade", true)
    end
    if event_name == "round_prestart" and EnableBB:GetValue() and molotov:GetValue() then
       client.Command("buy molotov ; buy incgrenade", true)
    end
    if event_name == "round_prestart" and EnableBB:GetValue() and flash:GetValue() then
       client.Command("buy flashbang", true)
    end
    if event_name == "round_prestart" and EnableBB:GetValue() and decoy:GetValue() then
       client.Command("buy decoy", true)
    end
    if event_name == "round_prestart" and EnableBB:GetValue() and zeus:GetValue() then
       client.Command("buy taser", true)
    end
    if event_name == "round_prestart" and EnableBB:GetValue() and smoke:GetValue() then
       client.Command("buy smokegrenade", true)
    end
    if event_name == "round_prestart" and EnableBB:GetValue() and defuse:GetValue() then
       client.Command("buy defuser", true)
    end
end
end
client.AllowListener( "round_prestart" )
callbacks.Register("FireGameEvent",autobuy)
callbacks.Register('Draw', autobuy) 
function skeetind()
	if not EnableBB:GetValue() then
        bybot:SetInvisible(true)
    else
        bybot:SetInvisible(false)
    end 
	if fakeind:GetValue() and entities.GetLocalPlayer()~=nil and entities.GetLocalPlayer():IsAlive() then 
		draw.SetFont(fontdmg)
		if gui.GetValue("rbot.antiaim.base.rotation")<=58 and  gui.GetValue("rbot.antiaim.base.rotation")>=48 or (gui.GetValue("rbot.antiaim.base.rotation")>=-58 and  gui.GetValue("rbot.antiaim.base.rotation")<=-48) then 
		draw.Color(40, 230, 0,255)
		end	
		if gui.GetValue("rbot.antiaim.base.rotation")<48 and  gui.GetValue("rbot.antiaim.base.rotation")>=38 or (gui.GetValue("rbot.antiaim.base.rotation")>-48 and  gui.GetValue("rbot.antiaim.base.rotation")<=-38) then 
		draw.Color(40, 200, 0,255)
		end
		if gui.GetValue("rbot.antiaim.base.rotation")<38 and  gui.GetValue("rbot.antiaim.base.rotation")>=28 or (gui.GetValue("rbot.antiaim.base.rotation")>-38 and  gui.GetValue("rbot.antiaim.base.rotation")<=-28) then 
		draw.Color(235, 160, 0,255)		
        end
        if gui.GetValue("rbot.antiaim.base.rotation")<28 and  gui.GetValue("rbot.antiaim.base.rotation")>=18 or (gui.GetValue("rbot.antiaim.base.rotation")>-28 and  gui.GetValue("rbot.antiaim.base.rotation")<=-18) then 
		draw.Color(235, 100, 0,255)	
	    end
	    if gui.GetValue("rbot.antiaim.base.rotation")<18 and  gui.GetValue("rbot.antiaim.base.rotation")>=8 or (gui.GetValue("rbot.antiaim.base.rotation")>-18 and  gui.GetValue("rbot.antiaim.base.rotation")<=-8) then 
		draw.Color(235, 60, 0,255)	
	    end
	    if (gui.GetValue("rbot.antiaim.base.rotation")<8 and  gui.GetValue("rbot.antiaim.base.rotation")>=0) or (gui.GetValue("rbot.antiaim.base.rotation")>-8 and  gui.GetValue("rbot.antiaim.base.rotation")<0) then 
		draw.Color(245, 10, 0,255)	
	    end
	    draw.Text(28,670,"FAKE")
	    draw.TextShadow(27,669,"FAKE")
	end
end
	    callbacks.Register('Draw', skeetind) 
function swaydes()
	local slowwalk= gui.GetValue("rbot.accuracy.movement.slowkey")
	local velsp2 =entities.GetLocalPlayer():GetPropVector("localdata", "m_vecVelocity[0]"):Length()
    local curentdesik=gui.GetValue("rbot.antiaim.base.rotation")
    if input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false then
    if sway:GetValue() then
        if gui.GetValue("rbot.antiaim.base.rotation")>0 then
            gui.SetValue("rbot.antiaim.base.rotation",gui.GetValue("rbot.antiaim.base.rotation")-1)
        if gui.GetValue("rbot.antiaim.base.rotation")==0  then
            gui.SetValue("rbot.antiaim.base.rotation", swayr:GetValue())
        end
    else
        if gui.GetValue("rbot.antiaim.base.rotation")<0 then
            gui.SetValue("rbot.antiaim.base.rotation",gui.GetValue("rbot.antiaim.base.rotation")+1)
        if gui.GetValue("rbot.antiaim.base.rotation")==0  then
            gui.SetValue("rbot.antiaim.base.rotation", -swayr:GetValue())
        end
end
end
end
end 
       if input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and velsp2>standvelocitythreshold:GetValue()then 
       if swaym:GetValue() then
        if gui.GetValue("rbot.antiaim.base.rotation")>0 then
            gui.SetValue("rbot.antiaim.base.rotation",gui.GetValue("rbot.antiaim.base.rotation")-1)
        if gui.GetValue("rbot.antiaim.base.rotation")==0  then
            gui.SetValue("rbot.antiaim.base.rotation", swayrm:GetValue())
        end
    else
        if gui.GetValue("rbot.antiaim.base.rotation")<0 then
            gui.SetValue("rbot.antiaim.base.rotation",gui.GetValue("rbot.antiaim.base.rotation")+1)
        if gui.GetValue("rbot.antiaim.base.rotation")==0  then
            gui.SetValue("rbot.antiaim.base.rotation", -swayrm:GetValue())
        end
end
end
end
end
              if input.IsButtonDown(32)==true and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false then 
       if swaya:GetValue() then
        if gui.GetValue("rbot.antiaim.base.rotation")>0 then
            gui.SetValue("rbot.antiaim.base.rotation",gui.GetValue("rbot.antiaim.base.rotation")-1)
        if gui.GetValue("rbot.antiaim.base.rotation")==0  then
            gui.SetValue("rbot.antiaim.base.rotation", swayra:GetValue())
        end
    else
        if gui.GetValue("rbot.antiaim.base.rotation")<0 then
            gui.SetValue("rbot.antiaim.base.rotation",gui.GetValue("rbot.antiaim.base.rotation")+1)
        if gui.GetValue("rbot.antiaim.base.rotation")==0  then
            gui.SetValue("rbot.antiaim.base.rotation", -swayra:GetValue())
        end
end
end
end
end
       if input.IsButtonDown(32)==false and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==true then 
       if sways:GetValue() then
        if gui.GetValue("rbot.antiaim.base.rotation")>0 then
            gui.SetValue("rbot.antiaim.base.rotation",gui.GetValue("rbot.antiaim.base.rotation")-1)
        if gui.GetValue("rbot.antiaim.base.rotation")==0  then
            gui.SetValue("rbot.antiaim.base.rotation", swayrs:GetValue())
        end
    else
        if gui.GetValue("rbot.antiaim.base.rotation")<0 then
            gui.SetValue("rbot.antiaim.base.rotation",gui.GetValue("rbot.antiaim.base.rotation")+1)
        if gui.GetValue("rbot.antiaim.base.rotation")==0  then
            gui.SetValue("rbot.antiaim.base.rotation", -swayrs:GetValue())
        end
end
end
end
end
end
callbacks.Register('Draw', swaydes) 
function legitaae()
	local slowwalk= gui.GetValue("rbot.accuracy.movement.slowkey")
local velsp3 =entities.GetLocalPlayer():GetPropVector("localdata", "m_vecVelocity[0]"):Length()
	defset1:SetInvisible(true)
local legityaw1=NormalizeYaw(0-legityaw:GetValue());
local defyaw3=NormalizeYaw(0-defyaw:GetValue());
local defyaw3m=NormalizeYaw(0-defyawm:GetValue());
local defyaw3a=NormalizeYaw(0-defyawa:GetValue());
local defyaw3s=NormalizeYaw(0-defyaws:GetValue());
if not enablergbline:GetValue() then
	rgblineweight:SetInvisible(true)
else 
	rgblineweight:SetInvisible(false)
end
if  indicatorsbox:GetValue()==3 then
	indicatorsbox1:SetInvisible(false)
else 
	indicatorsbox1:SetInvisible(true)
end
if not legshaker:GetValue() then
	legshakers:SetInvisible(true)
else 
	legshakers:SetInvisible(false)
end
if not dtchange:GetValue() then
	accurate2:SetInvisible(true)
	accurate3:SetInvisible(true)
	accurate4:SetInvisible(true)
else 
	accurate2:SetInvisible(false)
	accurate3:SetInvisible(false)
	accurate4:SetInvisible(false)
end 

if not sway:GetValue() then 
swayr:SetDisabled(true)
else
swayr:SetDisabled(false)
end
if not swaym:GetValue() then 
swayrm:SetDisabled(true)
else
swayrm:SetDisabled(false)
end
if not swaya:GetValue() then 
swayra:SetDisabled(true)
else
swayra:SetDisabled(false)
end
if not sways:GetValue() then 
swayrs:SetDisabled(true)
else
swayrs:SetDisabled(false)
end
if not legitaa:GetValue() then 
	legityaw:SetDisabled(true)
else
	legityaw:SetDisabled(false)
end
if rightik==0 and backik==0 and leftik==0 then 
	if legitaa:GetValue() then
		gui.SetValue("rbot.antiaim.base",legityaw1)
		gui.SetValue("rbot.antiaim.base",legityaw1)
		gui.SetValue("rbot.antiaim.base",legityaw1)
		gui.SetValue("rbot.antiaim.base",legityaw1)
		gui.SetValue("rbot.antiaim.advanced.pitch",0)
		gui.SetValue("rbot.antiaim.advanced.autodir.targets",0)
	end
	if  legitaa:GetValue()==false then
		if input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and  gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false then
		gui.SetValue("rbot.KOL🌭BAS.yawangle",defyaw3)
		gui.SetValue("rbot.antiaim.advanced.autodir.targets",1)
		gui.SetValue("rbot.antiaim.advanced.pitch",1)
	end
	    if input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and  gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and velsp3>standvelocitythreshold:GetValue() then
	    gui.SetValue("rbot.KOL🌭BAS.yawanglem",defyaw3m)
	    gui.SetValue("rbot.antiaim.advanced.autodir.targets",1)
		gui.SetValue("rbot.antiaim.advanced.pitch",1)
	end
	    if input.IsButtonDown(32)==true and  gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false then
	    gui.SetValue("rbot.KOL🌭BAS.yawanglea",defyaw3a)
	    gui.SetValue("rbot.antiaim.advanced.autodir.targets",1)
		gui.SetValue("rbot.antiaim.advanced.pitch",1)
	end
	    if input.IsButtonDown(32)==false and  gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==true then
	    gui.SetValue("rbot.KOL🌭BAS.yawangles",defyaw3s)
	    gui.SetValue("rbot.antiaim.advanced.autodir.targets",1)
		gui.SetValue("rbot.antiaim.advanced.pitch",1)
	end
end 
end
end
callbacks.Register('Draw', legitaae) 
function hcanddmg()
   if not enabledmgandhc:GetValue() then
dmghccolor:SetInvisible(true)
dmghccolor:SetInvisible(true)
else
dmghccolor:SetInvisible(false)
dmghccolor:SetInvisible(false)
end
local kp=entities.GetLocalPlayer()
    if enabledmgandhc:GetValue() and  kp~=nil and kp:IsAlive() then 
       draw.SetFont(fontdmg)
       draw.Color(dmghccolor:GetValue())
      draw.Text(28,730,"HC:")
        draw.Text(28,700,"DMG:")
    if lp_weapon_id(WEAPONID_PISTOLS) then
       draw.SetFont(fontdmg)
       draw.Color(dmghccolor:GetValue())
        draw.Text(100,730,gui.GetValue("rbot.accuracy.weapon.pistol.hitchance"))
        draw.Text(100,700,gui.GetValue("rbot.accuracy.weapon.pistol.mindmg"))
    elseif lp_weapon_id(WEAPONID_HEAVYPISTOLS) then
        draw.SetFont(fontdmg)
        draw.Color(dmghccolor:GetValue())
       draw.Text(100,730,gui.GetValue("rbot.accuracy.weapon.hpistol.hitchance"))
       draw.Text(100,700,gui.GetValue("rbot.accuracy.weapon.hpistol.mindmg"))
   elseif lp_weapon_id(WEAPONID_SUBMACHINEGUNS) then
       draw.SetFont(fontdmg)
       draw.Color(dmghccolor:GetValue())
       draw.Text(100,730,gui.GetValue("rbot.accuracy.weapon.smg.hitchance"))
        draw.Text(100,700,gui.GetValue("rbot.accuracy.weapon.smg.mindmg"))
    elseif lp_weapon_id(WEAPONID_RIFLES ) then
        draw.SetFont(fontdmg)
       draw.Color(dmghccolor:GetValue())
       draw.Text(100,730,gui.GetValue("rbot.accuracy.weapon.rifle.hitchance"))
      draw.Text(100,700,gui.GetValue("rbot.accuracy.weapon.rifle.mindmg"))
    elseif lp_weapon_id(WEAPONID_SHOTGUNS) then
        draw.SetFont(fontdmg)
      draw.Color(dmghccolor:GetValue())
        draw.Text(100,730,gui.GetValue("rbot.accuracy.weapon.shotgun.hitchance"))
        draw.Text(100,700,gui.GetValue("rbot.accuracy.weapon.shotgun.mindmg"))
    elseif lp_weapon_id(WEAPONID_SCOUT) then
      draw.SetFont(fontdmg)
        draw.Color(dmghccolor:GetValue())
      draw.Text(100,730,gui.GetValue("rbot.accuracy.weapon.scout.hitchance"))
    draw.Text(100,700,gui.GetValue("rbot.accuracy.weapon.scout.mindmg"))
    elseif lp_weapon_id(WEAPONID_SNIPER ) then
      draw.SetFont(fontdmg)
      draw.Color(dmghccolor:GetValue())
        draw.Text(100,730,gui.GetValue("rbot.accuracy.weapon.sniper.hitchance"))
        draw.Text(100,700,gui.GetValue("rbot.accuracy.weapon.sniper.mindmg"))
     elseif lp_weapon_id(WEAPONID_AUTOSNIPERS ) then
       draw.SetFont(fontdmg)
        draw.Color(dmghccolor:GetValue())
        draw.Text(100,730,gui.GetValue("rbot.accuracy.weapon.asniper.hitchance"))
        draw.Text(100,700,gui.GetValue("rbot.accuracy.weapon.asniper.mindmg"))
   elseif lp_weapon_id(WEAPONID_LIGHTMACHINEGUNS ) then
      draw.SetFont(fontdmg)
        draw.Color(dmghccolor:GetValue())
        draw.Text(100,730,gui.GetValue("rbot.accuracy.weapon.lmg.hitchance"))
        draw.Text(100,700,gui.GetValue("rbot.accuracy.weapon.lmg.mindmg"))
   elseif lp_weapon_id(WEAPONID_LIGHTMACHINEGUNS ) then
        draw.SetFont(fontdmg)
       draw.Color(dmghccolor:GetValue())
        draw.Text(100,730,gui.GetValue("rbot.accuracy.weapon.lmg.hitchance"))
        draw.Text(100,700,gui.GetValue("rbot.accuracy.weapon.lmg.mindmg"))
     elseif lp_weapon_id(WEAPONID_KNIFE) then
        draw.SetFont(fontdmg)
       draw.Color(dmghccolor:GetValue())
        draw.Text(100,730,"ADAPTIVE")
        draw.Text(100,700,"ADAPTIVE")
     elseif lp_weapon_id(WEAPONID_NADE) then
        draw.SetFont(fontdmg)
        draw.Color(dmghccolor:GetValue())
        draw.Text(100,730,"ADAPTIVE")
        draw.Text(100,700,"ADAPTIVE")
     elseif lp_weapon_id(WEAPONID_TASER) then
        draw.SetFont(fontdmg)
        draw.Color(dmghccolor:GetValue())
        draw.Text(100,730,gui.GetValue("rbot.accuracy.weapon.zeus.hitchance"))
        draw.Text(100,700,gui.GetValue("rbot.accuracy.weapon.zeus.mindmg"))   

end
end
end
callbacks.Register("Draw", hcanddmg)
function watermar3k()
if not enablewatermark:GetValue() then
watermarkposy:SetInvisible(true)
watermarkposx:SetInvisible(true)
else
watermarkposy:SetInvisible(false)
watermarkposx:SetInvisible(false)
end
if enablewatermark:GetValue() and entities.GetLocalPlayer()~=nil and entities.GetLocalPlayer():IsAlive() then
    draw.Color(30,30,30,255)
    draw.FilledRect(watermarkposx:GetValue(),watermarkposy:GetValue()-25,watermarkposx:GetValue()+90,watermarkposy:GetValue())
    draw.Color(255,255,255,255)
    draw.SetFont(waterfont)
    draw.Color(230,40,40,255)
    draw.Text(watermarkposx:GetValue()+9,watermarkposy:GetValue()-19,"Dopamine")
    draw.Color(255,255,255,255)
    draw.Text(watermarkposx:GetValue()+10,watermarkposy:GetValue()-19,"Dopamine")
    draw.Color(230,40,40,40)
    draw.Line(watermarkposx:GetValue()-1,watermarkposy:GetValue(),watermarkposx:GetValue()+91,watermarkposy:GetValue())
    draw.Line(watermarkposx:GetValue(),watermarkposy:GetValue(),watermarkposx:GetValue(),watermarkposy:GetValue()-25)
    draw.Line(watermarkposx:GetValue()-1,watermarkposy:GetValue()-25,watermarkposx:GetValue()+91,watermarkposy:GetValue()-25)
    draw.Line(watermarkposx:GetValue()+90,watermarkposy:GetValue(),watermarkposx:GetValue()+90,watermarkposy:GetValue()-25)
    draw.Color(230,40,40,30)
    draw.Line(watermarkposx:GetValue()-1,watermarkposy:GetValue()+1,watermarkposx:GetValue()+91,watermarkposy:GetValue()+1)
    draw.Line(watermarkposx:GetValue()-1,watermarkposy:GetValue(),watermarkposx:GetValue()-1,watermarkposy:GetValue()-25)
    draw.Line(watermarkposx:GetValue()-1,watermarkposy:GetValue()-26,watermarkposx:GetValue()+91,watermarkposy:GetValue()-26)
    draw.Line(watermarkposx:GetValue()+91,watermarkposy:GetValue(),watermarkposx:GetValue()+91,watermarkposy:GetValue()-25)
    draw.Color(230,40,40,20)
    draw.Line(watermarkposx:GetValue()-1,watermarkposy:GetValue()+2,watermarkposx:GetValue()+91,watermarkposy:GetValue()+2)
    draw.Line(watermarkposx:GetValue()-2,watermarkposy:GetValue(),watermarkposx:GetValue()-2,watermarkposy:GetValue()-25)
    draw.Line(watermarkposx:GetValue()-1,watermarkposy:GetValue()-27,watermarkposx:GetValue()+91,watermarkposy:GetValue()-27)
    draw.Line(watermarkposx:GetValue()+92,watermarkposy:GetValue(),watermarkposx:GetValue()+92,watermarkposy:GetValue()-25)
    draw.Color(230,40,40,20)
    draw.Line(watermarkposx:GetValue()-1,watermarkposy:GetValue()+3,watermarkposx:GetValue()+91,watermarkposy:GetValue()+3)
    draw.Line(watermarkposx:GetValue()-3,watermarkposy:GetValue(),watermarkposx:GetValue()-3,watermarkposy:GetValue()-25)
    draw.Line(watermarkposx:GetValue()-1,watermarkposy:GetValue()-28,watermarkposx:GetValue()+91,watermarkposy:GetValue()-28)
    draw.Line(watermarkposx:GetValue()+93,watermarkposy:GetValue(),watermarkposx:GetValue()+93,watermarkposy:GetValue()-25)
    draw.Color(255,255,255,255)
    draw.Text(watermarkposx:GetValue()+110, watermarkposy:GetValue()-25, text8)
end
end
callbacks.Register("Draw", watermar3k)
function legfucker3()
    if legshaker:GetValue() then
        entities.GetLocalPlayer():SetPropInt(1, "m_flPoseParameter")
    if globals.TickCount()%(1*legshakers:GetValue())==0 then
        fon= not fon
      --  local curtime=globals.CurTime()+0.02+legshakers:GetValue()/100
        gui.SetValue("misc.slidewalk",fon)
    end
    entities.GetLocalPlayer():SetPropInt(1, "m_flPoseParameter")
end
end
callbacks.Register("CreateMove", legfucker3)
callbacks.Register("Draw", legfucker3)
function linelgbt()

if enablergbline:GetValue() then
        if r:GetValue()==255 and g:GetValue()<255 and b:GetValue()==0 then 
            g:SetValue(g:GetValue()+1)
        elseif g:GetValue()==255 and r:GetValue()>0 and b:GetValue()==0 then 
            r:SetValue(r:GetValue()-1)

        elseif g:GetValue()==255 and r:GetValue()==0 and b:GetValue()<255 then 
            b:SetValue(b:GetValue()+1)

        elseif g:GetValue()>0 and r:GetValue()==0 and b:GetValue()==255 then 
            g:SetValue(g:GetValue()-1)

        elseif g:GetValue()==0 and r:GetValue()<255 and b:GetValue()==255 then 
            r:SetValue(r:GetValue()+1)

        elseif g:GetValue()==0 and r:GetValue()==255 and b:GetValue()>0 then 
            b:SetValue(b:GetValue()-1)
        end
        if rgblineweight:GetValue()==1 then 
    draw.Color(r:GetValue(),g:GetValue(),b:GetValue(),255)
    draw.Line(0,0,1920,0)
        elseif rgblineweight:GetValue()==2 then 
    draw.Color(r:GetValue(),g:GetValue(),b:GetValue(),255)
    draw.Line(0,0,1920,0)
    draw.Line(0,1,1920,1)
        elseif rgblineweight:GetValue()==3 then 
    draw.Color(r:GetValue(),g:GetValue(),b:GetValue(),255)
    draw.Line(0,0,1920,0)
    draw.Line(0,2,1920,2)
    draw.Line(0,1,1920,1)
        elseif rgblineweight:GetValue()==4 then 
    draw.Color(r:GetValue(),g:GetValue(),b:GetValue(),255)
    draw.Line(0,0,1920,0)
    draw.Line(0,2,1920,2)
    draw.Line(0,1,1920,1)
    draw.Line(0,3,1920,3)
        elseif rgblineweight:GetValue()==5 then 
    draw.Color(r:GetValue(),g:GetValue(),b:GetValue(),255)
    draw.Line(0,0,1920,0)
    draw.Line(0,2,1920,2)
    draw.Line(0,1,1920,1)
    draw.Line(0,3,1920,3)
    draw.Line(0,4,1920,4)
end
else
    gui.SetValue("rbot.KOL🌭BAS.rs",255)
    gui.SetValue("rbot.KOL🌭BAS.gs",0)
    gui.SetValue("rbot.KOL🌭BAS.bs",0)
end
end
callbacks.Register('Draw', linelgbt) 
function lgbt2()
if rgbstyle:GetValue() then
        if r1:GetValue()==255 and g1:GetValue()<255 and b1:GetValue()==0 then 
            g1:SetValue(g1:GetValue()+2)
        elseif g1:GetValue()==255 and r1:GetValue()>0 and b1:GetValue()==0 then 
            r1:SetValue(r1:GetValue()-2)

        elseif g1:GetValue()==255 and r1:GetValue()==0 and b1:GetValue()<255 then 
            b1:SetValue(b1:GetValue()+2)

        elseif g1:GetValue()>0 and r1:GetValue()==0 and b1:GetValue()==255 then 
            g1:SetValue(g1:GetValue()-2)

        elseif g1:GetValue()==0 and r1:GetValue()<255 and b1:GetValue()==255 then 
            r1:SetValue(r1:GetValue()+2)

        elseif g1:GetValue()==0 and r1:GetValue()==255 and b1:GetValue()>0 then 
            b1:SetValue(b1:GetValue()-2)
        end
else
    gui.SetValue("rbot.KOL🌭BAS.r1s",255)
    gui.SetValue("rbot.KOL🌭BAS.g1s",0)
    gui.SetValue("rbot.KOL🌭BAS.b1s",0)
end
end
callbacks.Register('Draw', lgbt2)
function bored( ... )
	if iambored:GetValue() then 
		draw.SetFont(boredfont)
 		draw.Text(ScrW/2-125,ScrH/2-15,"GO  SLEEP")
 end
 	if iambored:GetValue() and globals.TickCount()%256==0 then 
 		client.Command("quit",true)
end
end
callbacks.Register('Draw', bored)
function Dtvrub()
    local np=entities.GetLocalPlayer()
    if np~=nil and np:IsAlive() then
        local AwpDtEnable1=gui.GetValue("rbot.accuracy.weapon.sniper.doublefire")
        local Ssg08DtEnable1=gui.GetValue("rbot.accuracy.weapon.scout.doublefire")
        local PistolDtEnable1=gui.GetValue("rbot.accuracy.weapon.pistol.doublefire")
        local AutoDtEnable1=gui.GetValue("rbot.accuracy.weapon.asniper.doublefire")
        local HeavypistolDtEnable1=gui.GetValue("rbot.accuracy.weapon.hpistol.doublefire")
        local SmgDtEnabl1e=gui.GetValue("rbot.accuracy.weapon.smg.doublefire")
        local RifleDtEnable1=gui.GetValue("rbot.accuracy.weapon.rifle.doublefire")
        local ShotgunDtEnable=gui.GetValue("rbot.accuracy.weapon.shotgun.doublefire")
        local Lightmgenable=gui.GetValue("rbot.accuracy.weapon.lmg.doublefire")
        local wepid=np:GetWeaponID()
        cclass=GetActiveGun()
        if cclass=="pistol" and (PistolDtEnable1==1 or PistolDtEnable1==2)  then
            dtguion1=true
        elseif cclass=="hpistol" and (HeavypistolDtEnable1==1 or HeavypistolDtEnable1==2) then
            dtguion1=true
        elseif cclass=="smg" and (SmgDtEnable1==1 or SmgDtEnable1==2) then
            dtguion1=true
        elseif  cclass=="sniper" and (AwpDtEnable1==1 or AwpDtEnable1==2) then
            dtguion1=true
        elseif cclass=="scout" and (Ssg08DtEnable1==1 or Ssg08DtEnable1==2) then
            dtguion1=true
        elseif cclass=="rifle" and (RifleDtEnable1==1 or RifleDtEnable1==2) then
            dtguion1=true
        elseif cclass=="shotgun" and (ShotgunDtEnable1==1 or ShotgunDtEnable1==2) then
            dtguion1=true
        elseif cclass=="asniper" and (AutoDtEnable1==1 or AutoDtEnable1==2) then
            dtguion1=true
        elseif cclass=="lmg" and (Lightmgenable1==1 or Lightmgenable1==2) then
            dtguion1=true
        else
            dtguion1=false
        end
        return(dtguion1)
    end
end
function indicatorsstart()
    local dtguion1=Dtvrub()
    local fdon=gui.GetValue("rbot.antiaim.extra.fakecrouchkey")
    local hson=gui.GetValue("rbot.antiaim.condition.shiftonshot")
        if dtguion1 and hson==false and gui.GetValue("rbot.antiaim.extra.fakecrouchkey")~=0 and input.IsButtonDown(fdon)==false then
          if indicatorsbox:GetValue()==1 then
          draw.Color(linecolor:GetValue())
        --draw.Line(448,354,472,332)
          draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue()-22)
        --draw.Line(472,332,596,332)
          draw.Line(indx:GetValue()+24,indy:GetValue()-22,indx:GetValue()+148,indy:GetValue()-22)
        --draw.Line(596,332,572,354)
          draw.Line(indx:GetValue()+148,indy:GetValue()-22,indx:GetValue()+124,indy:GetValue())
        --draw.Line(572,354,448,354)
          draw.Line(indx:GetValue()+124,indy:GetValue(),indx:GetValue(),indy:GetValue())
        
        --draw.Line(448,353,472,331)
          draw.Line(indx:GetValue(),indy:GetValue()-1,indx:GetValue()+24,indy:GetValue()-23)
        --draw.Line(472,331,596,331)
          draw.Line(indx:GetValue()+24,indy:GetValue()-23,indx:GetValue()+148,indy:GetValue()-23)
        --draw.Line(596,331,572,353)
          draw.Line(indx:GetValue()+148,indy:GetValue()-23,indx:GetValue()+124,indy:GetValue()-1)
        --draw.Line(572,353,448,353)
        draw.Color(backcolor:GetValue())
        draw.FilledRect(indx:GetValue()+24,indy:GetValue()-21.8,indx:GetValue()+124,indy:GetValue()-1.3)
        --draw.Triangle( x1, y1, x2, y2, x3, y3 )
        draw.Triangle( indx:GetValue()+24,indy:GetValue()-21.8,indx:GetValue()+1,indy:GetValue()-1, indx:GetValue()+24, indy:GetValue()-1.3 )
        draw.Triangle( indx:GetValue()+124,indy:GetValue()-1.3, indx:GetValue()+124, indy:GetValue()-21.8,indx:GetValue()+147,indy:GetValue()-22 )
        draw.Color(TEXTCOLOR:GetValue())
        draw.SetFont( fontn1 )
        draw.Text(indx:GetValue()+46,indy:GetValue()-17,"keybinds")
        draw.Color(bindcolor:GetValue())
        draw.SetFont(bindsFont)
            draw.Text(indx:GetValue()-1,indy:GetValue()+5,"Doubletap")
            draw.Text(indx:GetValue()+75,indy:GetValue()+5,"[toggled]")
            --draw.TextShadow( x, y, string )
            draw.TextShadow(indx:GetValue()-1, indy:GetValue()+5, "Doubletap" )
            draw.TextShadow(indx:GetValue()+75.1,indy:GetValue()+5,"[toggled]")
        end
          if indicatorsbox:GetValue()==2 then
            draw.Color(linecolor:GetValue())
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue()-20)
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue())
            draw.Line(indx:GetValue()+182,indy:GetValue(),indx:GetValue()+204,indy:GetValue()-20)
            draw.Line(indx:GetValue()+204,indy:GetValue()-20,indx:GetValue()+182,indy:GetValue()-20)
            draw.Color(backcolor:GetValue())
            draw.FilledRect(indx:GetValue()+24,indy:GetValue()-1,indx:GetValue()+182,indy:GetValue()-19)
            draw.Triangle(indx:GetValue()+24,indy:GetValue()-1,indx:GetValue()+2,indy:GetValue()-1,indx:GetValue()+24,indy:GetValue()-19)
            draw.Triangle(indx:GetValue()+182,indy:GetValue()-1,indx:GetValue()+182,indy:GetValue()-19,indx:GetValue()+202,indy:GetValue()-19)
            draw.Color(TEXTCOLOR:GetValue())
            draw.SetFont( fontn1 )
            draw.Text(indx:GetValue()+67,indy:GetValue()-15,"Hotkey List")
            draw.Color(backcolor:GetValue())
            draw.FilledRect(indx:GetValue(),indy:GetValue()+20,indx:GetValue()+182,indy:GetValue()+5)
            draw.Color(bindcolor:GetValue())
            draw.SetFont(bindsFont2)
            draw.TextShadow(indx:GetValue()+24,indy:GetValue()+7,"Double Tap")
            draw.Text(indx:GetValue()+23,indy:GetValue()+7,"Double Tap")
            draw.TextShadow(indx:GetValue()+140,indy:GetValue()+7,"toggled")
            draw.Text(indx:GetValue()+139,indy:GetValue()+7,"toggled")
        end
         if indicatorsbox:GetValue()==3 then
            if  rgbstyle:GetValue() then 
            draw.Color(r1:GetValue(),g1:GetValue(),b1:GetValue(),255)
        elseif customcolor:GetValue() then 
            draw.Color(rdlinecolor:GetValue())
        end
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+130,indy:GetValue())
            draw.Line(indx:GetValue(),indy:GetValue()-1,indx:GetValue()+130,indy:GetValue()-1)
            draw.Color(backcolor3:GetValue())
            draw.FilledRect(indx:GetValue(),indy:GetValue()+18,indx:GetValue()+130,indy:GetValue())
            draw.SetFont(fontn1)
            draw.Color(TEXTCOLOR:GetValue())
            draw.Text(indx:GetValue()+38,indy:GetValue()+4,"keybinds")
            draw.SetFont(bindsFont2)
            draw.Color(bindcolor:GetValue())
            draw.Text(indx:GetValue()+2,indy:GetValue()+23,"Double Tap")
            draw.TextShadow(indx:GetValue()+2,indy:GetValue()+23,"Double Tap")
            draw.Text(indx:GetValue()+82,indy:GetValue()+23,"[toggled]")
            draw.TextShadow(indx:GetValue()+82,indy:GetValue()+23,"[toggled]")
        end

        elseif dtguion1 and hson and gui.GetValue("rbot.antiaim.extra.fakecrouchkey")~=0 and input.IsButtonDown(fdon)==false then
           if indicatorsbox:GetValue()==1 then
          draw.Color(linecolor:GetValue())
        --draw.Line(448,354,472,332)
          draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue()-22)
        --draw.Line(472,332,596,332)
          draw.Line(indx:GetValue()+24,indy:GetValue()-22,indx:GetValue()+148,indy:GetValue()-22)
        --draw.Line(596,332,572,354)
          draw.Line(indx:GetValue()+148,indy:GetValue()-22,indx:GetValue()+124,indy:GetValue())
        --draw.Line(572,354,448,354)
          draw.Line(indx:GetValue()+124,indy:GetValue(),indx:GetValue(),indy:GetValue())
        
        --draw.Line(448,353,472,331)
          draw.Line(indx:GetValue(),indy:GetValue()-1,indx:GetValue()+24,indy:GetValue()-23)
        --draw.Line(472,331,596,331)
          draw.Line(indx:GetValue()+24,indy:GetValue()-23,indx:GetValue()+148,indy:GetValue()-23)
        --draw.Line(596,331,572,353)
          draw.Line(indx:GetValue()+148,indy:GetValue()-23,indx:GetValue()+124,indy:GetValue()-1)
        --draw.Line(572,353,448,353)
        draw.Color(backcolor:GetValue())
        draw.FilledRect(indx:GetValue()+24,indy:GetValue()-21.8,indx:GetValue()+124,indy:GetValue()-1.3)
        --draw.Triangle( x1, y1, x2, y2, x3, y3 )
        draw.Triangle( indx:GetValue()+24,indy:GetValue()-21.8,indx:GetValue()+1,indy:GetValue()-1, indx:GetValue()+24, indy:GetValue()-1.3 )
        draw.Triangle( indx:GetValue()+124,indy:GetValue()-1.3, indx:GetValue()+124, indy:GetValue()-21.8,indx:GetValue()+147,indy:GetValue()-22 )
        draw.Color(TEXTCOLOR:GetValue())
        draw.SetFont( fontn1 )
        draw.Text(indx:GetValue()+46,indy:GetValue()-17,"keybinds")
        draw.Color(bindcolor:GetValue())
        draw.SetFont(bindsFont)
            draw.Text(indx:GetValue()-1,indy:GetValue()+5,"Doubletap")
            draw.Text(indx:GetValue()+75,indy:GetValue()+5,"[toggled]")
            draw.Text(indx:GetValue()-1,indy:GetValue()+20,"Hideshots")
            draw.Text(indx:GetValue()+75,indy:GetValue()+20,"[toggled]")
            --draw.TextShadow( x, y, string )
            draw.TextShadow(indx:GetValue()-1, indy:GetValue()+5, "Doubletap" )
            draw.TextShadow(indx:GetValue()+75.1,indy:GetValue()+5,"[toggled]")
            draw.TextShadow(indx:GetValue()-1,indy:GetValue()+20,"Hideshots")
            draw.TextShadow(indx:GetValue()+75.1,indy:GetValue()+20,"[toggled]")
        end
        if indicatorsbox:GetValue()==2 then
            draw.Color(linecolor:GetValue())
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue()-20)
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue())
            draw.Line(indx:GetValue()+182,indy:GetValue(),indx:GetValue()+204,indy:GetValue()-20)
            draw.Line(indx:GetValue()+204,indy:GetValue()-20,indx:GetValue()+182,indy:GetValue()-20)
            draw.Color(backcolor:GetValue())
            draw.FilledRect(indx:GetValue()+24,indy:GetValue()-1,indx:GetValue()+182,indy:GetValue()-19)
            draw.Triangle(indx:GetValue()+24,indy:GetValue()-1,indx:GetValue()+2,indy:GetValue()-1,indx:GetValue()+24,indy:GetValue()-19)
            draw.Triangle(indx:GetValue()+182,indy:GetValue()-1,indx:GetValue()+182,indy:GetValue()-19,indx:GetValue()+202,indy:GetValue()-19)
            draw.Color(TEXTCOLOR:GetValue())
            draw.SetFont( fontn1 )
            draw.Text(indx:GetValue()+67,indy:GetValue()-15,"Hotkey List")
            draw.Color(backcolor:GetValue())
            draw.FilledRect(indx:GetValue(),indy:GetValue()+20,indx:GetValue()+182,indy:GetValue()+5)
            draw.Color(backcolor2:GetValue())
            draw.FilledRect(indx:GetValue(),indy:GetValue()+35,indx:GetValue()+182,indy:GetValue()+20)
            draw.Color(bindcolor:GetValue())
            draw.SetFont(bindsFont2)
            draw.TextShadow(indx:GetValue()+24,indy:GetValue()+7,"Double Tap")
            draw.Text(indx:GetValue()+23,indy:GetValue()+7,"Double Tap")
            draw.TextShadow(indx:GetValue()+140,indy:GetValue()+7,"toggled")
            draw.Text(indx:GetValue()+139,indy:GetValue()+7,"toggled")
            draw.TextShadow(indx:GetValue()+24,indy:GetValue()+22,"Hide Shots")
            draw.Text(indx:GetValue()+23,indy:GetValue()+22,"Hide Shots")
            draw.TextShadow(indx:GetValue()+140,indy:GetValue()+22,"toggled")
            draw.Text(indx:GetValue()+139,indy:GetValue()+22,"toggled")
        end
        if indicatorsbox:GetValue()==3 then
            if  rgbstyle:GetValue() then 
            draw.Color(r1:GetValue(),g1:GetValue(),b1:GetValue(),255)
        elseif customcolor:GetValue() then 
            draw.Color(rdlinecolor:GetValue())
        end
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+130,indy:GetValue())
            draw.Line(indx:GetValue(),indy:GetValue()-1,indx:GetValue()+130,indy:GetValue()-1)
            draw.Color(backcolor3:GetValue())
            draw.FilledRect(indx:GetValue(),indy:GetValue()+18,indx:GetValue()+130,indy:GetValue())
            draw.SetFont(fontn1)
            draw.Color(TEXTCOLOR:GetValue())
            draw.Text(indx:GetValue()+38,indy:GetValue()+4,"keybinds")
            draw.SetFont(bindsFont2)
            draw.Color(bindcolor:GetValue())
            draw.Text(indx:GetValue()+2,indy:GetValue()+23,"Double Tap")
            draw.TextShadow(indx:GetValue()+2,indy:GetValue()+23,"Double Tap")
            draw.Text(indx:GetValue()+82,indy:GetValue()+23,"[toggled]")
            draw.TextShadow(indx:GetValue()+82,indy:GetValue()+23,"[toggled]")
            draw.Text(indx:GetValue()+2,indy:GetValue()+38,"Hide Shots")
            draw.TextShadow(indx:GetValue()+2,indy:GetValue()+38,"Hide Shots")
            draw.Text(indx:GetValue()+82,indy:GetValue()+38,"[toggled]")
            draw.TextShadow(indx:GetValue()+82,indy:GetValue()+38,"[toggled]")
end
         elseif dtguion1==false and hson and gui.GetValue("rbot.antiaim.extra.fakecrouchkey")~=0 and input.IsButtonDown(fdon)==false then
            if indicatorsbox:GetValue()==1 then
            draw.Color(linecolor:GetValue())
        --draw.Line(448,354,472,332)
          draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue()-22)
        --draw.Line(472,332,596,332)
          draw.Line(indx:GetValue()+24,indy:GetValue()-22,indx:GetValue()+148,indy:GetValue()-22)
        --draw.Line(596,332,572,354)
          draw.Line(indx:GetValue()+148,indy:GetValue()-22,indx:GetValue()+124,indy:GetValue())
        --draw.Line(572,354,448,354)
          draw.Line(indx:GetValue()+124,indy:GetValue(),indx:GetValue(),indy:GetValue())
        
        --draw.Line(448,353,472,331)
          draw.Line(indx:GetValue(),indy:GetValue()-1,indx:GetValue()+24,indy:GetValue()-23)
        --draw.Line(472,331,596,331)
          draw.Line(indx:GetValue()+24,indy:GetValue()-23,indx:GetValue()+148,indy:GetValue()-23)
        --draw.Line(596,331,572,353)
          draw.Line(indx:GetValue()+148,indy:GetValue()-23,indx:GetValue()+124,indy:GetValue()-1)
        --draw.Line(572,353,448,353)
        draw.Color(backcolor:GetValue())
        draw.FilledRect(indx:GetValue()+24,indy:GetValue()-21.8,indx:GetValue()+124,indy:GetValue()-1.3)
        --draw.Triangle( x1, y1, x2, y2, x3, y3 )
        draw.Triangle( indx:GetValue()+24,indy:GetValue()-21.8,indx:GetValue()+1,indy:GetValue()-1, indx:GetValue()+24, indy:GetValue()-1.3 )
        draw.Triangle( indx:GetValue()+124,indy:GetValue()-1.3, indx:GetValue()+124, indy:GetValue()-21.8,indx:GetValue()+147,indy:GetValue()-22 )
        draw.Color(TEXTCOLOR:GetValue())
        draw.SetFont( fontn1 )
        draw.Text(indx:GetValue()+46,indy:GetValue()-17,"keybinds")
        draw.Color(bindcolor:GetValue())
        draw.SetFont(bindsFont)
            draw.Text(indx:GetValue()-1,indy:GetValue()+5,"Hideshots")
            draw.Text(indx:GetValue()+75,indy:GetValue()+5,"[toggled]")
            --draw.TextShadow( x, y, string )
            draw.TextShadow(indx:GetValue()-1,indy:GetValue()+5,"Hideshots")
            draw.TextShadow(indx:GetValue()+75.1,indy:GetValue()+5,"[toggled]")
        end
             if indicatorsbox:GetValue()==2 then
            draw.Color(linecolor:GetValue())
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue()-20)
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue())
            draw.Line(indx:GetValue()+182,indy:GetValue(),indx:GetValue()+204,indy:GetValue()-20)
            draw.Line(indx:GetValue()+204,indy:GetValue()-20,indx:GetValue()+182,indy:GetValue()-20)
            draw.Color(backcolor:GetValue())
            draw.FilledRect(indx:GetValue()+24,indy:GetValue()-1,indx:GetValue()+182,indy:GetValue()-19)
            draw.Triangle(indx:GetValue()+24,indy:GetValue()-1,indx:GetValue()+2,indy:GetValue()-1,indx:GetValue()+24,indy:GetValue()-19)
            draw.Triangle(indx:GetValue()+182,indy:GetValue()-1,indx:GetValue()+182,indy:GetValue()-19,indx:GetValue()+202,indy:GetValue()-19)
            draw.Color(TEXTCOLOR:GetValue())
            draw.SetFont( fontn1 )
            draw.Text(indx:GetValue()+67,indy:GetValue()-15,"Hotkey List")
            draw.Color(backcolor:GetValue())
            draw.FilledRect(indx:GetValue(),indy:GetValue()+20,indx:GetValue()+182,indy:GetValue()+5)
            draw.Color(bindcolor:GetValue())
            draw.SetFont(bindsFont2)
            draw.TextShadow(indx:GetValue()+24,indy:GetValue()+7,"Hide Shots")
            draw.Text(indx:GetValue()+23,indy:GetValue()+7,"Hide Shots")
            draw.TextShadow(indx:GetValue()+140,indy:GetValue()+7,"toggled")
            draw.Text(indx:GetValue()+139,indy:GetValue()+7,"toggled")
        end
         if indicatorsbox:GetValue()==3 then
            if  rgbstyle:GetValue() then 
            draw.Color(r1:GetValue(),g1:GetValue(),b1:GetValue(),255)
        elseif customcolor:GetValue() then 
            draw.Color(rdlinecolor:GetValue())
        end
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+130,indy:GetValue())
            draw.Line(indx:GetValue(),indy:GetValue()-1,indx:GetValue()+130,indy:GetValue()-1)
            draw.Color(backcolor3:GetValue())
            draw.FilledRect(indx:GetValue(),indy:GetValue()+18,indx:GetValue()+130,indy:GetValue())
            draw.SetFont(fontn1)
            draw.Color(TEXTCOLOR:GetValue())
            draw.Text(indx:GetValue()+38,indy:GetValue()+4,"keybinds")
            draw.SetFont(bindsFont2)
            draw.Color(bindcolor:GetValue())
            draw.Text(indx:GetValue()+2,indy:GetValue()+23,"Hide Shots")
            draw.TextShadow(indx:GetValue()+2,indy:GetValue()+23,"Hide Shots")
            draw.Text(indx:GetValue()+82,indy:GetValue()+23,"[toggled]")
            draw.TextShadow(indx:GetValue()+82,indy:GetValue()+23,"[toggled]")
end
        elseif dtguion1 and hson and gui.GetValue("rbot.antiaim.extra.fakecrouchkey")~=0 and input.IsButtonDown(fdon)==true then
            if indicatorsbox:GetValue()==1 then
            draw.Color(linecolor:GetValue())
        --draw.Line(448,354,472,332)
          draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue()-22)
        --draw.Line(472,332,596,332)
          draw.Line(indx:GetValue()+24,indy:GetValue()-22,indx:GetValue()+148,indy:GetValue()-22)
        --draw.Line(596,332,572,354)
          draw.Line(indx:GetValue()+148,indy:GetValue()-22,indx:GetValue()+124,indy:GetValue())
        --draw.Line(572,354,448,354)
          draw.Line(indx:GetValue()+124,indy:GetValue(),indx:GetValue(),indy:GetValue())
        
        --draw.Line(448,353,472,331)
          draw.Line(indx:GetValue(),indy:GetValue()-1,indx:GetValue()+24,indy:GetValue()-23)
        --draw.Line(472,331,596,331)
          draw.Line(indx:GetValue()+24,indy:GetValue()-23,indx:GetValue()+148,indy:GetValue()-23)
        --draw.Line(596,331,572,353)
          draw.Line(indx:GetValue()+148,indy:GetValue()-23,indx:GetValue()+124,indy:GetValue()-1)
        --draw.Line(572,353,448,353)
        draw.Color(backcolor:GetValue())
        draw.FilledRect(indx:GetValue()+24,indy:GetValue()-21.8,indx:GetValue()+124,indy:GetValue()-1.3)
        --draw.Triangle( x1, y1, x2, y2, x3, y3 )
        draw.Triangle( indx:GetValue()+24,indy:GetValue()-21.8,indx:GetValue()+1,indy:GetValue()-1, indx:GetValue()+24, indy:GetValue()-1.3 )
        draw.Triangle( indx:GetValue()+124,indy:GetValue()-1.3, indx:GetValue()+124, indy:GetValue()-21.8,indx:GetValue()+147,indy:GetValue()-22 )
        draw.Color(TEXTCOLOR:GetValue())
        draw.SetFont( fontn1 )
        draw.Text(indx:GetValue()+46,indy:GetValue()-17,"keybinds")
        draw.Color(bindcolor:GetValue())
        draw.SetFont(bindsFont)
            draw.Text(indx:GetValue()-1,indy:GetValue()+5,"Doubletap")
            draw.Text(indx:GetValue()+75,indy:GetValue()+5,"[toggled]")
            draw.Text(indx:GetValue()-1,indy:GetValue()+20,"Hideshots")
            draw.Text(indx:GetValue()+75,indy:GetValue()+20,"[toggled]")
            draw.Text(indx:GetValue()-1,indy:GetValue()+35,"Fakeduck")
            draw.Text(indx:GetValue()+75,indy:GetValue()+35,"[holding]")
            --draw.TextShadow( x, y, string )
            draw.TextShadow(indx:GetValue()-1, indy:GetValue()+5, "Doubletap" )
            draw.TextShadow(indx:GetValue()+75.1,indy:GetValue()+5,"[toggled]")
            draw.TextShadow(indx:GetValue()-1,indy:GetValue()+20,"Hideshots")
            draw.TextShadow(indx:GetValue()+75.1,indy:GetValue()+20,"[toggled]")
            draw.TextShadow(indx:GetValue()-1,indy:GetValue()+35,"Fakeduck")
            draw.TextShadow(indx:GetValue()+75.01,indy:GetValue()+35,"[holding]")
        end
        if indicatorsbox:GetValue()==2 then
            draw.Color(linecolor:GetValue())
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue()-20)
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue())
            draw.Line(indx:GetValue()+182,indy:GetValue(),indx:GetValue()+204,indy:GetValue()-20)
            draw.Line(indx:GetValue()+204,indy:GetValue()-20,indx:GetValue()+182,indy:GetValue()-20)
            draw.Color(backcolor:GetValue())
            draw.FilledRect(indx:GetValue()+24,indy:GetValue()-1,indx:GetValue()+182,indy:GetValue()-19)
            draw.Triangle(indx:GetValue()+24,indy:GetValue()-1,indx:GetValue()+2,indy:GetValue()-1,indx:GetValue()+24,indy:GetValue()-19)
            draw.Triangle(indx:GetValue()+182,indy:GetValue()-1,indx:GetValue()+182,indy:GetValue()-19,indx:GetValue()+202,indy:GetValue()-19)
            draw.Color(TEXTCOLOR:GetValue())
            draw.SetFont( fontn1 )
            draw.Text(indx:GetValue()+67,indy:GetValue()-15,"Hotkey List")
            draw.Color(backcolor:GetValue())
            draw.FilledRect(indx:GetValue(),indy:GetValue()+20,indx:GetValue()+182,indy:GetValue()+5)
            draw.FilledRect(indx:GetValue(),indy:GetValue()+50,indx:GetValue()+182,indy:GetValue()+35)
            draw.Color(backcolor2:GetValue())
            draw.FilledRect(indx:GetValue(),indy:GetValue()+35,indx:GetValue()+182,indy:GetValue()+20)
            draw.Color(bindcolor:GetValue())
            draw.SetFont(bindsFont2)
            draw.TextShadow(indx:GetValue()+24,indy:GetValue()+7,"Double Tap")
            draw.Text(indx:GetValue()+23,indy:GetValue()+7,"Double Tap")
            draw.TextShadow(indx:GetValue()+140,indy:GetValue()+7,"toggled")
            draw.Text(indx:GetValue()+139,indy:GetValue()+7,"toggled")
            draw.TextShadow(indx:GetValue()+24,indy:GetValue()+22,"Hide Shots")
            draw.Text(indx:GetValue()+23,indy:GetValue()+22,"Hide Shots")
            draw.TextShadow(indx:GetValue()+140,indy:GetValue()+22,"toggled")
            draw.Text(indx:GetValue()+139,indy:GetValue()+22,"toggled")
            draw.TextShadow(indx:GetValue()+24,indy:GetValue()+37,"Fake Duck")
            draw.Text(indx:GetValue()+23,indy:GetValue()+37,"Fake Duck")
            draw.TextShadow(indx:GetValue()+140,indy:GetValue()+37,"holding")
            draw.Text(indx:GetValue()+139,indy:GetValue()+37,"holding")
        end
  if indicatorsbox:GetValue()==3 then
            if  rgbstyle:GetValue() then 
            draw.Color(r1:GetValue(),g1:GetValue(),b1:GetValue(),255)
        elseif customcolor:GetValue() then 
            draw.Color(rdlinecolor:GetValue())
        end
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+130,indy:GetValue())
            draw.Line(indx:GetValue(),indy:GetValue()-1,indx:GetValue()+130,indy:GetValue()-1)
            draw.Color(backcolor3:GetValue())
            draw.FilledRect(indx:GetValue(),indy:GetValue()+18,indx:GetValue()+130,indy:GetValue())
            draw.SetFont(fontn1)
            draw.Color(TEXTCOLOR:GetValue())
            draw.Text(indx:GetValue()+38,indy:GetValue()+4,"keybinds")
            draw.SetFont(bindsFont2)
            draw.Color(bindcolor:GetValue())
            draw.Text(indx:GetValue()+2,indy:GetValue()+23,"Double Tap")
            draw.TextShadow(indx:GetValue()+2,indy:GetValue()+23,"Double Tap")
            draw.Text(indx:GetValue()+82,indy:GetValue()+23,"[toggled]")
            draw.TextShadow(indx:GetValue()+82,indy:GetValue()+23,"[toggled]")
            draw.Text(indx:GetValue()+2,indy:GetValue()+38,"Hide Shots")
            draw.TextShadow(indx:GetValue()+2,indy:GetValue()+38,"Hide Shots")
            draw.Text(indx:GetValue()+82,indy:GetValue()+38,"[toggled]")
            draw.TextShadow(indx:GetValue()+82,indy:GetValue()+38,"[toggled]")
            draw.Text(indx:GetValue()+2,indy:GetValue()+53,"Fake Duck")
            draw.TextShadow(indx:GetValue()+2,indy:GetValue()+53,"Fake Duck")
            draw.Text(indx:GetValue()+82,indy:GetValue()+53,"[holding]")
            draw.TextShadow(indx:GetValue()+82,indy:GetValue()+53,"[holding]")
end
        elseif gui.GetValue("rbot.antiaim.extra.fakecrouchkey")~=0 and input.IsButtonDown(fdon)==true and dtguion1==false and hson==false then
            if indicatorsbox:GetValue()==1 then
            draw.Color(linecolor:GetValue())
        --draw.Line(448,354,472,332)
          draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue()-22)
        --draw.Line(472,332,596,332)
          draw.Line(indx:GetValue()+24,indy:GetValue()-22,indx:GetValue()+148,indy:GetValue()-22)
        --draw.Line(596,332,572,354)
          draw.Line(indx:GetValue()+148,indy:GetValue()-22,indx:GetValue()+124,indy:GetValue())
        --draw.Line(572,354,448,354)
          draw.Line(indx:GetValue()+124,indy:GetValue(),indx:GetValue(),indy:GetValue())
        
        --draw.Line(448,353,472,331)
          draw.Line(indx:GetValue(),indy:GetValue()-1,indx:GetValue()+24,indy:GetValue()-23)
        --draw.Line(472,331,596,331)
          draw.Line(indx:GetValue()+24,indy:GetValue()-23,indx:GetValue()+148,indy:GetValue()-23)
        --draw.Line(596,331,572,353)
          draw.Line(indx:GetValue()+148,indy:GetValue()-23,indx:GetValue()+124,indy:GetValue()-1)
        --draw.Line(572,353,448,353)
        draw.Color(backcolor:GetValue())
        draw.FilledRect(indx:GetValue()+24,indy:GetValue()-21.8,indx:GetValue()+124,indy:GetValue()-1.3)
        --draw.Triangle( x1, y1, x2, y2, x3, y3 )
        draw.Triangle( indx:GetValue()+24,indy:GetValue()-21.8,indx:GetValue()+1,indy:GetValue()-1, indx:GetValue()+24, indy:GetValue()-1.3 )
        draw.Triangle( indx:GetValue()+124,indy:GetValue()-1.3, indx:GetValue()+124, indy:GetValue()-21.8,indx:GetValue()+147,indy:GetValue()-22 )
        draw.Color(TEXTCOLOR:GetValue())
        draw.SetFont( fontn1 )
        draw.Text(indx:GetValue()+46,indy:GetValue()-17,"keybinds")
        draw.Color(bindcolor:GetValue())
        draw.SetFont(bindsFont)
            draw.Text(indx:GetValue()-1,indy:GetValue()+5,"Fakeduck")
            draw.Text(indx:GetValue()+75,indy:GetValue()+5,"[holding]")
            draw.TextShadow(indx:GetValue()-1,indy:GetValue()+5,"Fakeduck")
            draw.TextShadow(indx:GetValue()+75.01,indy:GetValue()+5,"[holding]")
        end
            if indicatorsbox:GetValue()==2 then
            draw.Color(linecolor:GetValue())
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue()-20)
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue())
            draw.Line(indx:GetValue()+182,indy:GetValue(),indx:GetValue()+204,indy:GetValue()-20)
            draw.Line(indx:GetValue()+204,indy:GetValue()-20,indx:GetValue()+182,indy:GetValue()-20)
            draw.Color(backcolor:GetValue())
            draw.FilledRect(indx:GetValue()+24,indy:GetValue()-1,indx:GetValue()+182,indy:GetValue()-19)
            draw.Triangle(indx:GetValue()+24,indy:GetValue()-1,indx:GetValue()+2,indy:GetValue()-1,indx:GetValue()+24,indy:GetValue()-19)
            draw.Triangle(indx:GetValue()+182,indy:GetValue()-1,indx:GetValue()+182,indy:GetValue()-19,indx:GetValue()+202,indy:GetValue()-19)
            draw.Color(TEXTCOLOR:GetValue())
            draw.SetFont( fontn1 )
            draw.Text(indx:GetValue()+67,indy:GetValue()-15,"Hotkey List")
            draw.Color(backcolor:GetValue())
            draw.FilledRect(indx:GetValue(),indy:GetValue()+20,indx:GetValue()+182,indy:GetValue()+5)
            draw.Color(bindcolor:GetValue())
            draw.SetFont(bindsFont2)
            draw.TextShadow(indx:GetValue()+24,indy:GetValue()+7,"Fake Duck")
            draw.Text(indx:GetValue()+23,indy:GetValue()+7,"Fake Duck")
            draw.TextShadow(indx:GetValue()+140,indy:GetValue()+7,"holding")
            draw.Text(indx:GetValue()+139,indy:GetValue()+7,"holding")
        end
         if indicatorsbox:GetValue()==3 then
            if  rgbstyle:GetValue() then 
            draw.Color(r1:GetValue(),g1:GetValue(),b1:GetValue(),255)
        elseif customcolor:GetValue() then 
            draw.Color(rdlinecolor:GetValue())
        end
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+130,indy:GetValue())
            draw.Line(indx:GetValue(),indy:GetValue()-1,indx:GetValue()+130,indy:GetValue()-1)
            draw.Color(backcolor3:GetValue())
            draw.FilledRect(indx:GetValue(),indy:GetValue()+18,indx:GetValue()+130,indy:GetValue())
            draw.SetFont(fontn1)
            draw.Color(TEXTCOLOR:GetValue())
            draw.Text(indx:GetValue()+38,indy:GetValue()+4,"keybinds")
            draw.SetFont(bindsFont2)
            draw.Color(bindcolor:GetValue())
            draw.Text(indx:GetValue()+2,indy:GetValue()+23,"Fake Duck")
            draw.TextShadow(indx:GetValue()+2,indy:GetValue()+23,"Fake Duck")
            draw.Text(indx:GetValue()+82,indy:GetValue()+23,"[holding]")
            draw.TextShadow(indx:GetValue()+82,indy:GetValue()+23,"[holding]")
end
        elseif gui.GetValue("rbot.antiaim.extra.fakecrouchkey")~=0 and input.IsButtonDown(fdon)==true and dtguion1==true and hson==false then
            if indicatorsbox:GetValue()==1 then
          draw.Color(linecolor:GetValue())
        --draw.Line(448,354,472,332)
          draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue()-22)
        --draw.Line(472,332,596,332)
          draw.Line(indx:GetValue()+24,indy:GetValue()-22,indx:GetValue()+148,indy:GetValue()-22)
        --draw.Line(596,332,572,354)
          draw.Line(indx:GetValue()+148,indy:GetValue()-22,indx:GetValue()+124,indy:GetValue())
        --draw.Line(572,354,448,354)
          draw.Line(indx:GetValue()+124,indy:GetValue(),indx:GetValue(),indy:GetValue())
        
        --draw.Line(448,353,472,331)
          draw.Line(indx:GetValue(),indy:GetValue()-1,indx:GetValue()+24,indy:GetValue()-23)
        --draw.Line(472,331,596,331)
          draw.Line(indx:GetValue()+24,indy:GetValue()-23,indx:GetValue()+148,indy:GetValue()-23)
        --draw.Line(596,331,572,353)
          draw.Line(indx:GetValue()+148,indy:GetValue()-23,indx:GetValue()+124,indy:GetValue()-1)
        --draw.Line(572,353,448,353)
        draw.Color(backcolor:GetValue())
        draw.FilledRect(indx:GetValue()+24,indy:GetValue()-21.8,indx:GetValue()+124,indy:GetValue()-1.3)
        --draw.Triangle( x1, y1, x2, y2, x3, y3 )
        draw.Triangle( indx:GetValue()+24,indy:GetValue()-21.8,indx:GetValue()+1,indy:GetValue()-1, indx:GetValue()+24, indy:GetValue()-1.3 )
        draw.Triangle( indx:GetValue()+124,indy:GetValue()-1.3, indx:GetValue()+124, indy:GetValue()-21.8,indx:GetValue()+147,indy:GetValue()-22 )
        draw.Color(TEXTCOLOR:GetValue())
        draw.SetFont( fontn1 )
        draw.Text(indx:GetValue()+46,indy:GetValue()-17,"keybinds")
        draw.Color(bindcolor:GetValue())
        draw.SetFont(bindsFont)
            draw.Text(indx:GetValue()-1,indy:GetValue()+5,"Doubletap")
            draw.Text(indx:GetValue()+75,indy:GetValue()+5,"[toggled]")
            draw.Text(indx:GetValue()-1,indy:GetValue()+20,"Fakeduck")
            draw.Text(indx:GetValue()+75,indy:GetValue()+20,"[holding]")
            draw.TextShadow(indx:GetValue()-1, indy:GetValue()+5, "Doubletap" )
            draw.TextShadow(indx:GetValue()+75.1,indy:GetValue()+5,"[toggled]")
            draw.TextShadow(indx:GetValue()-1,indy:GetValue()+20,"Fakeduck")
            draw.TextShadow(indx:GetValue()+75.01,indy:GetValue()+20,"[holding]")
        end
         if indicatorsbox:GetValue()==2 then
            draw.Color(linecolor:GetValue())
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue()-20)
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue())
            draw.Line(indx:GetValue()+182,indy:GetValue(),indx:GetValue()+204,indy:GetValue()-20)
            draw.Line(indx:GetValue()+204,indy:GetValue()-20,indx:GetValue()+182,indy:GetValue()-20)
            draw.Color(backcolor:GetValue())
            draw.FilledRect(indx:GetValue()+24,indy:GetValue()-1,indx:GetValue()+182,indy:GetValue()-19)
            draw.Triangle(indx:GetValue()+24,indy:GetValue()-1,indx:GetValue()+2,indy:GetValue()-1,indx:GetValue()+24,indy:GetValue()-19)
            draw.Triangle(indx:GetValue()+182,indy:GetValue()-1,indx:GetValue()+182,indy:GetValue()-19,indx:GetValue()+202,indy:GetValue()-19)
            draw.Color(TEXTCOLOR:GetValue())
            draw.SetFont( fontn1 )
            draw.Text(indx:GetValue()+67,indy:GetValue()-15,"Hotkey List")
            draw.Color(backcolor:GetValue())
            draw.FilledRect(indx:GetValue(),indy:GetValue()+20,indx:GetValue()+182,indy:GetValue()+5)
            draw.Color(backcolor2:GetValue())
            draw.FilledRect(indx:GetValue(),indy:GetValue()+35,indx:GetValue()+182,indy:GetValue()+20)
            draw.Color(bindcolor:GetValue())
            draw.SetFont(bindsFont2)
            draw.TextShadow(indx:GetValue()+24,indy:GetValue()+7,"Double Tap")
            draw.Text(indx:GetValue()+23,indy:GetValue()+7,"Double Tap")
            draw.TextShadow(indx:GetValue()+140,indy:GetValue()+7,"toggled")
            draw.Text(indx:GetValue()+139,indy:GetValue()+7,"toggled")
            draw.TextShadow(indx:GetValue()+24,indy:GetValue()+22,"Fake Duck")
            draw.Text(indx:GetValue()+23,indy:GetValue()+22,"Fake Duck")
            draw.TextShadow(indx:GetValue()+140,indy:GetValue()+22,"holding")
            draw.Text(indx:GetValue()+139,indy:GetValue()+22,"holding")
        end
         if indicatorsbox:GetValue()==3 then
            if  rgbstyle:GetValue() then 
            draw.Color(r1:GetValue(),g1:GetValue(),b1:GetValue(),255)
        elseif customcolor:GetValue() then 
            draw.Color(rdlinecolor:GetValue())
        end
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+130,indy:GetValue())
            draw.Line(indx:GetValue(),indy:GetValue()-1,indx:GetValue()+130,indy:GetValue()-1)
            draw.Color(backcolor3:GetValue())
            draw.FilledRect(indx:GetValue(),indy:GetValue()+18,indx:GetValue()+130,indy:GetValue())
            draw.SetFont(fontn1)
            draw.Color(TEXTCOLOR:GetValue())
            draw.Text(indx:GetValue()+38,indy:GetValue()+4,"keybinds")
            draw.SetFont(bindsFont2)
            draw.Color(bindcolor:GetValue())
            draw.Text(indx:GetValue()+2,indy:GetValue()+23,"Double Tap")
            draw.TextShadow(indx:GetValue()+2,indy:GetValue()+23,"Double Tap")
            draw.Text(indx:GetValue()+82,indy:GetValue()+23,"[toggled]")
            draw.TextShadow(indx:GetValue()+82,indy:GetValue()+23,"[toggled]")
            draw.Text(indx:GetValue()+2,indy:GetValue()+38,"Fakeduck")
            draw.TextShadow(indx:GetValue()+2,indy:GetValue()+38,"Fakeduck")
            draw.Text(indx:GetValue()+82,indy:GetValue()+38,"[holding]")
            draw.TextShadow(indx:GetValue()+82,indy:GetValue()+38,"[holding]")
    end
        elseif gui.GetValue("rbot.antiaim.extra.fakecrouchkey")~=0 and input.IsButtonDown(fdon)==true and dtguion1==false and hson then
            if indicatorsbox:GetValue()==1 then
          draw.Color(linecolor:GetValue())
        --draw.Line(448,354,472,332)
          draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue()-22)
        --draw.Line(472,332,596,332)
          draw.Line(indx:GetValue()+24,indy:GetValue()-22,indx:GetValue()+148,indy:GetValue()-22)
        --draw.Line(596,332,572,354)
          draw.Line(indx:GetValue()+148,indy:GetValue()-22,indx:GetValue()+124,indy:GetValue())
        --draw.Line(572,354,448,354)
          draw.Line(indx:GetValue()+124,indy:GetValue(),indx:GetValue(),indy:GetValue())
        
        --draw.Line(448,353,472,331)
          draw.Line(indx:GetValue(),indy:GetValue()-1,indx:GetValue()+24,indy:GetValue()-23)
        --draw.Line(472,331,596,331)
          draw.Line(indx:GetValue()+24,indy:GetValue()-23,indx:GetValue()+148,indy:GetValue()-23)
        --draw.Line(596,331,572,353)
          draw.Line(indx:GetValue()+148,indy:GetValue()-23,indx:GetValue()+124,indy:GetValue()-1)
        --draw.Line(572,353,448,353)
        draw.Color(backcolor:GetValue())
        draw.FilledRect(indx:GetValue()+24,indy:GetValue()-21.8,indx:GetValue()+124,indy:GetValue()-1.3)
        --draw.Triangle( x1, y1, x2, y2, x3, y3 )
        draw.Triangle( indx:GetValue()+24,indy:GetValue()-21.8,indx:GetValue()+1,indy:GetValue()-1, indx:GetValue()+24, indy:GetValue()-1.3 )
        draw.Triangle( indx:GetValue()+124,indy:GetValue()-1.3, indx:GetValue()+124, indy:GetValue()-21.8,indx:GetValue()+147,indy:GetValue()-22 )
        draw.Color(TEXTCOLOR:GetValue())
        draw.SetFont( fontn1 )
        draw.Text(indx:GetValue()+46,indy:GetValue()-17,"keybinds")
        draw.Color(bindcolor:GetValue())
        draw.SetFont(bindsFont)
            draw.Text(indx:GetValue()-1,indy:GetValue()+5,"Hideshots")
            draw.Text(indx:GetValue()+75,indy:GetValue()+5,"[toggled]")
            draw.Text(indx:GetValue()-1,indy:GetValue()+20,"Fakeduck")
            draw.Text(indx:GetValue()+75,indy:GetValue()+20,"[holding]")
            draw.TextShadow(indx:GetValue()-1,indy:GetValue()+5,"Hideshots")
            draw.TextShadow(indx:GetValue()+75.1,indy:GetValue()+5,"[toggled]")
            draw.TextShadow(indx:GetValue()-1,indy:GetValue()+20,"Fakeduck")
            draw.TextShadow(indx:GetValue()+75.01,indy:GetValue()+20,"[holding]")
        end
        if indicatorsbox:GetValue()==2 then
            draw.Color(linecolor:GetValue())
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue()-20)
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+24,indy:GetValue())
            draw.Line(indx:GetValue()+182,indy:GetValue(),indx:GetValue()+204,indy:GetValue()-20)
            draw.Line(indx:GetValue()+204,indy:GetValue()-20,indx:GetValue()+182,indy:GetValue()-20)
            draw.Color(backcolor:GetValue())
            draw.FilledRect(indx:GetValue()+24,indy:GetValue()-1,indx:GetValue()+182,indy:GetValue()-19)
            draw.Triangle(indx:GetValue()+24,indy:GetValue()-1,indx:GetValue()+2,indy:GetValue()-1,indx:GetValue()+24,indy:GetValue()-19)
            draw.Triangle(indx:GetValue()+182,indy:GetValue()-1,indx:GetValue()+182,indy:GetValue()-19,indx:GetValue()+202,indy:GetValue()-19)
            draw.Color(TEXTCOLOR:GetValue())
            draw.SetFont( fontn1 )
            draw.Text(indx:GetValue()+67,indy:GetValue()-15,"Hotkey List")
            draw.Color(backcolor:GetValue())
            draw.FilledRect(indx:GetValue(),indy:GetValue()+20,indx:GetValue()+182,indy:GetValue()+5)
            draw.Color(backcolor2:GetValue())
            draw.FilledRect(indx:GetValue(),indy:GetValue()+35,indx:GetValue()+182,indy:GetValue()+20)
            draw.Color(bindcolor:GetValue())
            draw.SetFont(bindsFont2)
            draw.TextShadow(indx:GetValue()+24,indy:GetValue()+7,"Hide Shots")
            draw.Text(indx:GetValue()+23,indy:GetValue()+7,"Hide Shots")
            draw.TextShadow(indx:GetValue()+140,indy:GetValue()+7,"toggled")
            draw.Text(indx:GetValue()+139,indy:GetValue()+7,"toggled")
            draw.TextShadow(indx:GetValue()+24,indy:GetValue()+22,"Fake Duck")
            draw.Text(indx:GetValue()+23,indy:GetValue()+22,"Fake Duck")
            draw.TextShadow(indx:GetValue()+140,indy:GetValue()+22,"holding")
            draw.Text(indx:GetValue()+139,indy:GetValue()+22,"holding")
            end
    if indicatorsbox:GetValue()==3 then
            if  rgbstyle:GetValue() then 
            draw.Color(r1:GetValue(),g1:GetValue(),b1:GetValue(),255)
        elseif customcolor:GetValue() then 
            draw.Color(rdlinecolor:GetValue())
        end
            draw.Line(indx:GetValue(),indy:GetValue(),indx:GetValue()+130,indy:GetValue())
            draw.Line(indx:GetValue(),indy:GetValue()-1,indx:GetValue()+130,indy:GetValue()-1)
            draw.Color(backcolor3:GetValue())
            draw.FilledRect(indx:GetValue(),indy:GetValue()+18,indx:GetValue()+130,indy:GetValue())
            draw.SetFont(fontn1)
            draw.Color(TEXTCOLOR:GetValue())
            draw.Text(indx:GetValue()+38,indy:GetValue()+4,"keybinds")
            draw.SetFont(bindsFont2)
            draw.Color(bindcolor:GetValue())
            draw.Text(indx:GetValue()+2,indy:GetValue()+23,"Hide Shots")
            draw.TextShadow(indx:GetValue()+2,indy:GetValue()+23,"Hide Shots")
            draw.Text(indx:GetValue()+82,indy:GetValue()+23,"[toggled]")
            draw.TextShadow(indx:GetValue()+82,indy:GetValue()+23,"[toggled]")
            draw.Text(indx:GetValue()+2,indy:GetValue()+38,"Fakeduck")
            draw.TextShadow(indx:GetValue()+2,indy:GetValue()+38,"Fakeduck")
            draw.Text(indx:GetValue()+82,indy:GetValue()+38,"[holding]")
            draw.TextShadow(indx:GetValue()+82,indy:GetValue()+38,"[holding]")
end
end
end
callbacks.Register('Draw', indicatorsstart)
function tracern()
    if nadetrace:GetValue() then
      if input.IsButtonDown(1) or input.IsButtonDown(2) and lp_weapon_id(WEAPONID_NADE) then
        gui.SetValue("esp.world.nadetracer.local",1)
        gui.SetValue("esp.world.nadewarning.local",1)
    elseif entities:GetLocalPlayer()~=nil and stat:GetValue() and entities.GetLocalPlayer():GetWeaponID() ~= 43 and entities.GetLocalPlayer():GetWeaponID() ~= 44 and entities.GetLocalPlayer():GetWeaponID() ~= 45 and entities.GetLocalPlayer():GetWeaponID() ~= 46 and entities.GetLocalPlayer():GetWeaponID() ~= 47 and entities.GetLocalPlayer():GetWeaponID() ~= 48 then
       --elseif stat:GetValue() and input.IsButtonReleased(1) and input.IsButtonReleased(2) then
        gui.SetValue("esp.world.nadewarning.local",1)
        gui.SetValue("esp.world.nadetracer.local",1)
    else
        gui.SetValue("esp.world.nadetracer.local",0)
        gui.SetValue("esp.world.nadewarning.local",0) 
    end
end
end

    callbacks.Register('Draw', tracern)
  function check1()
    if defset:GetValue() then
    gui.SetValue("rbot.KOL🌭BAS.AA_condition2",4)
    gui.SetValue("rbot.KOL🌭BAS.AA_condition2m",0)
    gui.SetValue("rbot.KOL🌭BAS.AA_condition2a",2)
    gui.SetValue("rbot.KOL🌭BAS.AA_condition2s",1)
    gui.SetValue("rbot.KOL🌭BAS.angler",58)
    gui.SetValue("rbot.KOL🌭BAS.anglel",58)
    gui.SetValue("rbot.KOL🌭BAS.anglerm",51)
    gui.SetValue("rbot.KOL🌭BAS.anglelm",49)
    gui.SetValue("rbot.KOL🌭BAS.anglera",31)
    gui.SetValue("rbot.KOL🌭BAS.anglela",28)
    gui.SetValue("rbot.KOL🌭BAS.anglers",31)
    gui.SetValue("rbot.KOL🌭BAS.anglels",34)
    gui.SetValue("rbot.KOL🌭BAS.lbyr",109)
    gui.SetValue("rbot.KOL🌭BAS.lbyl",-122)
    gui.SetValue("rbot.KOL🌭BAS.lbyrm",92)
    gui.SetValue("rbot.KOL🌭BAS.lbylm",-75)
    gui.SetValue("rbot.KOL🌭BAS.lbyra",145)
    gui.SetValue("rbot.KOL🌭BAS.lbyla",-152)
    gui.SetValue("rbot.KOL🌭BAS.lbyrs",98)
    gui.SetValue("rbot.KOL🌭BAS.lbyls",-82)
    gui.SetValue("rbot.KOL🌭BAS.yaw_types",0)
    gui.SetValue("rbot.KOL🌭BAS.yaw_typesm",2)
    gui.SetValue("rbot.KOL🌭BAS.yaw_typesa",0)
    gui.SetValue("rbot.KOL🌭BAS.yaw_typess",2)
    gui.SetValue("rbot.KOL🌭BAS.jitterm",23)
    gui.SetValue("rbot.KOL🌭BAS.jitter",0)
    gui.SetValue("rbot.KOL🌭BAS.jittera",0)
    gui.SetValue("rbot.KOL🌭BAS.jitters",23)
    gui.SetValue("rbot.KOL🌭BAS.speed",2)
    gui.SetValue("rbot.KOL🌭BAS.speedm",3)
    gui.SetValue("rbot.KOL🌭BAS.speeda",2)
    gui.SetValue("rbot.KOL🌭BAS.speeds",3)
    gui.SetValue("rbot.KOL🌭BAS.defya",0)
    gui.SetValue("rbot.KOL🌭BAS.defyam",-1)
    gui.SetValue("rbot.KOL🌭BAS.defyaa",6)
    gui.SetValue("rbot.KOL🌭BAS.defyas",-3)
    gui.SetValue("rbot.KOL🌭BAS.desind",true)
    gui.SetValue("rbot.KOL🌭BAS.desinds",true)
    gui.SetValue("rbot.KOL🌭BAS.manulind1",true)
    gui.SetValue("rbot.KOL🌭BAS.Indicator1s",true)
    gui.SetValue("rbot.KOL🌭BAS.indicators_types",2)
    gui.SetValue("rbot.KOL🌭BAS.indpx",445)
    gui.SetValue("rbot.KOL🌭BAS.indpy",346)
    gui.SetValue("rbot.KOL🌭BAS.dtchange", true)
    gui.SetValue("rbot.KOL🌭BAS.desv_maxusrcmdprocessticks",16)
    gui.SetValue("rbot.KOL🌭BAS.fsv_maxusrcmdprocessticksf",16)
    gui.SetValue("rbot.KOL🌭BAS.dsv_maxusrcmdprocessticksd",16)
    gui.SetValue("rbot.KOL🌭BAS.desnorm",true)
    gui.SetValue("rbot.KOL🌭BAS.RaINBOWLINE", true)
    gui.SetValue("rbot.KOL🌭BAS.weihtrgb",1)
    gui.SetValue("rbot.KOL🌭BAS.nadetr", true)
    gui.SetValue("rbot.KOL🌭BAS.statik", true)
     gui.SetValue("rbot.KOL🌭BAS.nadeli", true)
    gui.SetValue("rbot.KOL🌭BAS.buye",true)
     gui.SetValue("rbot.KOL🌭BAS.DMGHC",true)
    gui.SetValue("rbot.KOL🌭BAS.scope",true)
     gui.SetValue("rbot.KOL🌭BAS.forcescope", true)
    gui.SetValue("rbot.KOL🌭BAS.ratioval",1.57)
    gui.SetValue("rbot.KOL🌭BAS.defset",false)
    scout:SetValue(true)
    zeus:SetValue(true)
    heavypistol:SetValue(true)
    nade:SetValue(true)
    molotov:SetValue(true)
    smoke:SetValue(true)
    armorh:SetValue(true)
    defuse:SetValue(true)
end
end
callbacks.Register('Draw', check1)
callbacks.Register('CreateMove', check1)

 function lowdelta ()
 	local slowwalk= gui.GetValue("rbot.accuracy.movement.slowkey")
 	local velsp4 =entities.GetLocalPlayer():GetPropVector("localdata", "m_vecVelocity[0]"):Length()
    local desik=gui.GetValue("rbot.antiaim.base.rotation")
    if input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false then 
        if lowdelt:GetValue() then 
        gui.SetValue("rbot.antiaim.base.rotation",-13)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        if desik==-13  then
        gui.SetValue("rbot.antiaim.base.rotation",-19)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-19  then
        gui.SetValue("rbot.antiaim.base.rotation",-25)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-25  then
        gui.SetValue("rbot.antiaim.base.rotation",-15)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-15   then
        gui.SetValue("rbot.antiaim.base.rotation",-7)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-7   then
        gui.SetValue("rbot.antiaim.base.rotation",-3)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-3   then
        gui.SetValue("rbot.antiaim.base.rotation",-5)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-5  then
        gui.SetValue("rbot.antiaim.base.rotation",-9)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-9  then
        gui.SetValue("rbot.antiaim.base.rotation",-16)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))


    end
end
end
if input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and velsp4>standvelocitythreshold:GetValue() then 
        if lowdeltm:GetValue() then 
        gui.SetValue("rbot.antiaim.base.rotation",-13)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        if desik==-13  then
        gui.SetValue("rbot.antiaim.base.rotation",-19)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-19  then
        gui.SetValue("rbot.antiaim.base.rotation",-25)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-25  then
        gui.SetValue("rbot.antiaim.base.rotation",-15)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-15   then
        gui.SetValue("rbot.antiaim.base.rotation",-7)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-7   then
        gui.SetValue("rbot.antiaim.base.rotation",-3)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-3   then
        gui.SetValue("rbot.antiaim.base.rotation",-5)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-5  then
        gui.SetValue("rbot.antiaim.base.rotation",-9)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-9  then
        gui.SetValue("rbot.antiaim.base.rotation",-16)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))


    end
end
end

if input.IsButtonDown(32)==true and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false then 
        if lowdeltaa:GetValue() then 
        gui.SetValue("rbot.antiaim.base.rotation",-13)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        if desik==-13  then
        gui.SetValue("rbot.antiaim.base.rotation",-19)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-19  then
        gui.SetValue("rbot.antiaim.base.rotation",-25)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-25  then
        gui.SetValue("rbot.antiaim.base.rotation",-15)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-15   then
        gui.SetValue("rbot.antiaim.base.rotation",-7)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-7   then
        gui.SetValue("rbot.antiaim.base.rotation",-3)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-3   then
        gui.SetValue("rbot.antiaim.base.rotation",-5)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-5  then
        gui.SetValue("rbot.antiaim.base.rotation",-9)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-9  then
        gui.SetValue("rbot.antiaim.base.rotation",-16)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))


    end
end
end

if input.IsButtonDown(32)==false and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==true then 
        if lowdelts:GetValue() then 
        gui.SetValue("rbot.antiaim.base.rotation",-13)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        if desik==-13  then
        gui.SetValue("rbot.antiaim.base.rotation",-19)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-19  then
        gui.SetValue("rbot.antiaim.base.rotation",-25)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-25  then
        gui.SetValue("rbot.antiaim.base.rotation",-15)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-15   then
        gui.SetValue("rbot.antiaim.base.rotation",-7)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-7   then
        gui.SetValue("rbot.antiaim.base.rotation",-3)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-3   then
        gui.SetValue("rbot.antiaim.base.rotation",-5)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-5  then
        gui.SetValue("rbot.antiaim.base.rotation",-9)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))
        elseif desik==-9  then
        gui.SetValue("rbot.antiaim.base.rotation",-16)
        gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-3,3))


    end
end
end
end
callbacks.Register('Draw', lowdelta)
 function kolbayaw1()
 	local slowwalk= gui.GetValue("rbot.accuracy.movement.slowkey")
 	local velsp5 =entities.GetLocalPlayer():GetPropVector("localdata", "m_vecVelocity[0]"):Length()
 	if input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false then 
    if kolbayaw:GetValue()==1 and legitaa:GetValue()==false then
        local angle=gui.GetValue("rbot.antiaim.base.rotation")
        gui.SetValue("rbot.antiaim.base.rotation",55)
        if gui.GetValue("rbot.antiaim.base.rotation")>=55 then
            gui.SetValue("rbot.antiaim.base.rotation", angle+math.random(-4,4))
            gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitter", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<55 and gui.GetValue("rbot.antiaim.base.rotation")>=30 then
            gui.SetValue("rbot.antiaim.base.rotation", angle+math.random(-3,3))
            gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitter", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<13 and gui.GetValue("rbot.antiaim.base.rotation")>=0 then
            gui.SetValue("rbot.antiaim.base.rotation", angle+math.random(-2,2))
            gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitter", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<0 and gui.GetValue("rbot.antiaim.base.rotation")>=-13 then
            gui.SetValue("rbot.antiaim.base.rotation", angle-math.random(-2,2))
            gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitter", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")>-55 and gui.GetValue("rbot.antiaim.base.rotation")<=-30 then
            gui.SetValue("rbot.antiaim.base.rotation", angle-math.random(-3,3))
            gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitter", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<=-55 and gui.GetValue("rbot.antiaim.base.rotation")>-57  then
            gui.SetValue("rbot.antiaim.base.rotation", angle-math.random(-4,4))
            gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitter", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<=-57 then
            gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitter", math.random(-7,7))
            gui.SetValue("rbot.antiaim.base.rotation",math.random(57,58))
        end
        end   
        end 
    end
end
end
end
end
end
   if  input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and  input.IsButtonDown(slowwalk)==false and velsp5>standvelocitythreshold:GetValue() then 
    if kolbayawm:GetValue()==1 and legitaa:GetValue()==false then
        local angle=gui.GetValue("rbot.antiaim.base.rotation")
        gui.SetValue("rbot.antiaim.base.rotation",55)
        if gui.GetValue("rbot.antiaim.base.rotation")>=55 then
            gui.SetValue("rbot.antiaim.base.rotation", angle+math.random(-4,4))
            gui.SetValue("rbot.KOL🌭BAS.yawanglem",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitterm", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<55 and gui.GetValue("rbot.antiaim.base.rotation")>=30 then
            gui.SetValue("rbot.antiaim.base.rotation", angle+math.random(-3,3))
            gui.SetValue("rbot.KOL🌭BAS.yawanglem",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitterm", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<13 and gui.GetValue("rbot.antiaim.base.rotation")>=0 then
            gui.SetValue("rbot.antiaim.base.rotation", angle+math.random(-2,2))
            gui.SetValue("rbot.KOL🌭BAS.yawanglem",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitterm", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<0 and gui.GetValue("rbot.antiaim.base.rotation")>=-13 then
            gui.SetValue("rbot.antiaim.base.rotation", angle-math.random(-2,2))
            gui.SetValue("rbot.KOL🌭BAS.yawanglem",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jittemr", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")>-55 and gui.GetValue("rbot.antiaim.base.rotation")<=-30 then
            gui.SetValue("rbot.antiaim.base.rotation", angle-math.random(-3,3))
            gui.SetValue("rbot.KOL🌭BAS.yawanglem",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitterm", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<=-55 and gui.GetValue("rbot.antiaim.base.rotation")>-57  then
            gui.SetValue("rbot.antiaim.base.rotation", angle-math.random(-4,4))
            gui.SetValue("rbot.KOL🌭BAS.yawanglem",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitterm", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<=-57 then
            gui.SetValue("rbot.KOL🌭BAS.yawanglem",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitterm", math.random(-7,7))
            gui.SetValue("rbot.antiaim.base.rotation",math.random(57,58))
        end
        end   
        end 
    end
end
end
end
end
end
   if  input.IsButtonDown(32)==true and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false then 
    if kolbayawa:GetValue()==1 and legitaa:GetValue()==false then
        local angle=gui.GetValue("rbot.antiaim.base.rotation")
        gui.SetValue("rbot.antiaim.base.rotation",55)
        if gui.GetValue("rbot.antiaim.base.rotation")>=55 then
            gui.SetValue("rbot.antiaim.base.rotation", angle+math.random(-4,4))
            gui.SetValue("rbot.KOL🌭BAS.yawanglea",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jittera", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<55 and gui.GetValue("rbot.antiaim.base.rotation")>=30 then
            gui.SetValue("rbot.antiaim.base.rotation", angle+math.random(-3,3))
            gui.SetValue("rbot.KOL🌭BAS.yawanglea",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jittera", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<13 and gui.GetValue("rbot.antiaim.base.rotation")>=0 then
            gui.SetValue("rbot.antiaim.base.rotation", angle+math.random(-2,2))
            gui.SetValue("rbot.KOL🌭BAS.yawanglea",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jittera", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<0 and gui.GetValue("rbot.antiaim.base.rotation")>=-13 then
            gui.SetValue("rbot.antiaim.base.rotation", angle-math.random(-2,2))
            gui.SetValue("rbot.KOL🌭BAS.yawanglea",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jittera", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")>-55 and gui.GetValue("rbot.antiaim.base.rotation")<=-30 then
            gui.SetValue("rbot.antiaim.base.rotation", angle-math.random(-3,3))
            gui.SetValue("rbot.KOL🌭BAS.yawanglea",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jittera", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<=-55 and gui.GetValue("rbot.antiaim.base.rotation")>-57  then
            gui.SetValue("rbot.antiaim.base.rotation", angle-math.random(-4,4))
            gui.SetValue("rbot.KOL🌭BAS.yawanglea",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jittera", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<=-57 then
            gui.SetValue("rbot.KOL🌭BAS.yawanglea",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jittera", math.random(-7,7))
            gui.SetValue("rbot.antiaim.base.rotation",math.random(57,58))
        end
        end   
        end 
    end
end
end
end
end
end
   if  input.IsButtonDown(32)==false and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==true then 
    if kolbayaws:GetValue()==1 and legitaa:GetValue()==false then
        local angle=gui.GetValue("rbot.antiaim.base.rotation")
        gui.SetValue("rbot.antiaim.base.rotation",55)
        if gui.GetValue("rbot.antiaim.base.rotation")>=55 then
            gui.SetValue("rbot.antiaim.base.rotation", angle+math.random(-4,4))
            gui.SetValue("rbot.KOL🌭BAS.yawangles",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitters", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<55 and gui.GetValue("rbot.antiaim.base.rotation")>=30 then
            gui.SetValue("rbot.antiaim.base.rotation", angle+math.random(-3,3))
            gui.SetValue("rbot.KOL🌭BAS.yawangles",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitters", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<13 and gui.GetValue("rbot.antiaim.base.rotation")>=0 then
            gui.SetValue("rbot.antiaim.base.rotation", angle+math.random(-2,2))
            gui.SetValue("rbot.KOL🌭BAS.yawangles",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitters", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<0 and gui.GetValue("rbot.antiaim.base.rotation")>=-13 then
            gui.SetValue("rbot.antiaim.base.rotation", angle-math.random(-2,2))
            gui.SetValue("rbot.KOL🌭BAS.yawangles",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitters", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")>-55 and gui.GetValue("rbot.antiaim.base.rotation")<=-30 then
            gui.SetValue("rbot.antiaim.base.rotation", angle-math.random(-3,3))
            gui.SetValue("rbot.KOL🌭BAS.yawangles",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitters", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<=-55 and gui.GetValue("rbot.antiaim.base.rotation")>-57  then
            gui.SetValue("rbot.antiaim.base.rotation", angle-math.random(-4,4))
            gui.SetValue("rbot.KOL🌭BAS.yawangles",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitters", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<=-57 then
            gui.SetValue("rbot.KOL🌭BAS.yawangles",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitters", math.random(-7,7))
            gui.SetValue("rbot.antiaim.base.rotation",math.random(57,58))
        end
        end   
        end 
    end
end
end
end
end
end
end




            
        callbacks.Register('Draw', kolbayaw1)

 function kolbayaw2()
 	local slowwalk= gui.GetValue("rbot.accuracy.movement.slowkey")
 	local velsp6 =entities.GetLocalPlayer():GetPropVector("localdata", "m_vecVelocity[0]"):Length()
 	if input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false then
    if kolbayaw:GetValue()==2 and legitaa:GetValue()==false then
        local angle2=gui.GetValue("rbot.antiaim.base.rotation")
        gui.SetValue("rbot.antiaim.base.rotation",55)
        if gui.GetValue("rbot.antiaim.base.rotation")>=55 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-1,1))
            gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitter", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<55 and gui.GetValue("rbot.antiaim.base.rotation")>=30 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-2,2))
            gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitter", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<13 and gui.GetValue("rbot.antiaim.base.rotation")>=0 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-1,1))
            gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitter", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<0 and gui.GetValue("rbot.antiaim.base.rotation")>=-13 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-1,1))
            gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitter", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")>-55 and gui.GetValue("rbot.antiaim.base.rotation")<=-30 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-2,2))
            gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitter", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<=-55 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-1,1))
            gui.SetValue("rbot.KOL🌭BAS.yawangle",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitter", math.random(-7,7))
        end
        end 
    end
end
end
end
end
end
    if input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and velsp6>standvelocitythreshold:GetValue() then
    if kolbayawm:GetValue()==2 and legitaa:GetValue()==false then
        local angle2=gui.GetValue("rbot.antiaim.base.rotation")
        gui.SetValue("rbot.antiaim.base.rotation",55)
        if gui.GetValue("rbot.antiaim.base.rotation")>=55 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-1,1))
            gui.SetValue("rbot.KOL🌭BAS.yawanglem",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitterm", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<55 and gui.GetValue("rbot.antiaim.base.rotation")>=30 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-2,2))
            gui.SetValue("rbot.KOL🌭BAS.yawanglem",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitterm", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<13 and gui.GetValue("rbot.antiaim.base.rotation")>=0 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-1,1))
            gui.SetValue("rbot.KOL🌭BAS.yawanglem",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitterm", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<0 and gui.GetValue("rbot.antiaim.base.rotation")>=-13 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-1,1))
            gui.SetValue("rbot.KOL🌭BAS.yawanglem",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitterm", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")>-55 and gui.GetValue("rbot.antiaim.base.rotation")<=-30 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-2,2))
            gui.SetValue("rbot.KOL🌭BAS.yawanglem",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitterm", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<=-55 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-1,1))
            gui.SetValue("rbot.KOL🌭BAS.yawanglem",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitterm", math.random(-7,7))
        end
        end 
    end
end
end
end
end
end
   if input.IsButtonDown(32)==true and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false then
    if kolbayawa:GetValue()==2 and legitaa:GetValue()==false then
        local angle2=gui.GetValue("rbot.antiaim.base.rotation")
        gui.SetValue("rbot.antiaim.base.rotation",55)
        if gui.GetValue("rbot.antiaim.base.rotation")>=55 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-1,1))
            gui.SetValue("rbot.KOL🌭BAS.yawanglea",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jittera", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<55 and gui.GetValue("rbot.antiaim.base.rotation")>=30 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-2,2))
            gui.SetValue("rbot.KOL🌭BAS.yawanglea",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jittera", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<13 and gui.GetValue("rbot.antiaim.base.rotation")>=0 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-1,1))
            gui.SetValue("rbot.KOL🌭BAS.yawangla",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jittera", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<0 and gui.GetValue("rbot.antiaim.base.rotation")>=-13 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-1,1))
            gui.SetValue("rbot.KOL🌭BAS.yawanglea",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jittera", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")>-55 and gui.GetValue("rbot.antiaim.base.rotation")<=-30 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-2,2))
            gui.SetValue("rbot.KOL🌭BAS.yawanglea",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jittera", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<=-55 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-1,1))
            gui.SetValue("rbot.KOL🌭BAS.yawanglea",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jittera", math.random(-7,7))
        end
        end 
    end
end
end
end
end
end
if input.IsButtonDown(32)==false and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==true then
    if kolbayaws:GetValue()==2 and legitaa:GetValue()==false then
        local angle2=gui.GetValue("rbot.antiaim.base.rotation")
        gui.SetValue("rbot.antiaim.base.rotation",55)
        if gui.GetValue("rbot.antiaim.base.rotation")>=55 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-1,1))
            gui.SetValue("rbot.KOL🌭BAS.yawangles",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitters", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<55 and gui.GetValue("rbot.antiaim.base.rotation")>=30 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-2,2))
            gui.SetValue("rbot.KOL🌭BAS.yawangles",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitters", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<13 and gui.GetValue("rbot.antiaim.base.rotation")>=0 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-1,1))
            gui.SetValue("rbot.KOL🌭BAS.yawangles",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitters", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<0 and gui.GetValue("rbot.antiaim.base.rotation")>=-13 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-1,1))
            gui.SetValue("rbot.KOL🌭BAS.yawangles",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitters", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")>-55 and gui.GetValue("rbot.antiaim.base.rotation")<=-30 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-2,2))
            gui.SetValue("rbot.KOL🌭BAS.yawangles",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitters", math.random(-7,7))
        if gui.GetValue("rbot.antiaim.base.rotation")<=-55 then
            gui.SetValue("rbot.antiaim.base.rotation", angle2-math.random(-1,1))
            gui.SetValue("rbot.KOL🌭BAS.yawangles",math.random(-5,5))
            gui.SetValue("rbot.KOL🌭BAS.jitters", math.random(-7,7))
        end
        end 
    end
end
end
end
end
end
end
callbacks.Register('Draw', kolbayaw2)
function kolbayaw3()
	local slowwalk= gui.GetValue("rbot.accuracy.movement.slowkey")
	local velsp7 =entities.GetLocalPlayer():GetPropVector("localdata", "m_vecVelocity[0]"):Length()
	if input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false then
    if kolbayaw:GetValue()==3 and legitaa:GetValue()==false then
    if gui.GetValue("rbot.antiaim.base.rotation")>=0 then 
    if globals.TickCount()%32==0 then 
     gui.SetValue("rbot.antiaim.base.rotation",math.random(48,58))
 end
    if globals.TickCount()%64==0 then 
     gui.SetValue("rbot.antiaim.base.rotation",math.random(30,41))
 end
    if globals.TickCount()%96==0 then 
   	 gui.SetValue("rbot.antiaim.base.rotation",math.random(17,27))
 end
    if globals.TickCount()%128==0 then 
    	 gui.SetValue("rbot.antiaim.base.rotation",math.random(15,49)) 
 end
end
    if gui.GetValue("rbot.antiaim.base.rotation")<0 then 
    if globals.TickCount()%32==0 then 
     gui.SetValue("rbot.antiaim.base.rotation",math.random(-58,-48))
 end
    if globals.TickCount()%64==0 then 
     gui.SetValue("rbot.antiaim.base.rotation",math.random(-41,-30))
 end
    if globals.TickCount()%96==0 then 
   	 gui.SetValue("rbot.antiaim.base.rotation",math.random(-27,-17))
 end
    if globals.TickCount()%128==0 then 
    	 gui.SetValue("rbot.antiaim.base.rotation",math.random(-49,-15)) 
 end
end
end
end
    if input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and velsp7>standvelocitythreshold:GetValue() then
    if kolbayawm:GetValue()==3 and legitaa:GetValue()==false then
    if gui.GetValue("rbot.antiaim.base.rotation")>=0 then 
    if globals.TickCount()%32==0 then 
     gui.SetValue("rbot.antiaim.base.rotation",math.random(48,58))
 end
    if globals.TickCount()%64==0 then 
     gui.SetValue("rbot.antiaim.base.rotation",math.random(30,41))
 end
    if globals.TickCount()%96==0 then 
   	 gui.SetValue("rbot.antiaim.base.rotation",math.random(17,27))
 end
    if globals.TickCount()%128==0 then 
    	 gui.SetValue("rbot.antiaim.base.rotation",math.random(15,49)) 
 end
end
    if gui.GetValue("rbot.antiaim.base.rotation")<0 then 
    if globals.TickCount()%32==0 then 
     gui.SetValue("rbot.antiaim.base.rotation",math.random(-58,-48))
 end
    if globals.TickCount()%64==0 then 
     gui.SetValue("rbot.antiaim.base.rotation",math.random(-41,-30))
 end
    if globals.TickCount()%96==0 then 
   	 gui.SetValue("rbot.antiaim.base.rotation",math.random(-27,-17))
 end
    if globals.TickCount()%128==0 then 
    	 gui.SetValue("rbot.antiaim.base.rotation",math.random(-49,-15)) 
 end
end
end
end
    if input.IsButtonDown(32)==true and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false then
    if kolbayawa:GetValue()==3 and legitaa:GetValue()==false then
    if gui.GetValue("rbot.antiaim.base.rotation")>=0 then 
    if globals.TickCount()%32==0 then 
     gui.SetValue("rbot.antiaim.base.rotation",math.random(48,58))
 end
    if globals.TickCount()%64==0 then 
     gui.SetValue("rbot.antiaim.base.rotation",math.random(30,41))
 end
    if globals.TickCount()%96==0 then 
   	 gui.SetValue("rbot.antiaim.base.rotation",math.random(17,27))
 end
    if globals.TickCount()%128==0 then 
    	 gui.SetValue("rbot.antiaim.base.rotation",math.random(15,49)) 
 end
end
    if gui.GetValue("rbot.antiaim.base.rotation")<0 then 
    if globals.TickCount()%32==0 then 
     gui.SetValue("rbot.antiaim.base.rotation",math.random(-58,-48))
 end
    if globals.TickCount()%64==0 then 
     gui.SetValue("rbot.antiaim.base.rotation",math.random(-41,-30))
 end
    if globals.TickCount()%96==0 then 
   	 gui.SetValue("rbot.antiaim.base.rotation",math.random(-27,-17))
 end
    if globals.TickCount()%128==0 then 
    	 gui.SetValue("rbot.antiaim.base.rotation",math.random(-49,-15)) 
 end
end
end
end
    if input.IsButtonDown(32)==false and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==true then
    if kolbayaws:GetValue()==3 and legitaa:GetValue()==false then
    if gui.GetValue("rbot.antiaim.base.rotation")>=0 then 
    if globals.TickCount()%32==0 then 
     gui.SetValue("rbot.antiaim.base.rotation",math.random(48,58))
 end
    if globals.TickCount()%64==0 then 
     gui.SetValue("rbot.antiaim.base.rotation",math.random(30,41))
 end
    if globals.TickCount()%96==0 then 
   	 gui.SetValue("rbot.antiaim.base.rotation",math.random(17,27))
 end
    if globals.TickCount()%128==0 then 
    	 gui.SetValue("rbot.antiaim.base.rotation",math.random(15,49)) 
 end
end
    if gui.GetValue("rbot.antiaim.base.rotation")<0 then 
    if globals.TickCount()%32==0 then 
     gui.SetValue("rbot.antiaim.base.rotation",math.random(-58,-48))
 end
    if globals.TickCount()%64==0 then 
     gui.SetValue("rbot.antiaim.base.rotation",math.random(-41,-30))
 end
    if globals.TickCount()%96==0 then 
   	 gui.SetValue("rbot.antiaim.base.rotation",math.random(-27,-17))
 end
    if globals.TickCount()%128==0 then 
    	 gui.SetValue("rbot.antiaim.base.rotation",math.random(-49,-15)) 
 end
end
end
end
end
callbacks.Register('Draw', kolbayaw3)
function desyncjitter()
	local slowwalk= gui.GetValue("rbot.accuracy.movement.slowkey")
	local velsp8 =entities.GetLocalPlayer():GetPropVector("localdata", "m_vecVelocity[0]"):Length()
    if input.IsButtonPressed(invert_key:GetValue()) then
                   carenr = carenr == 0 and 1 or 0
                   if input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and input.IsButtonDown(slowwalk)==false then
                    if carenr == 0 then
                        gui.SetValue("rbot.antiaim.base.rotation", rotationl:GetValue())
                        gui.SetValue("rbot.antiaim.base.lby", lbyl:GetValue())
                    elseif carenr == 1 then
                        gui.SetValue("rbot.antiaim.base.rotation", -rotationr:GetValue())
                        gui.SetValue("rbot.antiaim.base.lby", lbyr:GetValue())

                    end
                end
                    if input.IsButtonDown(32)==true and input.IsButtonDown(slowwalk)==false then
                    if carenr == 0 then
                    gui.SetValue("rbot.antiaim.base.rotation", rotationla:GetValue())
                    gui.SetValue("rbot.antiaim.base.lby", lbyla:GetValue())
                    elseif carenr == 1 then
                        gui.SetValue("rbot.antiaim.base.rotation", -rotationra:GetValue())
                         gui.SetValue("rbot.antiaim.base.lby", lbyra:GetValue())
                    end
                 end
                 if input.IsButtonDown(32)==false and input.IsButtonDown(slowwalk)==true then
                    if carenr == 0 then
                    gui.SetValue("rbot.antiaim.base.rotation", rotationls:GetValue())
                     gui.SetValue("rbot.antiaim.base.lby", lbyls:GetValue())
                    elseif carenr == 1 then
                        gui.SetValue("rbot.antiaim.base.rotation", -rotationrs:GetValue())
                         gui.SetValue("rbot.antiaim.base.lby", lbyrs:GetValue())
                    end
                 end
                 if  input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and input.IsButtonDown(slowwalk)==false and velsp8>standvelocitythreshold:GetValue() then
                    if carenr == 0 then
                    gui.SetValue("rbot.antiaim.base.rotation", rotationlm:GetValue())
                     gui.SetValue("rbot.antiaim.base.lby", lbylm:GetValue())
                    elseif carenr == 1 then
                        gui.SetValue("rbot.antiaim.base.rotation", -rotationrm:GetValue())
                         gui.SetValue("rbot.antiaim.base.lby", lbyrm:GetValue())

                    end
                 end
end
end
callbacks.Register('Draw', desyncjitter)
function jitterslw( ... )
	if slwrnd:GetValue() then 
		if globals.TickCount()%4== 0 then 
			gui.SetValue("rbot.accuracy.movement.slowspeed",math.random(1,30))
end
end
end
callbacks.Register('Draw', jitterslw)
function aapreset1()
	local slowwalk= gui.GetValue("rbot.accuracy.movement.slowkey")
	local velsp9 =entities.GetLocalPlayer():GetPropVector("localdata", "m_vecVelocity[0]"):Length()
	if legitaa:GetValue()==false then
	if input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and destupes:GetValue()==2 then
       	if globals.TickCount()%2==0 then 
       		gui.SetValue("rbot.antiaim.base.rotation",-rotationr:GetValue())
       	end
       	if globals.TickCount()%4==0 then 
       		gui.SetValue("rbot.antiaim.base.rotation",rotationl:GetValue())
       end
    end
    if input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and destupesm:GetValue()==2 and velsp9>standvelocitythreshold:GetValue() then
       	if globals.TickCount()%2==0 then 
       		gui.SetValue("rbot.antiaim.base.rotation",-rotationrm:GetValue())
       	end
       	if globals.TickCount()%4==0 then 
       		gui.SetValue("rbot.antiaim.base.rotation",rotationlm:GetValue())
       end
    end
       if input.IsButtonDown(32)==true and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and destupesa:GetValue()==2 then
       	if globals.TickCount()%2==0 then 
       		gui.SetValue("rbot.antiaim.base.rotation",-rotationra:GetValue())
       	end
       	if globals.TickCount()%4==0 then 
       		gui.SetValue("rbot.antiaim.base.rotation",rotationla:GetValue())
       end
    end
       if input.IsButtonDown(32)==false and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==true and destupess:GetValue()==2 then
       	if globals.TickCount()%2==0 then 
       		gui.SetValue("rbot.antiaim.base.rotation",-rotationrs:GetValue())
       	end
       	if globals.TickCount()%4==0 then 
       		gui.SetValue("rbot.antiaim.base.rotation",rotationls:GetValue())
       end
    end
end
end
callbacks.Register('Draw', aapreset1)
function clearyaw()
	local slowwalk= gui.GetValue("rbot.accuracy.movement.slowkey")
	local velsp10 =entities.GetLocalPlayer():GetPropVector("localdata", "m_vecVelocity[0]"):Length()
	yawstand=NormalizeYaw(180-defyaw:GetValue())
	yawmove=NormalizeYaw(180-defyawm:GetValue())
	yawair=NormalizeYaw(180-defyawa:GetValue())
	yawslowwalk=NormalizeYaw(180-defyaws:GetValue())
	if rightik == 0 and leftik== 0 and backik == 0 then
	if yawtypesyaw:GetValue()==0 and input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and  gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and legitaa:GetValue()==false then 
           gui.SetValue("rbot.antiaim.base", yawstand)
end
    if yawtypesyaw:GetValue()==0 and input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and  gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and legitaa:GetValue()==false and velsp10>standvelocitythreshold:GetValue() then
           gui.SetValue("rbot.antiaim.base",yawmove)
end
    if yawtypesyaw:GetValue(0)==0 and input.IsButtonDown(32)==true and  gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and legitaa:GetValue()==false  then
           gui.SetValue("rbot.antiaim.base",yawair)
end
    if yawtypesyaw:GetValue(0)==0 and input.IsButtonDown(32)==false and  gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==true and legitaa:GetValue()==false then
           gui.SetValue("rbot.antiaim.base",yawslowwalk)
end
end
end
callbacks.Register('Draw', clearyaw)
  function dtchange1()
  	local fdon1=gui.GetValue("rbot.antiaim.extra.fakecrouchkey")
    if dtchange:GetValue() then
        if input.IsButtonDown(fdon1)==false and gui.GetValue("rbot.accuracy.weapon.pistol.doublefire") == 0 and input.IsButtonDown(fdon1)==false and gui.GetValue("rbot.accuracy.weapon.hpistol.doublefire") == 0 and gui.GetValue("rbot.accuracy.weapon.smg.doublefire") == 0 and gui.GetValue("rbot.accuracy.weapon.rifle.doublefire") == 0 and gui.GetValue("rbot.accuracy.weapon.shotgun.doublefire") == 0 and gui.GetValue("rbot.accuracy.weapon.asniper.doublefire") == 0 and gui.GetValue("rbot.accuracy.weapon.scout.doublefire") == 0 and gui.GetValue("rbot.accuracy.weapon.sniper.doublefire") == 0 and gui.GetValue("rbot.accuracy.weapon.lmg.doublefire") ==0  
        then
           processticks:SetValue(accurate2:GetValue())
         end
        if input.IsButtonDown(fdon1)==true then
           gui.SetValue("rbot.accuracy.weapon.shared.doublefire",false)
           gui.SetValue("rbot.accuracy.weapon.pistol.doublefire",false)
           gui.SetValue("rbot.accuracy.weapon.hpistol.doublefire",false)
           gui.SetValue("rbot.accuracy.weapon.smg.doublefire",false)
           gui.SetValue("rbot.accuracy.weapon.rifle.doublefire",false)
           gui.SetValue("rbot.accuracy.weapon.shotgun.doublefire",false)
           gui.SetValue("rbot.accuracy.weapon.lmg.doublefire",false)
           gui.SetValue("rbot.accuracy.weapon.asniper.doublefire",false)
           gui.SetValue("rbot.accuracy.weapon.lmg.doublefire",false)
           gui.SetValue("rbot.accuracy.weapon.scout.doublefire",false)
           gui.SetValue("rbot.accuracy.weapon.sniper.doublefire",false)
           processticks:SetValue(accurate3:GetValue())  
           end     
        if
           gui.GetValue("rbot.accuracy.weapon.shared.doublefire")>0 or
           gui.GetValue("rbot.accuracy.weapon.pistol.doublefire")>0 or
           gui.GetValue("rbot.accuracy.weapon.hpistol.doublefire")>0 or
           gui.GetValue("rbot.accuracy.weapon.smg.doublefire")>0 or
           gui.GetValue("rbot.accuracy.weapon.rifle.doublefire")>0 or
           gui.GetValue("rbot.accuracy.weapon.shotgun.doublefire")>0 or
           gui.GetValue("rbot.accuracy.weapon.lmg.doublefire")>0 or
           gui.GetValue("rbot.accuracy.weapon.asniper.doublefire")>0 or 
           gui.GetValue("rbot.accuracy.weapon.lmg.doublefire")>0 or 
           gui.GetValue("rbot.accuracy.weapon.scout.doublefire")>0 or 
           gui.GetValue("rbot.accuracy.weapon.sniper.doublefire")>0
           then 
           processticks:SetValue(accurate4:GetValue())
     end
 end
end    
callbacks.Register('Draw', dtchange1)
function  Manuals()
        if input.IsButtonPressed(left_key:GetValue()) and legitaa:GetValue()==false then
            leftik = leftik == 0 and 1 or 0;
            rightik = 0;
            backik = 0;
            if leftik == 0 then
                gui.SetValue("rbot.antiaim.advanced.autodir.targets",1)
            elseif leftik == 1 then
                gui.SetValue("rbot.antiaim.base", 90)
                gui.SetValue("rbot.antiaim.advanced.autodir.targets",0)
                end
                end 
        if input.IsButtonPressed(right_key:GetValue()) and legitaa:GetValue()==false then
            leftik = 0;
            rightik = rightik == 0 and 1 or 0;
            backik = 0;
            if rightik == 0 then
                gui.SetValue("rbot.antiaim.advanced.autodir.targets",1)
            elseif rightik == 1 then
                gui.SetValue("rbot.antiaim.base", -90)
                gui.SetValue("rbot.antiaim.advanced.autodir.targets",0)
            end
        end
    

        if input.IsButtonPressed(back_key:GetValue()) and legitaa:GetValue()==false then
            leftik = 0;
            backik = backik == 0 and 1 or 0;
            rightik = 0;
            if backik == 0 then
               gui.SetValue("rbot.antiaim.advanced.autodir.targets",1)
            elseif backik == 1 then
                gui.SetValue("rbot.antiaim.base", 180)
                gui.SetValue("rbot.antiaim.advanced.autodir.targets",0)
            end
        end
 
end

callbacks.Register('Draw', Manuals)
function NormalizeYaw(yaw)
    while yaw > 180 do yaw = yaw - 360 end
    while yaw < -180 do yaw = yaw + 360 end
    return yaw
end
   function Jitter ()
   	local slowwalk= gui.GetValue("rbot.accuracy.movement.slowkey")
   	local velsp11 = entities.GetLocalPlayer():GetPropVector("localdata", "m_vecVelocity[0]"):Length()
            if rightik == 0 and leftik== 0 and backik == 0 and legitaa:GetValue()==false then
            if yawtypesyaw:GetValue() ==1 and input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and input.IsButtonDown(slowwalk)==false then
            local customyaw = gui.GetValue("rbot.KOL🌭BAS.yawangle");
            local customjitter = gui.GetValue("rbot.KOL🌭BAS.jitter");
            local jitteryaw1 = NormalizeYaw(180 - customyaw + customjitter/2);
            local jitteryaw2 = NormalizeYaw(180 - customyaw - customjitter/2);

            if globals.TickCount() % jitterspeed:GetValue() == 0 then
                gui.SetValue("rbot.antiaim.base", jitteryaw2);
            end
        
            if globals.TickCount() % (jitterspeed:GetValue()*2) == 0 then
                gui.SetValue("rbot.antiaim.base", jitteryaw1);
            end
            end
            if yawtypesyawm:GetValue() ==1 and input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and input.IsButtonDown(slowwalk)==false and velsp11>standvelocitythreshold:GetValue() then
            local customyaw = gui.GetValue("rbot.KOL🌭BAS.yawanglem");
            local customjitter = gui.GetValue("rbot.KOL🌭BAS.jitterm");
            local jitteryaw1 = NormalizeYaw(180 - customyaw + customjitter/2);
            local jitteryaw2 = NormalizeYaw(180 - customyaw - customjitter/2);

            if globals.TickCount() % jitterspeedm:GetValue() == 0 then
                gui.SetValue("rbot.antiaim.base", jitteryaw2);
            end
        
            if globals.TickCount() % (jitterspeedm:GetValue()*2) == 0 then
                gui.SetValue("rbot.antiaim.base", jitteryaw1);
            end
            end
           

            if yawtypesyawa:GetValue() ==1 and input.IsButtonDown(32)==true and input.IsButtonDown(slowwalk)==false  then
            local customyaw = gui.GetValue("rbot.KOL🌭BAS.yawanglea");
            local customjitter = gui.GetValue("rbot.KOL🌭BAS.jittera");
            local jitteryaw1 = NormalizeYaw(180 - customyaw + customjitter/2);
            local jitteryaw2 = NormalizeYaw(180 - customyaw - customjitter/2);

            if globals.TickCount() % jitterspeeda:GetValue() == 0 then
                gui.SetValue("rbot.antiaim.base", jitteryaw2);
            end
        
            if globals.TickCount() % (jitterspeeda:GetValue()*2) == 0 then
                gui.SetValue("rbot.antiaim.base", jitteryaw1);
            end
            end
             if yawtypesyawas:GetValue() ==1 and input.IsButtonDown(32)==false and input.IsButtonDown(slowwalk)==true  then
            local customyaw = gui.GetValue("rbot.KOL🌭BAS.yawangles");
            local customjitter = gui.GetValue("rbot.KOL🌭BAS.jitters");
            local jitteryaw1 = NormalizeYaw(180 - customyaw + customjitter/2);
            local jitteryaw2 = NormalizeYaw(180 - customyaw - customjitter/2);

            if globals.TickCount() % jitterspeeds:GetValue() == 0 then
                gui.SetValue("rbot.antiaim.base", jitteryaw2);
            end
        
            if globals.TickCount() % (jitterspeeds:GetValue()*2) == 0 then
                gui.SetValue("rbot.antiaim.base", jitteryaw1);
            end
            end
            end           
            end 
callbacks.Register('Draw', Jitter)
function rndjitter()
	local slowwalk= gui.GetValue("rbot.accuracy.movement.slowkey")
	local velsp12 =entities.GetLocalPlayer():GetPropVector("localdata", "m_vecVelocity[0]"):Length()
	if rightik == 0 and leftik== 0 and backik == 0 and legitaa:GetValue()==false then
            if yawtypesyaw:GetValue() ==2 and input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and input.IsButtonDown(slowwalk)==false then
            local customyaw = gui.GetValue("rbot.KOL🌭BAS.yawangle");
            local customjitter = gui.GetValue("rbot.KOL🌭BAS.jitter");
            local jitteryawrnd1 = NormalizeYaw(180 - customyaw + (math.random(0, customjitter))/2);
            local jitteryawrnd2 = NormalizeYaw(180 - customyaw - (math.random(0,customjitter))/2);

            if globals.TickCount() % jitterspeed:GetValue() == 0 then
                gui.SetValue("rbot.antiaim.base", jitteryawrnd2);
            end
        
            if globals.TickCount() % (jitterspeed:GetValue()*2) == 0 then
                gui.SetValue("rbot.antiaim.base", jitteryawrnd1);
            end
            end
end
    if rightik == 0 and leftik== 0 and backik == 0  and legitaa:GetValue()==false then
            if yawtypesyawm:GetValue() ==2 and input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and input.IsButtonDown(slowwalk)==false and velsp12>standvelocitythreshold:GetValue() then
            local customyaw = gui.GetValue("rbot.KOL🌭BAS.yawanglem");
            local customjitter = gui.GetValue("rbot.KOL🌭BAS.jitterm");
            local jitteryawrnd1 = NormalizeYaw(180 - customyaw + (math.random(0, customjitter))/2);
            local jitteryawrnd2 = NormalizeYaw(180 - customyaw - (math.random(0,customjitter))/2);

            if globals.TickCount() % jitterspeedm:GetValue() == 0 then
                gui.SetValue("rbot.antiaim.base", jitteryawrnd2);
            end
        
            if globals.TickCount() % (jitterspeedm:GetValue()*2) == 0 then
                gui.SetValue("rbot.antiaim.base", jitteryawrnd1);
            end
            end
end
     if rightik == 0 and leftik== 0 and backik == 0  and legitaa:GetValue()==false then
            if yawtypesyawa:GetValue() ==2  and input.IsButtonDown(32)==true and input.IsButtonDown(slowwalk)==false  then
            local customyaw = gui.GetValue("rbot.KOL🌭BAS.yawanglea");
            local customjitter = gui.GetValue("rbot.KOL🌭BAS.jittera");
            local jitteryawrnd1 = NormalizeYaw(180 - customyaw + (math.random(0, customjitter))/2);
            local jitteryawrnd2 = NormalizeYaw(180 - customyaw - (math.random(0,customjitter))/2);

            if globals.TickCount() % jitterspeeda:GetValue() == 0 then
                gui.SetValue("rbot.antiaim.base", jitteryawrnd2);
            end
        
            if globals.TickCount() % (jitterspeeda:GetValue()*2) == 0 then
                gui.SetValue("rbot.antiaim.base", jitteryawrnd1);
            end
            end
end
     if rightik == 0 and leftik== 0 and backik == 0  and legitaa:GetValue()==false then
            if yawtypesyawas:GetValue() ==2  and input.IsButtonDown(32)==false and input.IsButtonDown(slowwalk)==true then
            local customyaw = gui.GetValue("rbot.KOL🌭BAS.yawangles");
            local customjitter = gui.GetValue("rbot.KOL🌭BAS.jitters");
            local jitteryawrnd1 = NormalizeYaw(180 - customyaw + (math.random(0, customjitter))/2);
            local jitteryawrnd2 = NormalizeYaw(180 - customyaw - (math.random(0,customjitter))/2);

            if globals.TickCount() % jitterspeeds:GetValue() == 0 then
                gui.SetValue("rbot.antiaim.base", jitteryawrnd2);
            end
        
            if globals.TickCount() % (jitterspeeds:GetValue()*2) == 0 then
                gui.SetValue("rbot.antiaim.base", jitteryawrnd1);
            end
            end
end
end
callbacks.Register('Draw', rndjitter)
function forcesros()
	if forcecrosshaircheckbox:GetValue() and gui.GetValue("esp.other.crosshair")==false then 
 client.SetConVar("weapon_debug_spread_show", 3, 1);
end
end
callbacks.Register('Draw', forcesros)	
function rotationjitter()
	local slowwalk= gui.GetValue("rbot.accuracy.movement.slowkey")
	local velsp13 =entities.GetLocalPlayer():GetPropVector("localdata", "m_vecVelocity[0]"):Length()
	local legityaw2=NormalizeYaw(180-legityaw:GetValue());
	if rightik==0 and backik==0 and leftik==0 and legitaa:GetValue()==false then
    if yawtypesyaw:GetValue() ==3 and input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and input.IsButtonDown(slowwalk)==false then
      customyaw = gui.GetValue("rbot.KOL🌭BAS.defya");
      customjitter = gui.GetValue("rbot.KOL🌭BAS.jitter");
      	if globals.TickCount()%jitterspeed:GetValue()==0 then 
      	 if  math.abs(gui.GetValue("rbot.KOL🌭BAS.yaw33"))~=customjitter  then
      	gui.SetValue("rbot.KOL🌭BAS.yaw33",gui.GetValue("rbot.KOL🌭BAS.yaw33")-1)
      	dev = NormalizeYaw(180-gui.GetValue("rbot.KOL🌭BAS.yaw33")-customyaw)
        gui.SetValue("rbot.antiaim.base",dev)
      end
  end
      if  math.abs(gui.GetValue("rbot.KOL🌭BAS.yaw33"))>=customjitter then
      	gui.SetValue("rbot.antiaim.base",180-customyaw)
        gui.SetValue("rbot.KOL🌭BAS.yaw33",0)
end
end
        if yawtypesyawm:GetValue() ==3 and input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and input.IsButtonDown(slowwalk)==false and velsp13>standvelocitythreshold:GetValue() then
     local customyaw1 = gui.GetValue("rbot.KOL🌭BAS.defyam");
     local customjitter1 = gui.GetValue("rbot.KOL🌭BAS.jitterm");
      	if globals.TickCount()%jitterspeedm:GetValue()==0 then 
      	 if  math.abs(gui.GetValue("rbot.KOL🌭BAS.yaw34"))~=customjitter1 then
      	gui.SetValue("rbot.KOL🌭BAS.yaw34",gui.GetValue("rbot.KOL🌭BAS.yaw34")-1)
      	dev = NormalizeYaw(180-gui.GetValue("rbot.KOL🌭BAS.yaw34")-customyaw1)
        gui.SetValue("rbot.antiaim.base",dev)
      end
  end
      if  math.abs(gui.GetValue("rbot.KOL🌭BAS.yaw34"))>=customjitter1 then
      	gui.SetValue("rbot.antiaim.base",180-customyaw1)
        gui.SetValue("rbot.KOL🌭BAS.yaw34",0)
      end
end
         if yawtypesyawa:GetValue() ==3 and input.IsButtonDown(32)==true and input.IsButtonDown(slowwalk)==false  then
     local customyaw2 = gui.GetValue("rbot.KOL🌭BAS.defyaa");
     local customjitter2 = gui.GetValue("rbot.KOL🌭BAS.jittera");
      	if globals.TickCount()%jitterspeeda:GetValue()==0 then 
      	 if  math.abs(gui.GetValue("rbot.KOL🌭BAS.yaw35"))~=customjitter2 then
      	gui.SetValue("rbot.KOL🌭BAS.yaw35",gui.GetValue("rbot.KOL🌭BAS.yaw35")-1)
      	dev = NormalizeYaw(180-gui.GetValue("rbot.KOL🌭BAS.yaw35")-customyaw2)
        gui.SetValue("rbot.antiaim.base",dev)
      end
  end
      if  math.abs(gui.GetValue("rbot.KOL🌭BAS.yaw35"))>=customjitter2 then
      	gui.SetValue("rbot.antiaim.base",180-customyaw2)
        gui.SetValue("rbot.KOL🌭BAS.yaw35",0)
      end
end
       if yawtypesyawas:GetValue() ==3 and input.IsButtonDown(32)==false and input.IsButtonDown(slowwalk)==true  then
     local customyaw3 = gui.GetValue("rbot.KOL🌭BAS.defyas");
     local customjitter3 = gui.GetValue("rbot.KOL🌭BAS.jitters");
      	if globals.TickCount()%jitterspeeds:GetValue()==0 then 
      	 if  math.abs(gui.GetValue("rbot.KOL🌭BAS.yaw36"))~=customjitter3 then
      	gui.SetValue("rbot.KOL🌭BAS.yaw36",gui.GetValue("rbot.KOL🌭BAS.yaw36")-1)
      	dev = NormalizeYaw(180-gui.GetValue("rbot.KOL🌭BAS.yaw36")-customyaw3)
        gui.SetValue("rbot.antiaim.base",dev)
      end
  end
      if  math.abs(gui.GetValue("rbot.KOL🌭BAS.yaw36"))>=customjitter3 then
      	gui.SetValue("rbot.antiaim.base",180-customyaw3)
        gui.SetValue("rbot.KOL🌭BAS.yaw36",0)
      end
end
end
end
callbacks.Register('Draw', rotationjitter)
   function IsDtEnable()
    local lp=entities.GetLocalPlayer()
    if lp~=0 and lp:IsAlive() then
        local AwpDtEnable=gui.GetValue("rbot.accuracy.weapon.sniper.doublefire")
        local Ssg08DtEnable=gui.GetValue("rbot.accuracy.weapon.scout.doublefire")
        local PistolDtEnable=gui.GetValue("rbot.accuracy.weapon.pistol.doublefire")
        local AutoDtEnable=gui.GetValue("rbot.accuracy.weapon.asniper.doublefire")
        local HeavypistolDtEnable=gui.GetValue("rbot.accuracy.weapon.hpistol.doublefire")
        local SmgDtEnable=gui.GetValue("rbot.accuracy.weapon.smg.doublefire")
        local RifleDtEnable=gui.GetValue("rbot.accuracy.weapon.rifle.doublefire")
        local ShotgunDtEnable=gui.GetValue("rbot.accuracy.weapon.shotgun.doublefire")
        local Lightmgenable=gui.GetValue("rbot.accuracy.weapon.lmg.doublefire")
        local lpaw=lp:GetWeaponID()
        wclass=GetActiveGun()
        if wclass=="pistol" and (PistolDtEnable==1 or PistolDtEnable==2)  then
            dtguion=true
        elseif wclass=="hpistol" and (HeavypistolDtEnable==1 or HeavypistolDtEnable==2) then
            dtguion=true
        elseif wclass=="smg" and (SmgDtEnable==1 or SmgDtEnable==2) then
            dtguion=true
        elseif wclass=="sniper" and (AwpDtEnable==1 or AwpDtEnable==2) then
            dtguion=true
        elseif wclass=="scout" and (Ssg08DtEnable==1 or Ssg08DtEnable==2) then
            dtguion=true
        elseif wclass=="rifle" and (RifleDtEnable==1 or RifleDtEnable==2) then
            dtguion=true
        elseif wclass=="shotgun" and (ShotgunDtEnable==1 or ShotgunDtEnable==2) then
            dtguion=true
        elseif wclass=="asniper" and (AutoDtEnable==1 or AutoDtEnable==2) then
            dtguion=true
        elseif wclass=="lmg" and (Lightmgenable==1 or Lightmgenable==2) then
            dtguion=true
        else
            dtguion=false
        end
        return(dtguion)
    end
end
    --Render GradientRect
function GradientRect(x,y,hight,wight,vert,r,g,b,a)
    highty=hight
    hight=a/hight
    xx=x
    if vert==false then
        if hight > 0 then
            for i=a, 0, -hight do
                draw.Color(r,g,b,i)
                draw.FilledRect(x,y,x+2,wight)
                x=x+1
            end
        elseif hight < 0 then
            for i=0, a, -hight do
                draw.Color(r,g,b,i)
                draw.FilledRect(x,y,x+2,wight)
                x=x+1
            end
        end
    elseif vert==true then
        if wight > 0 then
            for i=a, 0, -wight do
                draw.Color(r,g,b,i)
                draw.FilledRect(xx,y,highty,y+2)
                y=y+1
            end
        elseif wight < 0 then
            for i=0, a, -wight do
                draw.Color(r,g,b,i)
                draw.FilledRect(xx,y,highty,y+2)
                y=y+1
            end
        end
    end
end
    function GetActiveGun()
        local lp=entities.GetLocalPlayer()
        local lpaw=lp:GetWeaponID()
        if lpaw==2 or lpaw==3 or lpaw==4 or lpaw==30 or lpaw==32 or lpaw==36 or lpaw==61 or lpaw==63 then
            wclass="pistol"
        elseif lpaw==9 then
            wclass="sniper"
        elseif lpaw==40 then
            wclass="scout"
        elseif lpaw==1 then
            wclass="hpistol"
        elseif lpaw==17 or lpaw== 19 or lpaw== 23 or lpaw== 24 or lpaw== 26 or lpaw== 33 or lpaw== 34 then
            wclass="smg"
        elseif lpaw==7 or lpaw==8 or lpaw== 10 or lpaw== 13 or lpaw== 16 or lpaw== 39 or lpaw== 61 then
            wclass="rifle"
        elseif lpaw== 25 or lpaw== 27 or lpaw== 29 or lpaw== 35 then
            wclass="shotgun"
        elseif lpaw == 38 or lpaw== 11 then
            wclass="asniper"
        elseif lpaw == 28 or lpaw== 14 then
            wclass="lmg"
        else
            wclass="other"
        end
        return wclass
    end
--function Indicators
function Indicator31s()
    if EnableIndicators:GetValue() and entities:GetLocalPlayer()~=nil then
    local delta = math.abs(gui.GetValue("rbot.antiaim.base.rotation"))
    local fdkey=gui.GetValue("rbot.antiaim.extra.fakecrouchkey")
    local hsenable=gui.GetValue("rbot.antiaim.condition.shiftonshot")
    local WightScreen,HightScreen=draw.GetScreenSize()
    local VelocityX = entities.GetLocalPlayer():GetPropFloat( "localdata", "m_vecVelocity[0]" )
    local VelocityY = entities.GetLocalPlayer():GetPropFloat( "localdata", "m_vecVelocity[1]" )
    local LocalPlayerVelocity=math.sqrt(VelocityX^2 + VelocityY^2)
    if kolbayaw:GetValue()>0 or kolbayawm:GetValue()>0 or kolbayawa:GetValue()>0 or kolbayaws:GetValue()>0
     then
     	draw.Color(255,0,0,255)
        draw.Text(WightScreen/2-36,HightScreen/2+29,"Dopamine yaw")
        draw.TextShadow(WightScreen/2-36,HightScreen/2+29,"Dopamine yaw")
    else
    	draw.Color(168, 216, 247,255)
        draw.Text(WightScreen/2-21,HightScreen/2+29,"divi")
        draw.TextShadow(WightScreen/2-21,HightScreen/2+29,"divi")
        draw.Color(255, 255, 255,255)
        draw.Text(WightScreen/2+1,HightScreen/2+29,"nity")
        draw.TextShadow(WightScreen/2+1,HightScreen/2+29,"nity")
    end
    local dtguion=IsDtEnable()
    if fdkey~=0 then
        if dtguion and hsenable==false and input.IsButtonDown(fdkey)==false then
            draw.Color(255,255,255,255)
            dta=12
            dtx=0
            draw.Text(WightScreen/2-30,HightScreen/2+53,"doubletap")
            draw.TextShadow(WightScreen/2-30,HightScreen/2+53,"doubletap")
        elseif dtguion and hsenable==true and input.IsButtonDown(fdkey)==false then
            draw.Color(255, 119, 0,255)
            dtx=20
            dta=12
            draw.Text(WightScreen/2-52,HightScreen/2+53,"doubletap (slow)")
            draw.TextShadow(WightScreen/2-52,HightScreen/2+53,"doubletap (slow)")
        elseif dtguion and input.IsButtonDown(fdkey) then
            draw.Color(255,0,00,255)
            dta=12
            dtx=55
            draw.Text(WightScreen/2-6.1,HightScreen/2+53,"DESEBELD(fakeduck)")
        else
            dta=0
            dtx=0
        end
    end
    if fdkey==0 then
        if dtguion and hsenable==false then
            draw.Color(255,255,255,255)
            dta=12
            dtx=0
            draw.Text(WightScreen/2-30,HightScreen/2+53,"doubletap")
            draw.TextShadow(WightScreen/2-30,HightScreen/2+53,"doubletap")
        elseif dtguion and hsenable==true then
            draw.Color(255, 119, 0,255)
            dtx=20
            dta=12
            draw.Text(WightScreen/2-52,HightScreen/2+53,"doubletap (slow)")
            draw.TextShadow(WightScreen/2-52,HightScreen/2+53,"doubletap (slow)")
        end
         
    end
    if fdkey~=0 and input.IsButtonDown(fdkey)==true and dtguion==false then
        draw.Color(65,180,80,255)
        draw.Text(WightScreen/2-25,HightScreen/2+53,"fakeduck")
        draw.TextShadow(WightScreen/2-25,HightScreen/2+53,"fakeduck")
        dta=12
    end
    if hsenable then
        draw.Color(255,255,255,255)
        draw.Text(WightScreen/2-27,HightScreen/2+53+dta,"hideshots")
        draw.TextShadow(WightScreen/2-27,HightScreen/2+53+dta,"hideshots")
        hsa=10
    else
        hsa=0
    end
   
    if delta<10 then 
    draw.Color(255,255,255,255)
    draw.Text(WightScreen/2-3,HightScreen/2+41,delta.."°")
end	
    if delta>9 then 
    draw.Color(255,255,255,255)
    draw.Text(WightScreen/2-7,HightScreen/2+41,delta.."°")
 end
--soldier left us
--──█████▄
--──██──██───▄████▄
--──██──██─────██─────█████▄
--──████▀──────██─────██──██
--──█████▄─────██─────██──██
--──██──██─────██─────████▀
--─▄██──██▄──▄████▄───██
--────────────────────██
--─────────────────▄██████▄
end
end
callbacks.Register('Draw', Indicator31s);
function mande1s()
	local base=gui.GetValue("rbot.antiaim.base.rotation")
	if des:GetValue() and entities.GetLocalPlayer()~=nil and entities.GetLocalPlayer():IsAlive() then 
		if base>=0 then 
			draw.Color(ondes:GetValue())
		draw.FilledRect(ScrW/2-40,ScrH/2+11,ScrW/2-35,ScrH/2-11)
		    draw.Color(offdes:GetValue())
		draw.FilledRect(ScrW/2+40,ScrH/2+11,ScrW/2+35,ScrH/2-11)
		elseif base<0 then
			draw.Color(ondes:GetValue())
		draw.FilledRect(ScrW/2+40,ScrH/2+11,ScrW/2+35,ScrH/2-11)
		    draw.Color(offdes:GetValue())
		draw.FilledRect(ScrW/2-40,ScrH/2+11,ScrW/2-35,ScrH/2-11)
end
end
        if des1:GetValue() and entities.GetLocalPlayer()~=nil and entities.GetLocalPlayer():IsAlive() then 
		if base>=0 then 
			draw.Color(ondes:GetValue())
		draw.Line(ScrW/2-35,ScrH/2+8,ScrW/2-40,ScrH/2)
		draw.Line(ScrW/2-40,ScrH/2,ScrW/2-35,ScrH/2-8)
		    draw.Color(offdes:GetValue())
		draw.Line(ScrW/2+35,ScrH/2+8,ScrW/2+40,ScrH/2)
		draw.Line(ScrW/2+40,ScrH/2,ScrW/2+35,ScrH/2-8)
		elseif base<0 then
			draw.Color(ondes:GetValue())
		draw.Line(ScrW/2+35,ScrH/2+8,ScrW/2+40,ScrH/2)
		draw.Line(ScrW/2+40,ScrH/2,ScrW/2+35,ScrH/2-8)
		    draw.Color(offdes:GetValue())
		draw.Line(ScrW/2-35,ScrH/2+8,ScrW/2-40,ScrH/2)
		draw.Line(ScrW/2-40,ScrH/2,ScrW/2-35,ScrH/2-8)
end
end
   if fakeind:GetValue() and entities.GetLocalPlayer()~=nil and entities.GetLocalPlayer():IsAlive() then 
   	draw.SetFont(fontdmg)
		if base>=0 then 
			draw.Color(40,230,0,255)
		    draw.Text(28,640,"LEFT")
			draw.TextShadow(27,639,"LEFT")
		elseif base<0 then
			draw.Color(40,230,0,255)
			draw.Text(28,640,"RIGHT")
			draw.TextShadow(27,639,"RIGHT")
	
end
end
end
callbacks.Register('Draw', mande1s) 


function scop31e()
	-- body
	if scope:GetValue() then
	  if lp_weapon_id(WEAPONID_AUTOSNIPERS ) then
	  	gui.SetValue("rbot.aim.automation.scope",0)
	  else 
	  	gui.SetValue("rbot.aim.automation.scope",3)
end
end
end
callbacks.Register('Draw', scop31e) 

function desyncNormal3()
	local slowwalk= gui.GetValue("rbot.accuracy.movement.slowkey")
	local velsp14 =entities.GetLocalPlayer():GetPropVector("localdata", "m_vecVelocity[0]"):Length()
	if desnormalizer:GetValue() then
		if input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false then 
		if destupes:GetValue()==0  and gui.GetValue("rbot.KOL🌭BAS.lowdelt")==false and gui.GetValue("rbot.KOL🌭BAS.sway")==false and kolbayaw:GetValue()~=1 and kolbayaw:GetValue()~=2 and kolbayaws:GetValue()~=3 and gui.GetValue("rbot.antiaim.base.rotation")>=0 and gui.GetValue("rbot.antiaim.base.rotation")~=rotationl:GetValue()  then
			gui.SetValue("rbot.antiaim.base.rotation",rotationl:GetValue())
		end
	    if destupes:GetValue()==0  and gui.GetValue("rbot.KOL🌭BAS.lowdelt")==false and gui.GetValue("rbot.KOL🌭BAS.sway")==false and kolbayaw:GetValue()~=1 and kolbayaw:GetValue()~=2 and kolbayaw:GetValue()~=3 and  gui.GetValue("rbot.antiaim.base.rotation")<0 and gui.GetValue("rbot.antiaim.base.rotation")~=-rotationr:GetValue()   then
			gui.SetValue("rbot.antiaim.base.rotation",-rotationr:GetValue()) 
		end
end        
        if  input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and velsp14>standvelocitythreshold:GetValue() then 
		if destupesm:GetValue()==0 and gui.GetValue("rbot.KOL🌭BAS.lowdeltm")==false and gui.GetValue("rbot.KOL🌭BAS.swaym")==false and kolbayawm:GetValue()~=1 and kolbayawm:GetValue()~=2 and kolbayawm:GetValue()~=3 and gui.GetValue("rbot.antiaim.base.rotation")>=0 and gui.GetValue("rbot.antiaim.base.rotation")~=rotationlm:GetValue()   then
			gui.SetValue("rbot.antiaim.base.rotation",rotationlm:GetValue())
			
		end
	    if destupesm:GetValue()==0   and gui.GetValue("rbot.KOL🌭BAS.lowdeltm")==false and gui.GetValue("rbot.KOL🌭BAS.swaym")==false and kolbayawm:GetValue()~=1 and kolbayawm:GetValue()~=2 and kolbayawm:GetValue()~=3 and gui.GetValue("rbot.antiaim.base.rotation")<0 and gui.GetValue("rbot.antiaim.base.rotation")~=-rotationrm:GetValue()   then
			gui.SetValue("rbot.antiaim.base.rotation",-rotationrm:GetValue())
			
		end
end
        if  input.IsButtonDown(32)==true and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false then 
		if destupesa:GetValue()==0  and gui.GetValue("rbot.KOL🌭BAS.lowdeltaa")==false and gui.GetValue("rbot.KOL🌭BAS.swaya")==false and kolbayawa:GetValue()~=1 and kolbayawa:GetValue()~=2 and kolbayawa:GetValue()~=3 and gui.GetValue("rbot.antiaim.base.rotation")>=0 and gui.GetValue("rbot.antiaim.base.lby")~=lbyla:GetValue()  then
			gui.SetValue("rbot.antiaim.base.rotation",rotationla:GetValue())
			
		end
	    if destupesa:GetValue()==0  and gui.GetValue("rbot.KOL🌭BAS.lowdeltaa")==false and gui.GetValue("rbot.KOL🌭BAS.swaya")==false and kolbayawa:GetValue()~=1 and kolbayawa:GetValue()~=2 and kolbayawa:GetValue()~=3 and gui.GetValue("rbot.antiaim.base.rotation")<0 and  gui.GetValue("rbot.antiaim.base.rotation")~=rotationra:GetValue() then
			gui.SetValue("rbot.antiaim.base.rotation",-rotationra:GetValue())
			
		end
end
        if  input.IsButtonDown(32)==false and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==true then 
		if destupess:GetValue()==0  and gui.GetValue("rbot.KOL🌭BAS.lowdelts")==false and gui.GetValue("rbot.KOL🌭BAS.sways")==false and kolbayaws:GetValue()~=1 and kolbayaws:GetValue()~=2 and kolbayaws:GetValue()~=3 and gui.GetValue("rbot.antiaim.base.rotation")>=0 and gui.GetValue("rbot.antiaim.base.rotation")~=rotationls:GetValue() then
			gui.SetValue("rbot.antiaim.base.rotation",rotationls:GetValue())
			

		end
	    if destupess:GetValue()==0  and gui.GetValue("rbot.KOL🌭BAS.lowdelts")==false and gui.GetValue("rbot.KOL🌭BAS.sways")==false and kolbayaws:GetValue()~=1 and kolbayaws:GetValue()~=2 and kolbayaws:GetValue()~=3 and gui.GetValue("rbot.antiaim.base.rotation")<0 and gui.GetValue("rbot.antiaim.base.rotation")~=-rotationrs:GetValue()  then
			gui.SetValue("rbot.antiaim.base.rotation",-rotationrs:GetValue())
			

		end
end
end
end
callbacks.Register('Draw', desyncNormal3) 
function lbyNormal3()
	local slowwalk= gui.GetValue("rbot.accuracy.movement.slowkey")
	local velsp15 =entities.GetLocalPlayer():GetPropVector("localdata", "m_vecVelocity[0]"):Length()
	if input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false then 
		if gui.GetValue("rbot.antiaim.base.rotation")>=0 and  gui.GetValue("rbot.antiaim.base.lby")~=lbyl:GetValue() then
           gui.SetValue("rbot.antiaim.base.lby",lbyl:GetValue())
       end
       if gui.GetValue("rbot.antiaim.base.rotation")<0 and  gui.GetValue("rbot.antiaim.base.lby")~=lbyr:GetValue() then
       	gui.SetValue("rbot.antiaim.base.lby",lbyr:GetValue())
       end
   end
    if  input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and velsp15>standvelocitythreshold:GetValue() then
    if gui.GetValue("rbot.antiaim.base.rotation")>=0 and gui.GetValue("rbot.antiaim.base.lby")~=lbylm:GetValue() then 
    	gui.SetValue("rbot.antiaim.base.lby",lbylm:GetValue())
    end
    if gui.GetValue("rbot.antiaim.base.rotation")<0 and gui.GetValue("rbot.antiaim.base.lby")~=lbyrm:GetValue() then 
       gui.SetValue("rbot.antiaim.base.lby",lbyrm:GetValue())
    end
end
    if  input.IsButtonDown(32)==true and  gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false then 
    if gui.GetValue("rbot.antiaim.base.rotation")>=0 and gui.GetValue("rbot.antiaim.base.lby")~=lbyla:GetValue() then 
    	gui.SetValue("rbot.antiaim.base.lby",lbyla:GetValue())
    end
     if gui.GetValue("rbot.antiaim.base.rotation")<0 and gui.GetValue("rbot.antiaim.base.lby")~=lbyra:GetValue() then 
    	gui.SetValue("rbot.antiaim.base.lby",lbyra:GetValue())
    end
end
     if  input.IsButtonDown(32)==false and gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==true then 
     	if gui.GetValue("rbot.antiaim.base.rotation")>=0 and gui.GetValue("rbot.antiaim.base.lby")~=lbyls:GetValue() then 
    	gui.SetValue("rbot.antiaim.base.lby",lbyls:GetValue())
    end
     if gui.GetValue("rbot.antiaim.base.rotation")<0 and gui.GetValue("rbot.antiaim.base.lby")~=lbyrs:GetValue() then 
    	gui.SetValue("rbot.antiaim.base.lby",lbyrs:GetValue())
    end
end
end
callbacks.Register('Draw', lbyNormal3) 
function aspectrati3o()
	client.SetConVar("r_aspectratio",aspectratio:GetValue())
end
callbacks.Register('Draw',aspectrati3o)
function freestand()
	local slowwalk= gui.GetValue("rbot.accuracy.movement.slowkey")
	local velsp16 =entities.GetLocalPlayer():GetPropVector("localdata", "m_vecVelocity[0]"):Length()
	if not freestanding:GetValue() then 
		freestandingac:SetInvisible(true)
		freestandingst:SetInvisible(true)
	else
		freestandingac:SetInvisible(false)
		freestandingst:SetInvisible(false)
	end
    if  freestandingst:GetValue()==0 and freestanding:GetValue()  then 
		freestandingac:SetInvisible(false)
	else
		freestandingac:SetInvisible(true)
	end
	if freestandingac:GetValue()~=3 then 
		freestandspeed:SetInvisible(true)		
	else
		freestandspeed:SetInvisible(false)
	end
	if freestandingst:GetValue()==1 or freestandingst:GetValue()==2 then 
		freestandswitch:SetInvisible(false)
	else
		freestandswitch:SetInvisible(true)
	end
	--speed
	if freestanding:GetValue() then
    if freestandingac:GetValue()==0 then speed=3 end
	if freestandingac:GetValue()==1 then speed=8 end
	if freestandingac:GetValue()==2 then speed=12 end
	if freestandingac:GetValue()==3 then speed=freestandspeed:GetValue() end
	if freestanding:GetValue() and freestandingst:GetValue()==0 then
	if input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and input.IsButtonDown(slowwalk)==false then 
    if gui.GetValue("rbot.antiaim.base.rotation")<0 and input.GetMousePos()<=960-speed and freestandingst:GetValue()==0 then 
    gui.SetValue("rbot.antiaim.base.rotation",rotationl:GetValue())
	end
	if gui.GetValue("rbot.antiaim.base.rotation")>=0 and input.GetMousePos()>=960+speed and freestandingst:GetValue()==0 then 
    gui.SetValue("rbot.antiaim.base.rotation",-rotationr:GetValue())
	end
end
    if input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and input.IsButtonDown(slowwalk)==false and velsp16>standvelocitythreshold:GetValue() then 
    if gui.GetValue("rbot.antiaim.base.rotation")<0 and input.GetMousePos()<=960-speed and freestandingst:GetValue()==0 then 
    gui.SetValue("rbot.antiaim.base.rotation",rotationlm:GetValue())
	end
	if gui.GetValue("rbot.antiaim.base.rotation")>=0 and input.GetMousePos()>=960+speed and freestandingst:GetValue()==0 then 
    gui.SetValue("rbot.antiaim.base.rotation",-rotationrm:GetValue())
	end
end
    if  input.IsButtonDown(32)==true and input.IsButtonDown(slowwalk)==false then 
    if gui.GetValue("rbot.antiaim.base.rotation")<0 and input.GetMousePos()<=960-speed and freestandingst:GetValue()==0 then 
    gui.SetValue("rbot.antiaim.base.rotation",rotationla:GetValue())
	end
	if gui.GetValue("rbot.antiaim.base.rotation")>=0 and input.GetMousePos()>=960+speed and freestandingst:GetValue()==0 then 
    gui.SetValue("rbot.antiaim.base.rotation",-rotationra:GetValue())
	end
end
    if  input.IsButtonDown(32)==false and input.IsButtonDown(slowwalk)==true then 
    if gui.GetValue("rbot.antiaim.base.rotation")<0 and input.GetMousePos()<=960-speed and freestandingst:GetValue()==0 then 
    gui.SetValue("rbot.antiaim.base.rotation",rotationls:GetValue())
	end
	if gui.GetValue("rbot.antiaim.base.rotation")>=0 and input.GetMousePos()>=960+speed and freestandingst:GetValue()==0 then 
    gui.SetValue("rbot.antiaim.base.rotation",-rotationrs:GetValue())
	end
end
end
if not legitaa:GetValue() then 
    if input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and input.IsButtonDown(slowwalk)==false  then 
    if gui.GetValue("rbot.antiaim.base.rotation")<0 and freestandingst:GetValue()==1 and input.IsButtonDown(65)==true and globals.TickCount()%freestandswitch:GetValue()==0 then 
    	gui.SetValue("rbot.antiaim.base.rotation",rotationl:GetValue())
end 
   if gui.GetValue("rbot.antiaim.base.rotation")>=0 and freestandingst:GetValue()==1 and input.IsButtonDown(68)==true and globals.TickCount()%freestandswitch:GetValue()==0 then 
    	gui.SetValue("rbot.antiaim.base.rotation",-rotationr:GetValue())
end
end
    if input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and input.IsButtonDown(slowwalk)==false and velsp>standvelocitythreshold:GetValue() then 
    if gui.GetValue("rbot.antiaim.base.rotation")<0 and freestandingst:GetValue()==1 and input.IsButtonDown(65)==true and globals.TickCount()%freestandswitch:GetValue()==0 then 
    	gui.SetValue("rbot.antiaim.base.rotation",rotationlm:GetValue())
end 
   if gui.GetValue("rbot.antiaim.base.rotation")>=0 and freestandingst:GetValue()==1 and input.IsButtonDown(68)==true and globals.TickCount()%freestandswitch:GetValue()==0 then 
    	gui.SetValue("rbot.antiaim.base.rotation",-rotationrm:GetValue())
end
end
   if input.IsButtonDown(32)==true and input.IsButtonDown(slowwalk)==false then 
    if gui.GetValue("rbot.antiaim.base.rotation")<0 and freestandingst:GetValue()==1 and input.IsButtonDown(65)==true and globals.TickCount()%freestandswitch:GetValue()==0 then 
    	gui.SetValue("rbot.antiaim.base.rotation",rotationla:GetValue())
end 
   if gui.GetValue("rbot.antiaim.base.rotation")>=0 and freestandingst:GetValue()==1 and input.IsButtonDown(68)==true and globals.TickCount()%freestandswitch:GetValue()==0 then 
    	gui.SetValue("rbot.antiaim.base.rotation",-rotationra:GetValue())
end
end
   if input.IsButtonDown(32)==false and input.IsButtonDown(slowwalk)==true then 
    if gui.GetValue("rbot.antiaim.base.rotation")<0 and freestandingst:GetValue()==1 and input.IsButtonDown(65)==true and globals.TickCount()%freestandswitch:GetValue()==0 then 
    	gui.SetValue("rbot.antiaim.base.rotation",rotationls:GetValue())
end 
   if gui.GetValue("rbot.antiaim.base.rotation")>=0 and freestandingst:GetValue()==1 and input.IsButtonDown(68)==true and globals.TickCount()%freestandswitch:GetValue()==0 then 
    	gui.SetValue("rbot.antiaim.base.rotation",-rotationrs:GetValue())
end
end
   if input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and input.IsButtonDown(slowwalk)==false then 
   if gui.GetValue("rbot.antiaim.base.rotation")>=0 and freestandingst:GetValue()==2 and input.IsButtonDown(65)==true and globals.TickCount()%freestandswitch:GetValue()==0 then 
    	gui.SetValue("rbot.antiaim.base.rotation",-rotationr:GetValue())
end 
   if gui.GetValue("rbot.antiaim.base.rotation")<0 and freestandingst:GetValue()==2 and input.IsButtonDown(68)==true and globals.TickCount()%freestandswitch:GetValue()==0 then 
    	gui.SetValue("rbot.antiaim.base.rotation",rotationl:GetValue())
end
end
   if input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and input.IsButtonDown(slowwalk)==false and velsp>standvelocitythreshold:GetValue() then 
   if gui.GetValue("rbot.antiaim.base.rotation")>=0 and freestandingst:GetValue()==2 and input.IsButtonDown(65)==true and globals.TickCount()%freestandswitch:GetValue()==0 then 
    	gui.SetValue("rbot.antiaim.base.rotation",-rotationrm:GetValue())
end 
   if gui.GetValue("rbot.antiaim.base.rotation")<0 and freestandingst:GetValue()==2 and input.IsButtonDown(68)==true and globals.TickCount()%freestandswitch:GetValue()==0 then 
    	gui.SetValue("rbot.antiaim.base.rotation",rotationlm:GetValue())
end
end
   if input.IsButtonDown(32)==true and input.IsButtonDown(slowwalk)==false then 
   if gui.GetValue("rbot.antiaim.base.rotation")>=0 and freestandingst:GetValue()==2 and input.IsButtonDown(65)==true and globals.TickCount()%freestandswitch:GetValue()==0 then 
    	gui.SetValue("rbot.antiaim.base.rotation",-rotationra:GetValue())
end 
   if gui.GetValue("rbot.antiaim.base.rotation")<0 and freestandingst:GetValue()==2 and input.IsButtonDown(68)==true and globals.TickCount()%freestandswitch:GetValue()==0 then 
    	gui.SetValue("rbot.antiaim.base.rotation",rotationla:GetValue())
end
end
   if input.IsButtonDown(32)==false and input.IsButtonDown(slowwalk)==true then 
   if gui.GetValue("rbot.antiaim.base.rotation")>=0 and freestandingst:GetValue()==2 and input.IsButtonDown(65)==true and globals.TickCount()%freestandswitch:GetValue()==0 then 
    	gui.SetValue("rbot.antiaim.base.rotation",-rotationrs:GetValue())
end 
   if gui.GetValue("rbot.antiaim.base.rotation")<0 and freestandingst:GetValue()==2 and input.IsButtonDown(68)==true and globals.TickCount()%freestandswitch:GetValue()==0 then 
    	gui.SetValue("rbot.antiaim.base.rotation",rotationls:GetValue())
end
end
if input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and input.IsButtonDown(slowwalk)==false then 
 if gui.GetValue("rbot.antiaim.base.rotation")>=0 and input.GetMousePos()>964 and freestandingst:GetValue()==3 and globals.TickCount()%freestandswitch:GetValue()==0  then 
     gui.SetValue("rbot.antiaim.base.rotation",-rotationr:GetValue())
 	end
 if gui.GetValue("rbot.antiaim.base.rotation")<0 and input.GetMousePos()>964 and freestandingst:GetValue()==3 and globals.TickCount()%freestandswitch:GetValue()==0  then 
     gui.SetValue("rbot.antiaim.base.rotation",rotationl:GetValue())
 	end
end   
if input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and input.IsButtonDown(slowwalk)==false and velsp>standvelocitythreshold:GetValue() then 
 if gui.GetValue("rbot.antiaim.base.rotation")>=0 and input.GetMousePos()>964 and freestandingst:GetValue()==3 and globals.TickCount()%freestandswitch:GetValue()==0  then 
     gui.SetValue("rbot.antiaim.base.rotation",-rotationrm:GetValue())
 	end
 if gui.GetValue("rbot.antiaim.base.rotation")<0 and input.GetMousePos()>964 and freestandingst:GetValue()==3 and globals.TickCount()%freestandswitch:GetValue()==0  then 
     gui.SetValue("rbot.antiaim.base.rotation",rotationlm:GetValue())
 	end
end   
if input.IsButtonDown(32)==true and input.IsButtonDown(slowwalk)==false then 
 if gui.GetValue("rbot.antiaim.base.rotation")>=0 and input.GetMousePos()>964 and freestandingst:GetValue()==3 and globals.TickCount()%freestandswitch:GetValue()==0  then 
     gui.SetValue("rbot.antiaim.base.rotation",-rotationra:GetValue())
 	end
 if gui.GetValue("rbot.antiaim.base.rotation")<0 and input.GetMousePos()>964 and freestandingst:GetValue()==3 and globals.TickCount()%freestandswitch:GetValue()==0  then 
     gui.SetValue("rbot.antiaim.base.rotation",rotationla:GetValue())
 	end
end   
if input.IsButtonDown(32)==false and input.IsButtonDown(slowwalk)==true then 
 if gui.GetValue("rbot.antiaim.base.rotation")>=0 and input.GetMousePos()>964 and freestandingst:GetValue()==3 and globals.TickCount()%freestandswitch:GetValue()==0  then 
     gui.SetValue("rbot.antiaim.base.rotation",-rotationrs:GetValue())
 	end
 if gui.GetValue("rbot.antiaim.base.rotation")<0 and input.GetMousePos()>964 and freestandingst:GetValue()==3 and globals.TickCount()%freestandswitch:GetValue()==0  then 
     gui.SetValue("rbot.antiaim.base.rotation",rotationls:GetValue())
 	end
end   
end
end
end
callbacks.Register('Draw',freestand)
function onesidedes()
	local slowwalk= gui.GetValue("rbot.accuracy.movement.slowkey")
	local velsp20 =entities.GetLocalPlayer():GetPropVector("localdata", "m_vecVelocity[0]"):Length()
if legitaa:GetValue()==false then
	local customyaw = gui.GetValue("rbot.KOL🌭BAS.defya");
	local customyawm= gui.GetValue("rbot.KOL🌭BAS.defyam");
	local customyawa = gui.GetValue("rbot.KOL🌭BAS.defyaa");
	local customyaws= gui.GetValue("rbot.KOL🌭BAS.defyas");
	local flip= NormalizeYaw(180  + (28+jitter:GetValue())-customyaw);
	local flipinv = NormalizeYaw(180  - (24+jitter:GetValue())-customyaw);
    local notflip = NormalizeYaw(180-customyaw);
    local flipm= NormalizeYaw(180  + (28+jitterm:GetValue())-customyawm);
	local flipinvm = NormalizeYaw(180  - (24+jitterm:GetValue())-customyawm);
    local notflipm = NormalizeYaw(180-customyawm);
    local flipa= NormalizeYaw(180  + (28+jittera:GetValue()) -customyawa);
	local flipinva = NormalizeYaw(180  - (24+jittera:GetValue()) -customyawa);
    local notflipa = NormalizeYaw(180 -customyawa);
    local flips= NormalizeYaw(180  + (28+jitters:GetValue()) -customyaws);
	local flipinvs = NormalizeYaw(180  - (24+jitters:GetValue()) -customyaws);
    local notflips = NormalizeYaw(180 -customyaws);
if rightik == 0 and leftik== 0 and backik == 0 then
if input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and  gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and destupes:GetValue()==3 then 
  if gui.GetValue("rbot.antiaim.base.rotation")<0 then 
  	if globals.TickCount()%(jitterspeed:GetValue()*2)==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",-9)
  		gui.SetValue("rbot.antiaim.base",flip)
  		elseif globals.TickCount()%jitterspeedm:GetValue()==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",-rotationr:GetValue())
  		gui.SetValue("rbot.antiaim.base",notflip)
end
end
   if gui.GetValue("rbot.antiaim.base.rotation")>=0 then 
  	if globals.TickCount()%(jitterspeed:GetValue()*2)==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",7)
  		gui.SetValue("rbot.antiaim.base",flipinv)
  		elseif globals.TickCount()%jitterspeedm:GetValue()==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",rotationl:GetValue())
  		gui.SetValue("rbot.antiaim.base",notflip)
end
end
end
if input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and  gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and destupesm:GetValue()==3 and velsp20>standvelocitythreshold:GetValue() then 
  if gui.GetValue("rbot.antiaim.base.rotation")<0 then 
  	if globals.TickCount()%(jitterspeedm:GetValue()*2)==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",-9)
  		gui.SetValue("rbot.antiaim.base",flipm)
  		elseif globals.TickCount()%jitterspeedm:GetValue()==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",-rotationrm:GetValue())
  		gui.SetValue("rbot.antiaim.base",notflipm)
end
end
   if gui.GetValue("rbot.antiaim.base.rotation")>=0 then 
  	if globals.TickCount()%(jitterspeedm:GetValue()*2)==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",7)
  		gui.SetValue("rbot.antiaim.base",flipinvm)
  		elseif globals.TickCount()%jitterspeedm:GetValue()==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",rotationlm:GetValue())
  		gui.SetValue("rbot.antiaim.base",notflipm)
end
end
end
 if input.IsButtonDown(32)==true and  gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and destupesa:GetValue()==3 then 
  if gui.GetValue("rbot.antiaim.base.rotation")<0 then 
  	if globals.TickCount()%(jitterspeeda:GetValue()*2)==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",-9)
  		gui.SetValue("rbot.antiaim.base",flipa)
  		elseif globals.TickCount()%jitterspeeda:GetValue()==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",-rotationra:GetValue())
  		gui.SetValue("rbot.antiaim.base",notflipa)
end
end
   if gui.GetValue("rbot.antiaim.base.rotation")>=0 then 
  	if globals.TickCount()%(jitterspeedm:GetValue()*2)==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",7)
  		gui.SetValue("rbot.antiaim.base",flipinva)
  		elseif globals.TickCount()%jitterspeeda:GetValue()==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",rotationla:GetValue())
  		gui.SetValue("rbot.antiaim.base",notflipa)
end
end
end
if input.IsButtonDown(32)==false and  gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==true and destupess:GetValue()==3 then 
  if gui.GetValue("rbot.antiaim.base.rotation")<0 then 
  	if globals.TickCount()%(jitterspeeds:GetValue()*2)==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",-9)
  		gui.SetValue("rbot.antiaim.base",flips)
  		elseif globals.TickCount()%jitterspeeds:GetValue()==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",-rotationrs:GetValue())
  		gui.SetValue("rbot.antiaim.base",notflips)
end
end
   if gui.GetValue("rbot.antiaim.base.rotation")>=0 then 
  	if globals.TickCount()%(jitterspeeds:GetValue()*2)==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",7)
  		gui.SetValue("rbot.antiaim.base",flipinvs)
  		elseif globals.TickCount()%jitterspeeds:GetValue()==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",rotationls:GetValue())
  		gui.SetValue("rbot.antiaim.base",notflips)
end
end
end
end
end
end
callbacks.Register('Draw',onesidedes)

function fakeflip()
	local slowwalk= gui.GetValue("rbot.accuracy.movement.slowkey")
local velsp21 = entities.GetLocalPlayer():GetPropVector("localdata", "m_vecVelocity[0]"):Length()
	local customyaw = gui.GetValue("rbot.KOL🌭BAS.defya");
	local customyawm= gui.GetValue("rbot.KOL🌭BAS.defyam");
	local customyawa = gui.GetValue("rbot.KOL🌭BAS.defyaa");
	local customyaws= gui.GetValue("rbot.KOL🌭BAS.defyas");
	local flip= NormalizeYaw(180 - customyaw + 90);
	local flipinv = NormalizeYaw(180 - customyaw - 90);
    local notflip = NormalizeYaw(180 - customyaw);
    local flipm= NormalizeYaw(180 - customyawm + 90);
	local flipinvm = NormalizeYaw(180 - customyawm - 90);
    local notflipm = NormalizeYaw(180 - customyawm);
    local flipa= NormalizeYaw(180 - customyawa + 90);
	local flipinva = NormalizeYaw(180 - customyawa - 90);
    local notflipa = NormalizeYaw(180 - customyawa);
    local flips= NormalizeYaw(180 - customyaws + 90);
	local flipinvs = NormalizeYaw(180 - customyaws - 90);
    local notflips = NormalizeYaw(180 - customyaws);
if rightik == 0 and leftik== 0 and backik == 0 and legitaa:GetValue()==false then
if input.IsButtonDown(32)==false and input.IsButtonDown(87)==false and input.IsButtonDown(65)==false and input.IsButtonDown(83)==false and input.IsButtonDown(68)==false and  gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and destupes:GetValue()==4 then 
  if gui.GetValue("rbot.antiaim.base.rotation")<0 then 
  	if globals.TickCount()%math.random(18,20)==0 then 
  		--gui.SetValue("rbot.antiaim.base.rotation",-9)
  		gui.SetValue("rbot.antiaim.base",flip)
  		elseif globals.TickCount()%1==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",-rotationr:GetValue())
  		gui.SetValue("rbot.antiaim.base",notflip)
end
end
   if gui.GetValue("rbot.antiaim.base.rotation")>=0 then 
  	if globals.TickCount()%math.random(18,20)==0 then 
  		--gui.SetValue("rbot.antiaim.base.rotation",7)
  		gui.SetValue("rbot.antiaim.base",flipinv)
  		elseif globals.TickCount()%1==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",rotationl:GetValue())
  		gui.SetValue("rbot.antiaim.base",notflip)
end
end
end
if input.IsButtonDown(32)==false and (input.IsButtonDown(87)==true or input.IsButtonDown(65)==true or input.IsButtonDown(83)==true or input.IsButtonDown(68)==true) and  gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and destupesm:GetValue()==4 and velsp21>standvelocitythreshold:GetValue() then 
  if gui.GetValue("rbot.antiaim.base.rotation")<0 then 
  	if globals.TickCount()%math.random(18,20)==0 then 
  		--gui.SetValue("rbot.antiaim.base.rotation",-9)
  		gui.SetValue("rbot.antiaim.base",flipm)
  		elseif globals.TickCount()%1==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",-rotationrm:GetValue())
  		gui.SetValue("rbot.antiaim.base",notflipm)
end
end
   if gui.GetValue("rbot.antiaim.base.rotation")>=0 then 
  	if globals.TickCount()%math.random(18,20)==0 then 
  		--gui.SetValue("rbot.antiaim.base.rotation",7)
  		gui.SetValue("rbot.antiaim.base",flipinvm)
  		elseif globals.TickCount()%1==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",rotationlm:GetValue())
  		gui.SetValue("rbot.antiaim.base",notflipm)
end
end
end
 if input.IsButtonDown(32)==true and  gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==false and destupesa:GetValue()==4 then 
  if gui.GetValue("rbot.antiaim.base.rotation")<0 then 
  	if globals.TickCount()%math.random(18,20)==0 then 
  		--gui.SetValue("rbot.antiaim.base.rotation",-9)
  		gui.SetValue("rbot.antiaim.base",flipa)
  		elseif globals.TickCount()%1==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",-rotationra:GetValue())
  		gui.SetValue("rbot.antiaim.base",notflipa)
end
end
   if gui.GetValue("rbot.antiaim.base.rotation")>=0 then 
  	if globals.TickCount()%math.random(18,20)==0 then 
  		--gui.SetValue("rbot.antiaim.base.rotation",7)
  		gui.SetValue("rbot.antiaim.base",flipinva)
  		elseif globals.TickCount()%1==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",rotationla:GetValue())
  		gui.SetValue("rbot.antiaim.base",notflipa)
end
end
end
if input.IsButtonDown(32)==false and  gui.GetValue("rbot.accuracy.movement.slowkey")~=0 and input.IsButtonDown(slowwalk)==true and destupess:GetValue()==4 then 
  if gui.GetValue("rbot.antiaim.base.rotation")<0 then 
  	if globals.TickCount()%math.random(18,20)==0 then 
  		--gui.SetValue("rbot.antiaim.base.rotation",-9)
  		gui.SetValue("rbot.antiaim.base",flips)
  		elseif globals.TickCount()%1==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",-rotationrs:GetValue())
  		gui.SetValue("rbot.antiaim.base",notflips)
end
end
   if gui.GetValue("rbot.antiaim.base.rotation")>=0 then 
  	if globals.TickCount()%math.random(18,20)==0 then 
  		--gui.SetValue("rbot.antiaim.base.rotation",7)
  		gui.SetValue("rbot.antiaim.base",flipinvs)
  		elseif globals.TickCount()%1==0 then 
  		gui.SetValue("rbot.antiaim.base.rotation",rotationls:GetValue())
  		gui.SetValue("rbot.antiaim.base",notflips)
end
end
end
end
end
callbacks.Register('Draw',fakeflip)
function manulindca()
	if entities.GetLocalPlayer()~=nil and entities:GetLocalPlayer():IsAlive() then
	if manulind:GetValue() then 
	if rightik==0 and backik==1 and leftik==0 then 
		draw.Color(offman:GetValue())
		draw.Triangle(ScrW/2-45,ScrH/2+11,ScrW/2-60,ScrH/2,ScrW/2-45,ScrH/2-11)
		draw.Triangle(ScrW/2+45,ScrH/2+11,ScrW/2+60,ScrH/2,ScrW/2+45,ScrH/2-11)
	end
	if rightik==1 and backik==0 and leftik==0 then 
		draw.Color(offman:GetValue())
		draw.Triangle(ScrW/2-45,ScrH/2+11,ScrW/2-60,ScrH/2,ScrW/2-45,ScrH/2-11)
		draw.Color(onman:GetValue())
		draw.Triangle(ScrW/2+45,ScrH/2+11,ScrW/2+60,ScrH/2,ScrW/2+45,ScrH/2-11)
	end
	if rightik==0 and backik==0 and leftik==1 then 
		draw.Color(onman:GetValue())
		draw.Triangle(ScrW/2-45,ScrH/2+11,ScrW/2-60,ScrH/2,ScrW/2-45,ScrH/2-11)
		draw.Color(offman:GetValue())
		draw.Triangle(ScrW/2+45,ScrH/2+11,ScrW/2+60,ScrH/2,ScrW/2+45,ScrH/2-11)
	end	
end
end
end
callbacks.Register('Draw',manulindca)