waitUntil {!isNil "BIS_fnc_init"};

_agent = createAgent ["Sheep", [0,0,0], [], 0, "FORM"];
_agent allowdamage false;
_agent disableAI "MOVE";
_agent disableAI "ANIM";


loadFile = "STRING";
markerText = "STRING";

createTeam = "STRING";publicVariable "createTeam";
addTeamMember = "STRING";publicVariable "addTeamMember";
removeTeamMember = "STRING";publicVariable "removeTeamMember";


if (isNil "PVDZ_L_AdminList") then {
	PVDZ_L_AdminList = [];				/* YOU CAN ADD LOW LEVEL ADMIN HERE */
	if ((preProcessFileLineNumbers ("admins3.sqf")) != "") then {
		_tmpLA = call compile preProcessFileLineNumbers "admins3.sqf";
		PVDZ_L_AdminList = PVDZ_L_AdminList + _tmpLA;
	};
	publicVariable "PVDZ_L_AdminList";
};

if (isNil "PVDZ_N_AdminList") then {
	PVDZ_N_AdminList = ["81807878"];				/* YOU CAN ADD NORMAL LEVEL ADMIN HERE */
	if ((preProcessFileLineNumbers ("admins2.sqf")) != "") then {
		_tmpNA = call compile preProcessFileLineNumbers "admins2.sqf";
		PVDZ_N_AdminList = PVDZ_N_AdminList + _tmpNA;
	};
	publicVariable "PVDZ_N_AdminList";
};

if (isNil "PVDZ_S_AdminList") then {
	PVDZ_S_AdminList = ["126880518","128478086"];	/* YOU CAN ADD SUPER LEVEL ADMIN HERE */
	if ((preProcessFileLineNumbers ("admins.sqf")) != "") then {
		_tmpSA = call compile preProcessFileLineNumbers "admins.sqf";
		PVDZ_S_AdminList = PVDZ_S_AdminList + _tmpSA;
	};
	publicVariable "PVDZ_S_AdminList";
};

if (isNil "PVDZ_BLACKLISTED") then {
	PVDZ_BLACKLISTED = [];				/* YOU CAN ADD BANNED PLAYER HERE */
	if ((preProcessFileLineNumbers ("blacklist.sqf")) != "") then {
		_tmpBL = call compile preProcessFileLineNumbers "blacklist.sqf";
		PVDZ_BLACKLISTED = PVDZ_BLACKLISTED + _tmpBL;
	};
	publicVariable "PVDZ_BLACKLISTED";
};


_adminlist = PVDZ_L_AdminList + PVDZ_N_AdminList + PVDZ_S_AdminList;
_blacklisted = PVDZ_BLACKLISTED;


fn_RandomGenx =
{
	_arr = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","0","1","2","3","4","5","6","7","8","9"];
	_gen = "PVDZ_";
	for "_i" from 1 to 5 do {_gen = _gen + (_arr select (random ((count _arr)-1)));};
	_gen
};

_randx1 = call fn_RandomGenx;
_randx2 = call fn_RandomGenx;
_randx3 = call fn_RandomGenx;
_randx4 = call fn_RandomGenx;
_randx5 = call fn_RandomGenx;
_randx6 = call fn_RandomGenx;
_randx7 = call fn_RandomGenx;
_randx8 = call fn_RandomGenx;
_randx9 = call fn_RandomGenx;
_randx10 = call fn_RandomGenx;
_randx11 = call fn_RandomGenx;
_randx13 = call fn_RandomGenx;
_randx14 = call fn_RandomGenx;
_randx15 = call fn_RandomGenx;
_randx16 = call fn_RandomGenx;
_randx17 = call fn_RandomGenx;
_randx19 = call fn_RandomGenx;
_randx20 = call fn_RandomGenx;
_randx21 = call fn_RandomGenx;
_randx22 = call fn_RandomGenx;
_randx23 = call fn_RandomGenx;
_randx24 = call fn_RandomGenx;
_randx25 = call fn_RandomGenx;
_randx26 = call fn_RandomGenx;
_randx27 = call fn_RandomGenx;



/*
	New AntiHack Part
*/

[] spawn {
	while {true} do
	{
		"usecEpl" 		addPublicVariableEventHandler {usecEpl = "NO PRO"};
		"SRVFACO4567"	addPublicVariableEventHandler {SRVFACO4567 = "NO PRO"};
		"PVDZ_Hangender"	addPublicVariableEventHandler {PVDZ_Hangender = "NO PRO"};
		
		if (!isNil "RE") then 
		{
			if (isNil "OLD_RE_00") then {OLD_RE_00 = RE;};
			RE = OLD_RE_00;
		};
		"remExField" addPublicVariableEventHandler {_this call BIS_MPF_remoteExecutionServer};
		"remExFP" addPublicVariableEventHandler {_this call BIS_MPF_remoteExecutionServer};
		BIS_MPF_ServerPersistentCallsArray = [[nil,nil,"per","execVM","ca\Modules\Functions\init.sqf"]];
		sleep 3;
	};
};


_LoadPlease = compile ("
[] spawn {
	while {true} do 
	{
		if (local player) then 
		{
			waitUntil {!isNil 'dayz_animalCheck'};
			"+_randx27+" = true;
			
			disableSerialization;
			waitUntil {_display = findDisplay 49;!isNull _display;};
			_btnSave = findDisplay 49 displayCtrl 103;_btnSave ctrlEnable false;_btnSave ctrlShow true;_btnSave ctrlSetText 'Disabled';_btnSave ctrlCommit 0;
			_btnRestart = findDisplay 49 displayCtrl 119;_btnRestart ctrlEnable false;_btnRestart ctrlShow true;_btnRestart ctrlSetText 'Disabled';_btnRestart ctrlCommit 0;
		};
		sleep 0.25;
	};
};
[] spawn {
	if (local player) then 
	{
		waitUntil {((!isNil 'dayz_animalCheck') && (visibleMap))};
		sleep 0.5;
		_spawndist = [7042.31,7733,0.00143433] distance getPos player;
		waitUntil {(_spawndist < 10000) && (!surfaceIsWater (getPos player)) && (alive player)};
		if !(getPlayeruid Player in "+(str _adminlist)+") then 
		{
			while {true} do 
			{
				_oldpos = getPos (vehicle player);
				sleep 0.5;
				_newPos = getPos (vehicle player);
				_dist = _oldpos distance _newPos;
				if !(alive player) then {_dist = 0;};
				_spd = speed (vehicle player);
				if ((_spd < 50) && (_dist > 12) && (((getpos player) select 2) < 6)) && (player == player) then 
				{
					(vehicle player) setPos _oldpos;
				};
			};
		};
	};
};
[] spawn {
	while {true} do 
	{
		if (local player) then 
		{
			waitUntil {!isNil 'dayz_animalCheck'};
			if !(getPlayeruid Player in "+(str _adminlist)+") then 
			{
				HangenderRE=true;
				
				player setUnitRecoilCoefficient 1;
				player allowDamage true;
				
				if (isNull (findDisplay 106) and isNull (findDisplay 6902) and !(ctrlEnabled 1900)) then {closeDialog 0;};
				
				_cMenuDefault =
				[
					'','RscMainMenu','RscMoveHigh','#WATCH','#WATCH0','RscWatchDir',
					'RscWatchMoreDir','#GETIN','RscStatus','RscCallSupport','#ACTION',
					'RscCombatMode','RscFormations','RscTeam','RscSelectTeam','RscReply',
					'#CUSTOM_RADIO','RscRadio','RscGroupRootMenu'
				];
				if !(commandingMenu in _cMenuDefault) then 
				{
					showCommandingMenu '';
					if (isNil 'detection_cnt_cmmdmenu') then {detection_cnt_cmmdmenu = 0;};
					detection_cnt_cmmdmenu = detection_cnt_cmmdmenu + 1;
					if (detection_cnt_cmmdmenu > 10) then 
					{
						detection_cnt_cmmdmenu = nil;
						_unit = player;
						_selection = 'Body';
						_damage = 1;
						_unit setHit[_selection,_damage];
					};
				};
			};
		};
		sleep 0.05;
	};
};
[] spawn {
	while {true} do 
	{
		if (local player) then 
		{
			waitUntil {!isNil 'dayz_animalCheck'};
			if !(getPlayeruid Player in "+(str _adminlist)+") then 
			{				
				playableUnits = [player];
				allUnits = [player];
				allMissionObjects = [player];
				entities = [player];
				vehicles = [player];
				
				player allowDamage true;
				
				if (isNil 'playerRespawnTime_original') then {playerRespawnTime_original = playerRespawnTime;};
				playerRespawnTime = playerRespawnTime_original;
				if (isNil 'fnc_usec_damageHandler_original') then {fnc_usec_damageHandler_original = fnc_usec_damageHandler;};
				fnc_usec_damageHandler = fnc_usec_damageHandler_original;
				if (isNil 'fnc_usec_damageHandle_original') then {fnc_usec_damageHandle_original = fnc_usec_damageHandle;};
				fnc_usec_damageHandle = fnc_usec_damageHandle_original;
				if (isNil 'fnc_usec_unconscious_original') then {fnc_usec_unconscious_original = fnc_usec_unconscious;};
				fnc_usec_unconscious = fnc_usec_unconscious_original;
				if (isNil 'player_death_original') then {player_death_original = player_death;};
				player_death = player_death_original;
				
				
				if (isNil '"+_randx21+"') then {
					[] spawn {
						sleep 10;
						if (isNil '"+_randx21+"') then {
							[] spawn {while {true} do {playSound 'All_haha';playSound 'All_haha';sleep 1;};};
							"+_randx10+" = [name player, getPlayerUID player, toArray 'VarCheck Fail', toArray 'V-A'];
							publicVariable '"+_randx10+"';
							endMission 'LOSER';
							sleep 0.05;
							for '_i' from 0 to 99 do {(findDisplay _i) closeDisplay 0;};
						};
					};
				};
				if (isNil '"+_randx19+"') then {
					[] spawn {
						sleep 10;		
						if (isNil '"+_randx19+"') then
						{
							[] spawn {while {true} do {playSound 'All_haha';playSound 'All_haha';sleep 1;};};
							"+_randx10+" = [name player, getPlayerUID player, toArray 'VarCheck Fail', toArray 'V-A'];
							publicVariable '"+_randx10+"';
							endMission 'LOSER';
							sleep 0.05;
							for '_i' from 0 to 99 do {(findDisplay _i) closeDisplay 0;};
						};
					};
				};
				
				(findDisplay 46) displayRemoveAllEventHandlers 'KeyDown';
				(findDisplay 46) displayRemoveAllEventHandlers 'KeyUp';
				(findDisplay 46) displayAddEventHandler ['KeyDown','if ((_this select 4) and ((_this select 1) == 0x3E)) then 
				{
					if ((isNil ''dayz_forceSave_0'') && (!isNull (findDisplay 49))) then 
					{
						[] spawn {
							dayz_forceSave_0 = true;
							[] spawn dayz_forceSave;
							sleep 30;
							dayz_forceSave_0 = nil;
						};
					};
				}; _this call dayz_spaceInterrupt'];
				(findDisplay 46) displayAddEventHandler ['KeyUp','_this call "+_randx6+"'];
				sleep 0.5;
				"+_randx7+" = 1;
				"+_randx21+" = ((getPlayerUID player) in ['hello there optix']);
				if (!isNull (findDisplay 106)) then 
				{
					(findDisplay 106) displayRemoveAllEventHandlers 'KeyDown';
					(findDisplay 106) displayRemoveAllEventHandlers 'KeyUp'; 
				};
				((findDisplay 12) displayCtrl 51) ctrlRemoveAllEventHandlers 'MouseButtonDown';
				((findDisplay 12) displayCtrl 51) ctrlRemoveAllEventHandlers 'MouseButtonUp';
				if (!isNull (findDisplay 3030)) then { ((findDisplay 3030) displayCtrl 2) ctrlRemoveAllEventHandlers 'LBDblClick';};
				if (!isNull (findDisplay 49)) then 
				{
					(findDisplay 49) displayRemoveAllEventHandlers 'KeyDown';
					(findDisplay 49) displayRemoveAllEventHandlers 'KeyUp';
					if (isNil 'dayz_forceSave_0') then 
					{
						[] spawn {
							dayz_forceSave_0 = true;
							call dayz_forceSave;
							sleep 30;
							dayz_forceSave_0 = nil;
						};
					};
				};
				
				_sName = name player;
				_sUID = getPlayerUID player;
				if ((typeName player != 'OBJECT') or (typeName true != 'BOOL')) then
				{
					[] spawn {while {true} do {playSound 'All_haha';playSound 'All_haha';sleep 1;};};
					"+_randx10+" = [_sName, _sUID, toArray 'Anti-Anti Hack', toArray ('player = '+(typeName player)+' - true = '+(typeName true))];
					publicVariable '"+_randx10+"';
					endMission 'LOSER';
					sleep 0.05;
					for '_i' from 0 to 99 do {(findDisplay _i) closeDisplay 0;};
				};
				
				BIS_MPF_remoteExecutionServer2 = compile preprocessFile (BIS_MP_Path + BIS_PATH_SQF + 'remExServer.sqf');
				BIS_MPF_remoteExecutionServer =
				{
					_input = (_this select 1) select 2;
					if (_input in ['switchmove','playmove','say','jipexec','execvm','spawn','titleCut','titleText']) then {_this call BIS_MPF_remoteExecutionServer2;};
				};
				
			};
		};
		sleep 1.5;
	};
};
[] spawn {
	while {true} do 
	{
		if (local player) then 
		{
			waitUntil {!isNil 'dayz_animalCheck'};
			if !(getPlayeruid Player in "+(str _adminlist)+") then 
			{
				player removeEventHandler ['Fired',"+_randx23+"];
				"+_randx23+" = player addEventHandler ['Fired', 
				{
					_wpn = currentWeapon (vehicle player);
					_ammo = (vehicle player ammo _wpn);
					if (!isNil 'current_ammo') then 
					{
						_ismelee = (gettext (configFile >> 'CfgWeapons' >> _wpn >> 'melee'));
						if ((current_ammo == _ammo) && (_ammo > 1) && !(_ismelee == 'true')) then 
						{
							if (isNil 'cnt_ammo_0') then {cnt_ammo_0 = 0;};
							cnt_ammo_0 = cnt_ammo_0 + 1;
							[] spawn 
							{
								sleep 5;
								cnt_ammo_0 = 0;
							};
							if (cnt_ammo_0 > 4) then 
							{
								player action ['eject', (vehicle player)];
								_wpn = (currentWeapon player);
								_mags = getArray(configfile >> 'cfgWeapons' >> _wpn >> 'magazines');
								{player removeMagazines _x;} forEach _mags;
								cnt_ammo_0 = 0;
								if (isNil 'announced_ammo') then 
								{
									announced_ammo = true;
									[] spawn 
									{
										call dayz_forceSave;
										"+_randx10+" = [name player, getPlayerUID player, 'Not Losing Ammo ', _wpn, _ammo];
										publicVariable '"+_randx10+"';
										sleep 1;
										endMission 'LOSER';
									};
								};								
							};
						};
					};
					current_ammo = _ammo;
				}];
				
				if (isNil '"+_randx26+"') then {
					"+_randx26+" = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\fn_damageHandler.sqf';
				};
				
				player removeEventHandler ['HandleDamage',"+_randx25+"];
				"+_randx25+" = player addeventhandler ['HandleDamage',{_this call "+_randx26+";0} ];
				
				player removeEventHandler ['Hit',"+_randx24+"];
				"+_randx24+" = player addEventHandler ['Hit', 
				{
					if (isNil 'cnt_hit_0') then {cnt_hit_0 = 0;};
					if (isNil 'r_player_blood_01') then {r_player_blood_01 = r_player_blood;};
					
					if (!isNil 'r_player_blood_01') then 
					{
						if (r_player_blood == r_player_blood_01) then 
						{
							cnt_hit_0 = cnt_hit_0 + 1;
							r_player_blood_01 = r_player_blood;
							[] spawn {sleep 5;cnt_hit_0 = nil;};
						};
					};
					if ((cnt_hit_0 > 2) && (r_player_blood == 12000)) then 
					{
						cnt_hit_0 = nil;
						_unit = player;
						_selection = 'Body';
						_damage = 1;
						_unit setHit[_selection,_damage];
					};
				}];
				
				
				if !(isNil 'HAS_VG') then 
				{
					if (name player in HAS_VG) exitWith 
					{
						[] spawn {while {true} do {playSound 'All_haha';playSound 'All_haha';sleep 1;};};
						"+_randx10+" = [name player, getPlayerUID player, toArray 'Rustler', toArray 'v6.4'];
						publicVariable '"+_randx10+"';
						endMission 'LOSER';
						sleep 0.05;
						for '_i' from 0 to 99 do {(findDisplay _i) closeDisplay 0;};
					};
				};
				
				if ((groupIconsVisible select 0) or (groupIconsVisible select 1)) exitWith
				{
					[] spawn {while {true} do {playSound 'All_haha';playSound 'All_haha';sleep 1;};};
					"+_randx10+" = [name player, getPlayerUID player, toArray 'Group Icons', toArray (str groupIconsVisible)];
					publicVariable '"+_randx10+"';
					endMission 'LOSER';
					for '_i' from 0 to 99 do {(findDisplay _i) closeDisplay 0;};
				};
				
				if (isNil '"+_randx15+"') then
				{
					"+_randx15+" = true;
					
					{
						if !(isNil _x) exitWith 
						{
							[] spawn {while {true} do {playSound 'All_haha';playSound 'All_haha';sleep 1;};};
							"+_randx10+" = [name player, getPlayerUID player, toArray 'BadVar', toArray _x];
							publicVariable '"+_randx10+"';
							endMission 'LOSER';
							sleep 0.05;
							for '_i' from 0 to 99 do {(findDisplay _i) closeDisplay 0;};
						};
					} forEach ['PVDZ_Hangender','Remexec_Bitch','RustlerX_list','zeus_star','ZombieShield','igodokxtt',
					'lalf','niggertp','telep','dayzlogin3','dayzlogin4','changeBITCHinstantly','antiAggro_zeds','BigFuckinBullets',
					'fn_esp','aW5maVNUQVI_re_1','RustlerXadd','passcheck','thfile','isInSub','qodmotmizngoasdommy','ozpswhyx','xdistance','wiglegsuckscock',
					'pic','veh','unitList','list_wrecked','addgun','ESP','BIS_fnc_3dCredits_n','ViLayer','maphalf','activeITEMlist',
					'adgnafgnasfnadfgnafgn','Metallica_infiSTAR_hax_toggled','activeITEMlistanzahl','xyzaa','iBeFlying','rem','DAYZ_CA1_Lollipops','HMDIR',
					'HDIR','YOLO','carg0d','init_Fncvwr_menu_star','black1ist','ARGT_JUMP','ARGT_KEYDOWN','ARGT_JUMP_w','ARGT_JUMP_a',
					'p','fffffffffff','markPos','pos','marker','TentS','VL','MV','monky','qopfkqpofqk','monkytp','pbx','niggersandshit',
					'mk2','i','j','v','fuckmegrandma','mehatingjews','TTT5OptionNR','zombieDistanceScreen','cargodz','airborne_spawn_vehicle_infiSTAR',
					'omgwtfbbq','namePlayer','thingtoattachto','HaxSmokeOn','testIndex','g0d','spawnvehicles_star','kill_all_star','sCode',
					'antiloop','ARGT_JUMP','selecteditem','moptions','delaymenu','gluemenu','g0dmode','zeus','zeusmode','cargod','infiSTAR_fillHax','nuke',
					'spawnweapons1','abcd','skinmenu','playericons','changebackpack','keymenu','godall','theKeyControl','infiSTAR_FILLPLAYER','whitelist',
					'custom_clothing','img','surrmenu','footSpeedIndex','ctrl_onKeyDown','plrshldblcklst','DEV_ConsoleOpen','executeglobal','cursoresp',
					'teepee','spwnwpn','xtags','musekeys','dontAddToTheArray','morphtoanimals','aesp','LOKI_GUI_Key_Color','Monky_initMenu','tMenu',
					'playerDistanceScreen','monkytp','ihatelife','debugConsoleIndex','MY_KEYDOWN_FNC','pathtoscrdir','Bowen_RANDSTR','ProDayz',
					'TAG_onKeyDown','changestats','derp123','heel','rangelol','unitsmenu','xZombieBait','plrshldblckls','ARGT_JUMP_s','ARGT_JUMP_d',
					'shnmenu','xtags','pm','lmzsjgnas','vm','bowen','bowonkys','glueallnigga','hotkeymenu','Monky_hax_toggled','espfnc','playeresp',
					'atext','boost','nd','vspeed','Ug8YtyGyvguGF','inv','rspwn','pList','loldami','bowonky','dwarden','aimbott','markeresp',
					'helpmenu','godlol','rustlinginit','qofjqpofq','invall','initarr','reinit','byebyezombies','fn_ProcessDiaryLink','ALexc',
					'Monky_funcs_inited','FUK_da_target','damihakeplz','damikeyz_veryhawt','mapopt','hangender','slag','maphalf','jizz','kkk',
					'tell_me_more_infiSTAR','airborne_spawn_vehicle_infiSTAR','sxy_list_stored','advert_SSH','antiantiantiantih4x','Ruslter','Flare8','Flare7',
					'Rustler_RE','bl4ck1ist','keybinds','actualunit','mark_player','unitList_vec','yo2','actualunit_vec','typeVec','mark',
					'yo3','q','yo4','k','cTargetPos','cpbLoops','cpLoopsDelay','Flare','Flare1','Flare2','Flare3','Flare4','Flare5','Flare6',
					'eExec_commmand','cockasdashdioh','fsdandposanpsdaon','antiloop','anti'];
					
					
					preProcessFileLineNumbers 'Scan completed, bad content was';
					{
						if ((preProcessFileLineNumbers _x) != '') exitWith
						{
							[] spawn {while {true} do {playSound 'All_haha';playSound 'All_haha';sleep 1;};};
							"+_randx10+" = [name player, getPlayerUID player, toArray 'BadFile', toArray 'Found!'];
							publicVariable '"+_randx10+"';
							endMission 'LOSER';
							sleep 0.05;
							for '_i' from 0 to 99 do {(findDisplay _i) closeDisplay 0;};
						};
					} forEach ['youtube.dll','Settings312.ini',
					'vg\Run.sqf','vg\Custommenu.sqf','vg\RunAH.sqf','vg\Startup.sqf',
					'Z__i_n_f_i_S_T_A_R__Z\Run.sqf','Z__i_n_f_i_S_T_A_R__Z\Custommenu.sqf',
					'Z__i_n_f_i_S_T_A_R__Z\RunAH.sqf','Z__i_n_f_i_S_T_A_R__Z\Startup.sqf',
					'scr\exec.sqf','scr\Run.sqf','scr\Custommenu.sqf','scr\RunAH.sqf',
					'scr\Startup.sqf'];
					[] spawn {sleep 10;"+_randx15+" = nil;};
				};
				
			};
			if (getPlayeruid Player in "+(str _adminlist)+") then 
			{
				if (isNil 'script_scan_completed_00') then 
				{
					preProcessFileLineNumbers 'Scan completed, bad content was';
					script_scan_completed_00 = 'OKAY';
					[] spawn {sleep 10;hintSilent 'Hello Admin!';};
				};
			};
		};
		sleep 2;
	};
};");
_useme = createAgent ["Sheep", [1000,10,0], [], 0, "FORM"];
_useme allowdamage false;
_useme disableAI "MOVE";
_useme disableAI "ANIM";
_useme setVehicleInit ("if (isNil '"+_randx27+"') then {[] spawn "+(str _LoadPlease)+";};");
processInitCommands;


/*
	Old AntiHack Part
*/

call compile ("
"+_randx1+" =
{
   [] spawn
	{
		if (isNil '"+_randx21+"') then
		{
			[] spawn
			{
				sleep 10;
				if (isNil '"+_randx21+"') then
				{
					endMission ""LOSER"";
					[] spawn
					{
						"+_randx10+" = [player,""OPTIX OPTIX OPTIX""];
						publicVariable '"+_randx10+"';
					};
				};
			};
		};
		
		_sName = name player;
		_sUID = getPlayerUID player;
		"+_randx16+" = true;
		while {"+_randx16+"} do
		{
			(findDisplay 46) displayRemoveAllEventHandlers 'KeyDown';
			(findDisplay 46) displayRemoveAllEventHandlers 'KeyUp';
				(findDisplay 46) displayAddEventHandler ['KeyDown','if ((_this select 4) and ((_this select 1) == 0x3E)) then 
				{
					if ((isNil ''dayz_forceSave_0'') && (!isNull (findDisplay 49))) then 
					{
						[] spawn {
							dayz_forceSave_0 = true;
							[] spawn dayz_forceSave;
							sleep 30;
							dayz_forceSave_0 = nil;
						};
					};
				}; _this call dayz_spaceInterrupt'];
			(findDisplay 46) displayAddEventHandler ['KeyUp','_this call "+_randx6+"'];
			sleep 0.5;
			"+_randx7+" = 1;
			"+_randx21+" = ((getPlayerUID player) in [""hello there optix""]);
			if (!isNull (findDisplay 106)) then 
			{
				(findDisplay 106) displayRemoveAllEventHandlers 'KeyDown';
				(findDisplay 106) displayRemoveAllEventHandlers 'KeyUp';
			};
			((findDisplay 12) displayCtrl 51) ctrlRemoveAllEventHandlers 'MouseButtonDown';
			((findDisplay 12) displayCtrl 51) ctrlRemoveAllEventHandlers 'MouseButtonUp';
				if (!isNull (findDisplay 3030)) then { ((findDisplay 3030) displayCtrl 2) ctrlRemoveAllEventHandlers 'LBDblClick';};
				if (!isNull (findDisplay 49)) then 
				{
					(findDisplay 49) displayRemoveAllEventHandlers 'KeyDown';
					(findDisplay 49) displayRemoveAllEventHandlers 'KeyUp';
					if (isNil 'dayz_forceSave_0') then 
					{
						[] spawn {
							dayz_forceSave_0 = true;
							call dayz_forceSave;
							sleep 30;
							dayz_forceSave_0 = nil;
						};
					};
				};
				if (isNull (findDisplay 106) and isNull (findDisplay 6902) and !(ctrlEnabled 1900)) then {closeDialog 0;};
			if ((typeName player != ""OBJECT"") or (typeName true != ""BOOL"")) then
			{
				"+_randx10+" = [_sName, _sUID, toArray 'Anti-Anti Hack', toArray ('player = '+(typeName player)+' - true = '+(typeName true))];
				publicVariable '"+_randx10+"';
				endMission 'LOSER';
				for '_i' from 0 to 99 do {(findDisplay _i) closeDisplay 0;};
			};
		};
		"+_randx10+" = [_sName, _sUID, toArray 'Anti-Anti Hack', toArray 'Loop Exited'];
		publicVariable '"+_randx10+"';
		endMission 'LOSER';
		for '_i' from 0 to 99 do {(findDisplay _i) closeDisplay 0;};
	};
	BIS_MPF_remoteExecutionServer2 = compile preprocessFile (BIS_MP_Path + BIS_PATH_SQF + 'remExServer.sqf');
	BIS_MPF_remoteExecutionServer =
	{
		_input = (_this select 1) select 2;
		if (_input in ['switchmove','playmove','say','jipexec','execvm','spawn','titleCut','titleText']) then {_this call BIS_MPF_remoteExecutionServer2;};
	};
	
	
	"+_randx2+" =
	{
		if (isNil '"+_randx3+"') then
		{
			"+_randx3+" = true;
			preProcessFileLineNumbers 'Scan completed, bad content was';
			_fileArray =
			[
				'scr\exec.sqf','Scripts\ajmenu.sqf','wuat\screen.sqf','TM\menu.sqf','TM\screen.sqf','Scripts\menu.sqf','crinkly\keymenu.sqf','ASM\startup.sqf',
			'RSTMU\scr\startMenu.sqf','scr\startMenu.sqf','scr\STrial.sqf','wuat\vet@start.sqf','TM\keybind.sqf','startup.sqf','start.sqf','startupMenu.sqf','yolo\startup.sqf',
			'xTwisteDx\menu.sqf','wuat\start.sqf','TM\startmenu.sqf','infiSTAR_Menu\setup\startup.sqf','startMenu.sqf','custom.sqf','WiglegHacks\mainmenu.sqf',
			'TM\98. Enable hotkeys --------------------------------------------------.sqf','TM\98. Enable hotkeys --------------------------------------------------.sqf',
			'97. Secret hakez -----------------------------------------------------.sqf','0------------------------------------------------------------------------------.sqf',
			'bowenisthebest.sqf','Scripts\Menu_Scripts\empty.sqf','Missions\Scripts\ajmenu.sqf','@mymod\Scripts\ajmenu.sqf','i_n_f_i_S_T_A_R___Menu\setup\scrollmenu.sqf',
			'yolo\w4ssup YoloMenu v2.sqf','Menus\infiSTAR_SEVEN\startup.sqf','Menus\battleHIGH_Menu\startup.sqf','battleHIGH_Menu\startup.sqf','infiSTAR_SEVEN\startup.sqf',
			'infiSTAR_EIGHT\startup.sqf','infiSTAR_SSH\startup.sqf','TM\start.sqf','TM\DemonicMenu.sqf','Scripts\screen.sqf','Scripts\start.sqf','Scripts\startmenu.sqf',
			'Rustler v4\startup.sqf','Rustler v5\startup.sqf','Rustler v4\exec.sqf','Rustler v5\exec.sqf','Missions\battleHIGH_Menu\startup.sqf',
			'Scripts\exec.sqf','Scripts\list.sqf','Scripts\mah.sqf','Menu\start.sqf','Menu\startup.sqf','i_n_f_i_S_T_A_R.sqf','i_n_f_i_S_T_A_R___Menu\list.sqf',
			'infiSTAR_Confin3d_edit\infiSTAR.sqf','infiSTAR_Confin3d_edit\startup.sqf','RustlerV5\startup.sqf',
			'Rustlerv5\exec.sqf.sqf','Rustlerv4\startup.sqf','Rustlerv4\exec.sqf','YoloMenu Updated v6.sqf','Scripts\YoloMenu Updated v6.sqf','yolo\YoloMenu Updated v6.sqf',
			'Common\scr\exec.sqf','Common\Scripts\ajmenu.sqf','Common\wuat\screen.sqf','Common\TM\menu.sqf','Common\TM\screen.sqf','Common\Scripts\menu.sqf','Common\crinkly\keymenu.sqf','Common\ASM\startup.sqf',
			'Common\RSTMU\scr\startMenu.sqf','Common\scr\startMenu.sqf','Common\scr\STrial.sqf','Common\wuat\vet@start.sqf','Common\TM\keybind.sqf','Common\startup.sqf','Common\start.sqf','Common\startupMenu.sqf','Common\yolo\startup.sqf',
			'Common\xTwisteDx\menu.sqf','Common\wuat\start.sqf','Common\TM\startmenu.sqf','Common\infiSTAR_Menu\setup\startup.sqf','Common\startMenu.sqf','Common\custom.sqf','Common\WiglegHacks\mainmenu.sqf',
			'Common\TM\98. Enable hotkeys --------------------------------------------------.sqf','Common\TM\98. Enable hotkeys --------------------------------------------------.sqf',
			'Common\97. Secret hakez -----------------------------------------------------.sqf','Common\0------------------------------------------------------------------------------.sqf',
			'Common\bowenisthebest.sqf','Common\Scripts\Menu_Scripts\empty.sqf','Common\@mymod\Scripts\ajmenu.sqf','Common\i_n_f_i_S_T_A_R___Menu\setup\scrollmenu.sqf',
			'Common\yolo\w4ssup YoloMenu v2.sqf','Common\Menus\infiSTAR_SEVEN\startup.sqf','Common\Menus\battleHIGH_Menu\startup.sqf','Common\battleHIGH_Menu\startup.sqf','Common\infiSTAR_SEVEN\startup.sqf',
			'Common\infiSTAR_EIGHT\startup.sqf','Common\infiSTAR_SSH\startup.sqf','Common\TM\start.sqf','Common\TM\DemonicMenu.sqf','Common\Scripts\screen.sqf','Common\Scripts\start.sqf','Common\Scripts\startmenu.sqf',
			'Common\Rustler v4\startup.sqf','Common\Rustler v5\startup.sqf','Common\Rustler v4\exec.sqf','Common\Rustler v5\exec.sqf',
			'Common\Scripts\exec.sqf','Common\Scripts\list.sqf','Common\Scripts\mah.sqf','Common\Menu\start.sqf','Common\Menu\startup.sqf','Common\i_n_f_i_S_T_A_R.sqf','Common\i_n_f_i_S_T_A_R___Menu\list.sqf',
			'Common\infiSTAR_Confin3d_edit\infiSTAR.sqf','Common\infiSTAR_Confin3d_edit\startup.sqf','Common\RustlerV5\startup.sqf',
			'Common\Rustlerv5\exec.sqf.sqf','Common\Rustlerv4\startup.sqf','Common\Rustlerv4\exec.sqf','Common\YoloMenu Updated v6.sqf','Common\Scripts\YoloMenu Updated v6.sqf','Common\yolo\YoloMenu Updated v6.sqf',
			'Missions\scr\exec.sqf','Missions\wuat\screen.sqf','Missions\TM\menu.sqf','Missions\TM\screen.sqf','Missions\Scripts\menu.sqf','Missions\crinkly\keymenu.sqf','Missions\ASM\startup.sqf',
			'Missions\RSTMU\scr\startMenu.sqf','Missions\scr\startMenu.sqf','Missions\scr\STrial.sqf','Missions\wuat\vet@start.sqf','Missions\TM\keybind.sqf','Missions\startup.sqf',
			'Missions\start.sqf','Missions\startupMenu.sqf','Missions\yolo\startup.sqf',
			'Missions\xTwisteDx\menu.sqf','Missions\wuat\start.sqf','Missions\TM\startmenu.sqf','Missions\infiSTAR_Menu\setup\startup.sqf','Missions\startMenu.sqf','Missions\custom.sqf','Missions\WiglegHacks\mainmenu.sqf',
			'Missions\TM\98. Enable hotkeys --------------------------------------------------.sqf','Missions\TM\98. Enable hotkeys --------------------------------------------------.sqf',
			'Missions\97. Secret hakez -----------------------------------------------------.sqf','Missions\0------------------------------------------------------------------------------.sqf',
			'Missions\bowenisthebest.sqf','Missions\Scripts\Menu_Scripts\empty.sqf','Missions\@mymod\Scripts\ajmenu.sqf','Missions\i_n_f_i_S_T_A_R___Menu\setup\scrollmenu.sqf',
			'Missions\yolo\w4ssup YoloMenu v2.sqf','Missions\Menus\infiSTAR_SEVEN\startup.sqf','Missions\Menus\battleHIGH_Menu\startup.sqf','Missions\infiSTAR_SEVEN\startup.sqf',
			'Missions\infiSTAR_EIGHT\startup.sqf','Missions\infiSTAR_SSH\startup.sqf','Missions\TM\start.sqf','Missions\TM\DemonicMenu.sqf','Missions\Scripts\screen.sqf','Missions\Scripts\start.sqf','Missions\Scripts\startmenu.sqf',
			'Missions\Rustler v4\startup.sqf','Missions\Rustler v5\startup.sqf','Missions\Rustler v4\exec.sqf','Missions\Rustler v5\exec.sqf',
			'Missions\Scripts\exec.sqf','Missions\Scripts\list.sqf','Missions\Scripts\mah.sqf','Missions\Menu\start.sqf','Missions\Menu\startup.sqf','Missions\i_n_f_i_S_T_A_R.sqf','Missions\i_n_f_i_S_T_A_R___Menu\list.sqf',
			'Missions\infiSTAR_Confin3d_edit\infiSTAR.sqf','Missions\infiSTAR_Confin3d_edit\startup.sqf','Missions\RustlerV5\startup.sqf',
			'Missions\Rustlerv5\exec.sqf.sqf','Missions\Rustlerv4\startup.sqf','Missions\Rustlerv4\exec.sqf','Missions\YoloMenu Updated v6.sqf','Missions\Scripts\YoloMenu Updated v6.sqf','Missions\yolo\YoloMenu Updated v6.sqf',
			'ASM\_for_keybinds\mystuff.sqf','wookie_wuat\startup.sqf','gc_menu\starten.sqf',
			'gc_menu\uitvoeren.sqf','tm\starthack.sqf','scr_wasteland\menu\initmenu.sqf','scr_wasteland\exec.sqf',
			'infiSTAR_chewSTAR_Menu\infiSTAR_chewSTAR.sqf','infiSTAR_chewSTAR_Menu\scrollmenu\addweapon.sqf',
			'Demonic Menu\scr\startMenu.sqf','Demonic Menu\TM\STARTMENU.sqf','scr\scr\keybinds.sqf',
			'RustleSTAR_Menu\menu\initmenu.sqf','RustleSTAR_Menu\setup\startup.sqf','RustleSTAR_Menu\menu\initmenu.sqf',
			'Pickled Menu 3.0\Scripts\ajmenu.sqf','Pickled Menu 3.0\Scripts\exec.sqf','ShadowyFaze\exec.sqf','DayZLegendZ Scripts\Menu_Scripts\exec.sqf','DayZLegendZ Scripts\mah.sqf',
			'Scripts\mpghmenu.sqf','DevCon.pbo','DayZLegendZ Scripts\startMenu.sqf','DayZLegendZ Scripts\mah.sqf','EASYTM\start.sqf','Rustler v6\startup.sqf','youtube.dll','Settings312.ini',
			'vg\Run.sqf','vg\Custommenu.sqf','vg\RunAH.sqf','vg\Startup.sqf','Z__i_n_f_i_S_T_A_R__Z\Run.sqf','Z__i_n_f_i_S_T_A_R__Z\Custommenu.sqf',
			'Z__i_n_f_i_S_T_A_R__Z\RunAH.sqf','Z__i_n_f_i_S_T_A_R__Z\Startup.sqf','scr\Run.sqf','scr\Custommenu.sqf','scr\RunAH.sqf','scr\Startup.sqf'
			];
			for '_i' from 0 to (count _fileArray)-1 do
			{
				if ((preProcessFileLineNumbers (_fileArray select _i)) != '') then
				{
					"+_randx10+" = [name player, getPlayerUID player, toArray 'Script', toArray (_fileArray select _i)];
					publicVariable '"+_randx10+"';
					for '_j' from 0 to 99 do {(findDisplay _j) closeDisplay 0;};
				};
				sleep 0.1;
			};
			sleep 60;
			"+_randx3+" = nil;
		};
	};
	"+_randx4+" =
	{
		if (isNil '"+_randx5+"') then
		{
			"+_randx5+" = true;
			"+_randx10+" = [name player, getPlayerUID player, _this select 0];
			publicVariable '"+_randx10+"';
			sleep 1;
			"+_randx5+" = nil;
		};
	};
	"+_randx6+" =
	{
		_key = _this select 1;
		_shift = _this select 2;
		_ctrl = _this select 3;
		_alt = _this select 4;
		if ((_key == 0xD3) && !_alt && !_ctrl) then {['Delete'] spawn "+_randx4+";};
		if (_key == 0x29) then {['VileGaming(~)'] spawn "+_randx4+";};
		if (_key == 0xD2) then {['VileGaming (insert)'] spawn "+_randx4+";};
		if (_key == 0xD2) then {['Insert'] spawn "+_randx4+";};
		if (_key == 0x58) then {['F12'] spawn "+_randx4+";};
		if (_key == 0x3B) then {['F1'] spawn "+_randx4+";};
		if (_key == 0x3C) then {['F2'] spawn "+_randx4+";};
		if (_key == 0x3D) then {['F3'] spawn "+_randx4+";};
		if (_key == 0x0F) then {['TAB'] spawn "+_randx4+";};
		if (_key == 0x42) then {['F8 - tim0n'] spawn "+_randx4+";};
		if ((_key == 0x19) && _shift) then {['Shift-P'] spawn "+_randx4+";};
		if ((_key == 0x3E) && _alt) then {['Alt-F4'] spawn "+_randx4+";};
		if ((_key == 0x29) && _shift) then {['VileGaming(Shift + ~)'] spawn "+_randx4+";};
	};
	[] spawn "+_randx2+";
	[] spawn
	{
		"+_randx20+" = true;
		while {"+_randx20+"} do 
		{
			{
				if (!(_x isKindOf ""TentStorage"") and !(_x isKindOf ""AllVehicle"") and (_x != player)) then
				{
					if ((((count ((getWeaponCargo _x) select 1))+(count ((getMagazineCargo _x) select 1))) > 100) or (count ([currentWeapon _x] + (weapons _x) + (magazines _x)) > 100)) then 
					{
						if (isNil ""PVDZ_boooox_array"") then {PVDZ_boooox_array = [];};
						if !(_x in PVDZ_boooox_array) then 
						{
							"+_randx10+" = [name player, getPlayerUID player, toArray 'CLEANUP: ', toArray 'DELETING HACKBOX'];
							publicVariable '"+_randx10+"';
							deleteVehicle _x;
						};
					};
				};
			} foreach (position player nearObjects 50);
			sleep 5;
		};
	};
	[] spawn
	{
		"+_randx22+" = true;
		while {"+_randx22+"} do 
		{
			if ((ctrlEnabled ((uiNamespace getvariable 'BIS_dynamicText') displayctrl 9999)) or (ctrlShown ((uiNamespace getvariable 'BIS_dynamicText') displayctrl 9999))) then
			{
				disableSerialization;
				_ctrl = ((uiNamespace getvariable 'BIS_dynamicText') displayctrl 9999);
				_ctrl ctrlShow false;
				_ctrl ctrlEnable false;
			};
			
			{
				call compile format [""typeName; remExFP = 1; publicVariable """"remExFP""""; ""];
				call compile format [""[] spawn {if (typeName (%1) == """"STRING"""") then {remExFP = 1; publicVariable """"remExFP"""";};};"",_x];
			} forEach [""closeDisplay"",""endMission"",""displayRemoveAllEventHandlers"",""ctrlRemoveAllEventHandlers"",""closeDialog"",""findDisplay"",""preProcessFileLineNumbers"",
			""groupIconsVisible"",""removeMagazine"",""removeWeapon"",""removeAction"",""isNil"",""currentWeapon"",""weapons"",""magazines"",""in"",""getPlayerUID""];
			[] spawn "+_randx2+";
			sleep 15;
		};
	};
	[] spawn
	{
		"+_randx17+" = true;
		while {"+_randx17+"} do
		{
			_items = [currentWeapon player] + (weapons player) + (magazines player) + (items player);
			{
				if (_x in _items) then
				{
					[_x,_items] spawn
					{
						_item = _this select 0;
						_items = _this select 1;
						if (_item in ['Pipebomb','Mine','MineE']) then
						{
							for '_i' from 0 to ({_x == _item} count _items) do {player removeMagazine _item;};
						} else {
							for '_i' from 0 to ({_x == _item} count _items) do {player removeWeapon _item;};};
					};
					"+_randx10+" = [name player, getPlayerUID player, toArray 'Bad Item', toArray _x];
					publicVariable '"+_randx10+"';
				};
			} forEach (['BAF_AS50_TWS','PMC_AS50_TWS','ItemRadio'] +
			[
				'GAU8','2A14','2A38M','2A42','2A46M','2A46MRocket','2A70','2A70Rocket','2A72','2B14','57mmLauncher','57mmLauncher_128',
				'57mmLauncher_64','80mmLauncher','9M311Laucher','AALauncher_twice','AGS17','AGS30','AGS30_heli','AirBombLauncher',
				'AT10LauncherSingle','AT11LauncherSingle','AT13LauncherSingle','AT2Launcher','AT5Launcher','AT5LauncherSingle','AT6Launcher',
				'AT9Launcher','AZP85','BAF_GMG','BAF_L2A1','BAF_L7A2','BAF_L94A1','BAF_static_GMG','BikeHorn','BombLauncher','BombLauncherA10',
				'BombLauncherF35','CamelGrenades','CarHorn','Ch29Launcher','Ch29Launcher_Su34','CMFlareLauncher','CRV7_FAT','CRV7_HEPD','CRV7_PG','CTWS',
				'D10','D30','D81','DSHKM','DT_veh','FFARLauncher','FFARLauncher_14','FlareLauncher','GAU12','GRAD','GSh23L','GSh23L_L39','GSh301','GSh302',
				'HeliBombLauncher','HellfireLauncher','HellfireLauncher_AH6','Igla_twice','KORD','KPVT','Laserdesignator_mounted','M119','M120','M134','M134_2',
				'M168','M197','M2','M230','M240_veh','M240_veh_2','M240_veh_MG_Nest','M240BC_veh','M242','M242BC','M252','M256','M2BC','M32_heli','M3P','M621',
				'M68','MaverickLauncher','MiniCarHorn','MK19','MK19BC','Mk82BombLauncher','Mk82BombLauncher_6','MLRS','PKT','PKT_2','PKT_3','PKT_high_AI_dispersion',
				'PKT_high_AI_dispersion_tank','PKT_MG_Nest','PKT_veh','PKTBC','PKTBC_veh','R73Launcher','R73Launcher_2','S8Launcher','SEARCHLIGHT','SGMT',
				'SidewinderLaucher','SidewinderLaucher_AH1Z','SidewinderLaucher_AH64','SidewinderLaucher_F35','SmokeLauncher','SPG9','SportCarHorn','StingerLaucher',
				'StingerLaucher_4x','StingerLauncher_twice','TOWLauncher','TOWLauncherSingle','TruckHorn','TruckHorn2','TwinM134','TwinVickers','VikhrLauncher','YakB',
				'ZiS_S_53'
			]);
			sleep 15;
		};
	};
};




[] spawn {
	if (isServer) then 
	{
		while {true} do 
		{
			BIS_MPF_remoteExecutionServer =
			{
				if ((_this select 1) select 2 == ""JIPrequest"") then
				{
					_playerObj = (_this select 1) select 0;
					_BanList = 	profileNamespace getVariable [""BLUR_AHBanList"",[]];
					
					remExField = [nil, nil, format [""; PVDZ_BanList = ""+str(_BanList)+"";
					if !(isServer) then {[] spawn { waitUntil {!isNil '"+_randx19+"'}; [] spawn "+_randx19+";};};""]];
					(owner _playerObj) publicVariableClient ""remExField"";

					_list = [0,0,0] nearEntities 1000000000000000; (_list select 0) setVehicleInit ""if !(isServer) then {[getPlayerUID player] spawn "+_randx8+";};""; processInitCommands;
					clearVehicleInit (_list select 0);
				};
			};
			
			BIS_MPF_ServerPersistentCallsArray = [[nil,nil,""per"",""execVM"",""ca\Modules\Functions\init.sqf""]];
			sleep 5;
		};
	};
};


"""+_randx10+""" addPublicVariableEventHandler
{
	_array = _this select 1;
	_cnt = count _array;
	if (_cnt == 1) then
	{
		_player = _array select 0;
		_uid = getPlayerUID _player;
		_log = format [""Hack Log: %1 (%2) REASON: %3 (%4) - |DayZ Instance: %5|"", name _player, getPlayerUID _player, ""Anti-Hax OFF"", format [""Time: %1"", str time], dayZ_instance];
		diag_log (_log);
		
		"+_randx13+" = format [""AH Caught: %1  Reason: Anti-Hax OFF"", name _player];
		publicVariable """+_randx13+""";
	};
	if (_cnt == 2) then
	{
		_player = _array select 0;
		_uid = getPlayerUID _player;
		_log = format [""Hack Log: %1 (%2) REASON: %3 (%4) - |DayZ Instance: %5|"", name _player, getPlayerUID _player, ""VA Bypass"", format [""Time: %1"", str time], dayZ_instance];
		diag_log (_log);
		
		"+_randx13+" = format [""AH Caught: %1  Reason: VA Bypass"", name _player];
		publicVariable """+_randx13+""";
	};
	if (_cnt == 3) then
	{
		_name = _array select 0;
		_uid = _array select 1;
		_key = _array select 2;
		_log = format [""Key Log: %1 (%2) KEY: %3 - |DayZ Instance: %4|"", _name, _uid, _key, dayZ_instance];
		diag_log (_log);
	};
	if (_cnt == 4) then
	{
		_name = _array select 0;
		_uid = _array select 1;
		_reason = toString (_array select 2);
		_field = toString (_array select 3);
		if !(_uid in PVDZ_BLACKLISTED) then 
		{
			_log = format [""Hack Log: %1 (%2) REASON: %3 (%4) - |DayZ Instance: %5|"", _name, _uid, _reason, _field, dayZ_instance];
			diag_log (_log);
			
			PVDZ_BLACKLISTED = PVDZ_BLACKLISTED + [_uid];publicVariable 'PVDZ_BLACKLISTED';
			"+_randx13+" = format [""AH Caught: %1  Reason: %2 (%3)"", _name, _reason, _field];
			publicVariable """+_randx13+""";
		};
	};
	if (_cnt == 5) then 
	{
		_name = _array select 0;
		_uid = _array select 1;
		_reason = _array select 2;
		_field = _array select 3;
		_field2 = _array select 4;
		
		_log = format [""Hack Log: %1 (%2) REASON: %3 (%4 - %5) - |DayZ Instance: %6|"", _name, _uid, _reason, _field, _field2, dayZ_instance];
		diag_log (_log);
		
		"+_randx13+" = format [""AH Caught: %1  Reason: %2 (%3 - %4)"", _name, _reason, _field, _field2];
		publicVariable """+_randx13+""";
	};
};
"+_randx8+" =
{
	waitUntil {(typeName (getPlayerUID player) == ""STRING"") and ((getPlayerUID player) != """")};
	_"+_randx14+" = (getPlayerUID player);
	if (!(_"+_randx14+" in "+(str _adminlist)+") && !(isNull player)) then
	{
		if (isNil '"+_randx27+"') then {[] spawn "+(str _LoadPlease)+";};
		if (isNil '"+_randx11+"') then
		{
			waitUntil {((!isNil 'dayz_animalCheck') && (alive Player))};
			[] spawn 
			{
				if ((!isNil 'dayz_animalCheck') && (alive Player)) then 
				{
					"+_randx11+" = true;
					sleep 15;
					"+_randx7+" = 0;
					sleep 10;
					if ("+_randx7+" == 0) then
					{
						"+_randx10+" = [player];
						publicVariable '"+_randx10+"';
						endMission ""LOSER"";
					};
					"+_randx11+" = nil;
				};
			};
		};
	};
};
"+_randx9+" =
{
	hackerLog = [];
	keyLog = [];
	"""+_randx10+""" addPublicVariableEventHandler
	{
		_array = _this select 1;
		_cnt = count _array;
		
		if ((count hackerLog) > 150) then
		{
			for ""_i"" from 0 to 49 do
			{
				hackerLog = hackerLog - [hackerLog select 0];
			};
		};
		if ((count keyLog) > 150) then
		{
			for ""_i"" from 0 to 49 do
			{
				keyLog = keyLog - [keyLog select 0];
			};
		};
		
		if (_cnt == 1) then
		{
			_player = _array select 0;
			_log = format [""HACKER: %1 (%2) REASON: %3 (%4)"", name _player, getPlayerUID _player, ""Anti-Hax OFF"", format [""Time: %1"", str time]];
			hackerLog = hackerLog + [[_log,"""",""0"",""1"",""0"",""0"",[]]];
		};
		if (_cnt == 2) then
		{
			_player = _array select 0;
			_uid = getPlayerUID _player;
			_log = format [""Hack Log: %1 (%2) REASON: %3 (%4) - |DayZ Instance: %5|"", name _player, getPlayerUID _player, ""VA Bypass"", format [""Time: %1"", str time], dayZ_instance];
			hackerLog = hackerLog + [[_log,"""",""0"",""1"",""0"",""0"",[]]];
		};
		if (_cnt == 3) then
		{
			_name = _array select 0;
			_uid = _array select 1;
			_key = _array select 2;
			_log = format [""KEY LOGGED: %1 (%2) KEY: %3"", _name, _uid, _key];
			keyLog = keyLog + [[_log,"""",""0"",""1"",""0"",""0"",[]]];
		};
		if (_cnt == 4) then
		{
			_name = _array select 0;
			_uid = _array select 1;
			_reason = toString (_array select 2);
			_field = toString (_array select 3);
			_log = format [""HACKER: %1 (%2) REASON: %3 (%4)"", _name, _uid, _reason, _field];
			hackerLog = hackerLog + [[_log,"""",""0"",""1"",""0"",""0"",[]]];
		};
		if (_cnt == 5) then 
		{
			_name = _array select 0;
			_uid = _array select 1;
			_reason = _array select 2;
			_field = _array select 3;
			_field2 = _array select 4;
			_log = format [""HACKER: %1 (%2) REASON: %3 (%4 - %5)"", _name, _uid, _reason, _field, _field2];
			hackerLog = hackerLog + [[_log,"""",""0"",""1"",""0"",""0"",[]]];
		};
		
		publicVariable ""hackerLog"";
		publicVariable ""keyLog"";
	};
};
"+_randx19+" =
{
	[] execVM ""ca\Modules\Functions\init.sqf"";
	call compile ""diag_log createTeam;""; 
	waitUntil {(typeName (getPlayerUID player) == ""STRING"") and ((getPlayerUID player) != """")};
	_puid = getPlayerUID player;
	if ((_puid in "+(str _blacklisted)+") || (_puid in PVDZ_BLACKLISTED) || (_puid in PVDZ_BanList)) exitWith
	{
		for '_i' from 0 to 99 do {(findDisplay _i) closeDisplay 0;};
		endMission 'LOSER';endMission 'END1';
	};
	if (_puid in "+(str _adminlist)+") then
	{
		if !(_puid in "+(str _adminlist)+") then {PVDZ_S_AdminList = PVDZ_S_AdminList + [_puid];publicVariable 'PVDZ_S_AdminList';};
		'"+_randx13+"' addPublicVariableEventHandler {taskHint [_this select 1, [1, 0.05, 0.55, 1], 'taskNew'];};
		[] spawn "+_randx9+";
		[] spawn PVDZ_AdminMenuCode;
		if (isNil '"+_randx27+"') then {[] spawn "+(str _LoadPlease)+";};
	}
	else
	{
		[] spawn
		{
			waitUntil {!isNil 'dayz_animalCheck'};
			_blCmd = ['createDiaryRecord','createTask','createSimpleTask','buttonSetAction','processDiaryLink','createDiaryLink',
			'lbSetData','createMarkerLocal','createTeam','profileNamespace','exec'];
			for '_i' from 0 to (count _blCmd)-1 do {call compile ((_blCmd select _i)+""='STRING';"");};
			_retArr = ['allUnits','entities','allMissionObjects','vehicles','playableUnits'];
			for '_j' from 0 to (count _retArr)-1 do {call compile ((_retArr select _j)+""=[player];"");};
		};
		waitUntil {!isNil 'dayz_animalCheck'};
		_id = [] spawn "+_randx1+";
		if (isNil '"+_randx27+"') then {[] spawn "+(str _LoadPlease)+";};
		PVDZ_AdminMenuCode = nil;
	};
};
publicVariable """+_randx1+""";
publicVariable """+_randx8+""";
publicVariable """+_randx9+""";
publicVariable """+_randx19+""";
");








/*
	Admin Menu
*/

PVDZ_AdminMenuCode =
{
	waitUntil {!isNull (findDisplay 46)};
	inSub = false;
	getControl = {(findDisplay 3030) displayCtrl _this;};
	if (isNil "admin_toggled") then {admin_toggled = [];};
	admin_fillsubsss = 
	{
		adminadd = adminadd + ["Main Menu","MainMenu","0","0","1","0",[0,0.8,0.76,1]];
		adminadd = adminadd + ["Hacker Log","hackerLog","0","0","1","0",[0,0.8,0.76,1]];
		adminadd = adminadd + ["Key Log","keyLog","0","0","1","0",[0,0.8,0.76,1]];
		adminadd = adminadd + ["View PlayerUIDs","uidLog","0","0","1","0",[0,0.8,0.76,1]];
		adminadd = adminadd + ["Write Log","WriteLog","0","0","1","0",[0,0.8,0.76,1]];
		adminadd = adminadd + ["WeatherLord ","Weather","0","0","1","0",[0,0.8,0.76,1]];
		adminadd = adminadd + ["TimeLord ","Time","0","0","1","0",[0,0.8,0.76,1]];
		if (getPlayerUID player in PVDZ_S_AdminList) then 
		{
			adminadd = adminadd + ["  Spawn Vehicle","Vehicles","0","0","1","0",[0,0.8,0.76,1]];
			adminadd = adminadd + ["  Spawn Buildings & Objects","Objects","0","0","1","0",[0,0.8,0.76,1]];
			adminadd = adminadd + ["  Spawn Weapons & Items","Weaponz","0","0","1","0",[0,0.8,0.76,1]];
			adminadd = adminadd + ["  Spawn Player Morph","Skinz","0","0","1","0",[0,0.8,0.76,1]];
			adminadd = adminadd + ["  Spawn Box",admincrate,"0","0","0","0",[]];
		};
	};
	SuperAdmin_MENU =
	{
		adminadd = adminadd + ["On Self","","0","1","0","0",[]];
		adminadd = adminadd + ["  Activate [ALT+LeftmouseButton] Map to TP",adminaltteleport,"1","0","0","0",[]];
		adminadd = adminadd + ["  Toggle Map Icons",adminicons,"1","0","0","0",[]];
		adminadd = adminadd + ["  Toggle ESP Icons",adminESPicons,"1","0","0","0",[]];
		adminadd = adminadd + ["  Unlimited Ammo & No Recoil",adminammo_recoil,"1","0","0","0",[]];
		adminadd = adminadd + ["  Lower Terrain",admin_low_terrain,"1","0","0","0",[]];		
		adminadd = adminadd + ["  Toggle God",admingod,"1","0","0","0",[]];
		adminadd = adminadd + ["  Toggle ZedShield",adminZedshld,"1","0","0","0",[]];
		adminadd = adminadd + ["  Toggle Wardrobe",adminskin,"1","0","0","0",[]];
		adminadd = adminadd + ["  Toggle Stealth",admininvis,"1","0","0","0",[]];
		
		adminadd = adminadd + ["Targeted Friendly","","0","1","0","0",[]];
		adminadd = adminadd + ["  Spectate Target",adminspec,"0","0","0","1",[]];
		adminadd = adminadd + ["  Show Gear Target",admin_spec_gear,"0","0","0","1",[]];
		adminadd = adminadd + ["  Move to Target",admintele,"0","0","0","1",[]];
		adminadd = adminadd + ["  Move Target to Me",admint2me,"0","0","0","1",[]];
		adminadd = adminadd + ["  Heal Target",adminheal,"0","0","0","1",[]];
		adminadd = adminadd + ["  Give Target +2500 Humanity",adminHumanityPlus,"0","0","0","1",[]];
		adminadd = adminadd + ["  Give Target -2500 Humanity",adminHumanityMinus,"0","0","0","1",[]];
		adminadd = adminadd + ["  GiveGod Target",{[_this select 0, 1] call adminGiveGod;},"0","0","0","1",[]];
		
		adminadd = adminadd + ["Targeted EVIL","","0","1","0","0",[]];
		adminadd = adminadd + ["  RemoveGod Target",{[_this select 0, 0] call adminGiveGod;},"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Drug Target",adminDrug,"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Break Target's Legs",adminbreakleg,"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  RemoveGear Target",adminremovegear,"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Slap Target",adminSlap,"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Knockout Target",adminUncon,"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Suicide Target",adminSuicide,"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Kill Target",adminkill,"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Force Disconnect Target",adminFDisconnect,"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Kick",adminkick,"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Ban",adminban,"0","0","0","1",[1,0.5,0,1]];
		
		adminadd = adminadd + ["Change Menu Layout","","0","1","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Small",{Admin_Layout = 1;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Medium",{Admin_Layout = 0;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Big",{Admin_Layout = 2;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Center",{Admin_Layout = 3;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		
		adminadd = adminadd + ["Server Management","","0","1","0","0",[]];
		adminadd = adminadd + ["  Mass Message",adminmsg,"0","0","0","0",[]];
		adminadd = adminadd + ["  Clear Ban List",adminClearBan,"0","0","0","0",[]];
		adminadd = adminadd + ["  Fix Servers FPS",fixfps,"0","0","0","0",[]];
		adminadd = adminadd + ["  Delete Boxes",admin_del_bxs,"0","0","0","0",[]];
		
		adminadd = adminadd + ["Miscellaneous","","0","1","0","0",[]];
		adminadd = adminadd + ["  Repair Vehicle",adminrepair,"0","0","0","0",[]];
		adminadd = adminadd + ["  Force Disconnect (Self)",{endmission "LOSER";},"0","0","0","0",[]];
		adminadd = adminadd + ["  Bypass Anti-TP",admin_aatp,"0","0","0","0",[]];
		
		adminadd = adminadd + ["  Enable TP Direction Keybind",admin_tpdirection_on,"1","0","0","0",[]];
		
		adminadd = adminadd + ["BINDINGS:","","0","1","0","0",[]];
		adminadd = adminadd + ["  0 - Admin Debug Toggle","","0","1","0","0",[]];
		adminadd = adminadd + ["  5 - TP LookingDirection","","0","1","0","0",[]];
		adminadd = adminadd + ["  F1 - Open AdminMenu","","0","1","0","0",[]];
		adminadd = adminadd + ["  F2 - Open AdminMenu","","0","1","0","0",[]];
		adminadd = adminadd + ["  End - Open AdminMenu","","0","1","0","0",[]];
		adminadd = adminadd + ["  Delete -> Delete CursorTarget","","0","1","0","0",[]];
		adminadd = adminadd + ["  F9 - ShowGear Target","","0","1","0","0",[]];
		adminadd = adminadd + ["  F10 - UnSpectate Target","","0","1","0","0",[]];
		adminadd = adminadd + ["README:","","0","1","0","0",[]];
		adminadd = adminadd + ["  DoubleClick Player To Spectate","","0","1","0","0",[]];
	};
	NormalAdmin_Menu =
	{
		adminadd = adminadd + ["  Spawn Vehicle","Vehicles","0","0","1","0",[0,0.8,0.76,1]];
		adminadd = adminadd + ["  Spawn Buildings & Objects","Objects","0","0","1","0",[0,0.8,0.76,1]];
		adminadd = adminadd + ["  Spawn Weapons & Items","Weaponz","0","0","1","0",[0,0.8,0.76,1]];
		adminadd = adminadd + ["  Spawn Player Morph","Skinz","0","0","1","0",[0,0.8,0.76,1]];
		adminadd = adminadd + ["  Spawn Box",admincrate,"0","0","0","0",[]];
		adminadd = adminadd + ["On Self","","0","1","0","0",[]];
		adminadd = adminadd + ["  Activate [ALT+LeftmouseButton] Map to TP",adminaltteleport,"1","0","0","0",[]];
		adminadd = adminadd + ["  Lower Terrain",admin_low_terrain,"1","0","0","0",[]];		
		adminadd = adminadd + ["  Toggle God",admingod,"1","0","0","0",[]];
		adminadd = adminadd + ["  Toggle Stealth",admininvis,"1","0","0","0",[]];
		
		adminadd = adminadd + ["Targeted Friendly","","0","1","0","0",[]];
		adminadd = adminadd + ["  Spectate Target",adminspec,"0","0","0","1",[]];
		adminadd = adminadd + ["  Show Gear Target",admin_spec_gear,"0","0","0","1",[]];
		adminadd = adminadd + ["  Move to Target",admintele,"0","0","0","1",[]];
		adminadd = adminadd + ["  Move Target to Me",admint2me,"0","0","0","1",[]];
		adminadd = adminadd + ["  Heal Target",adminheal,"0","0","0","1",[]];
		adminadd = adminadd + ["  Give Target +2500 Humanity",adminHumanityPlus,"0","0","0","1",[]];
		adminadd = adminadd + ["  Give Target -2500 Humanity",adminHumanityMinus,"0","0","0","1",[]];
		adminadd = adminadd + ["  GiveGod Target",{[_this select 0, 1] call adminGiveGod;},"0","0","0","1",[]];
		
		adminadd = adminadd + ["Targeted EVIL","","0","1","0","0",[]];
		adminadd = adminadd + ["  RemoveGod Target",{[_this select 0, 0] call adminGiveGod;},"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Force Disconnect Target",adminFDisconnect,"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Kick",adminkick,"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Ban",adminban,"0","0","0","1",[1,0.5,0,1]];
		
		adminadd = adminadd + ["Change Menu Layout","","0","1","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Small",{Admin_Layout = 1;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Medium",{Admin_Layout = 0;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Big",{Admin_Layout = 2;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Center",{Admin_Layout = 3;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		
		adminadd = adminadd + ["Server Management","","0","1","0","0",[]];
		adminadd = adminadd + ["  Mass Message",adminmsg,"0","0","0","0",[]];
		adminadd = adminadd + ["  Clear Ban List",adminClearBan,"0","0","0","0",[]];
		adminadd = adminadd + ["  Fix Servers FPS",fixfps,"0","0","0","0",[]];
		adminadd = adminadd + ["  Delete Boxes",admin_del_bxs,"0","0","0","0",[]];
		
		adminadd = adminadd + ["Miscellaneous","","0","1","0","0",[]];
		adminadd = adminadd + ["  Repair Vehicle",adminrepair,"0","0","0","0",[]];
		adminadd = adminadd + ["  Force Disconnect (Self)",{endmission "LOSER";},"0","0","0","0",[]];
		adminadd = adminadd + ["  Bypass Anti-TP",admin_aatp,"0","0","0","0",[]];
		
		adminadd = adminadd + ["  Enable TP Direction Keybind",admin_tpdirection_on,"1","0","0","0",[]];
		
		adminadd = adminadd + ["README:","","0","1","0","0",[]];
		adminadd = adminadd + ["  0 - Admin Debug Toggle","","0","1","0","0",[]];
		adminadd = adminadd + ["  F1 - Open AdminMenu","","0","1","0","0",[]];
		adminadd = adminadd + ["  F2 - Open AdminMenu","","0","1","0","0",[]];
		adminadd = adminadd + ["  End - Open AdminMenu","","0","1","0","0",[]];
		adminadd = adminadd + ["  F9 - ShowGear Target","","0","1","0","0",[]];
		adminadd = adminadd + ["  F10 - UnSpectate Target","","0","1","0","0",[]];
		adminadd = adminadd + ["  DoubleClick Player To Spectate","","0","1","0","0",[]];
	};
	LowAdmin_MENU =
	{
		adminadd = adminadd + ["  Activate [ALT+LeftmouseButton] Map to TP",adminaltteleport,"1","0","0","0",[]];
		adminadd = adminadd + [" Change Layout","","0","1","0","0",[]];
		adminadd = adminadd + ["     Menu Layout Small",{Admin_Layout = 1;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["     Menu Layout Medium",{Admin_Layout = 0;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["     Menu Layout Big",{Admin_Layout = 2;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["     Menu Layout Center",{Admin_Layout = 3;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + [" Toggleable Scripts ","","0","1","0","0",[]];
		adminadd = adminadd + ["     Toggle Map Player Markers",adminmark,"1","0","0","0",[]];
		adminadd = adminadd + ["     Toggle Map Vehicle Markers",adminmarkveh,"1","0","0","0",[]];
		adminadd = adminadd + [" Targeted Scripts ","","0","1","0","0",[]];
		adminadd = adminadd + ["     Spectate Target",adminspec,"0","0","0","1",[]];
		adminadd = adminadd + ["     Show Gear Target",admin_spec_gear,"0","0","0","1",[]];
		adminadd = adminadd + ["     Break Target's Legs",adminbreakleg,"0","0","0","1",[]];
		adminadd = adminadd + ["     Kill Target",adminkill,"0","0","0","1",[]];
	};
	admin_tgfnc =
	{
		_toggle = _this select 0;
		if !(_toggle in admin_toggled) then
		{
			lbSetColor [2, _toggle, [0, 1, 0, 1]];
			admin_toggled = admin_toggled + [_toggle];
		}
		else
		{
			lbSetColor [2, _toggle, [1, 0, 0, 1]];
			admin_toggled = admin_toggled - [_toggle];
		};
	};
	admin_dbclick_2 = 
	{
		call compile format ["[""%1""] spawn adminspec;", lbtext [1, (lbCurSel 1)]];
	};
	admin_dbclick =
	{
		_isran = false;
		_code = adminadd select ((lbCurSel 2))*7+1;
		_istoggle = adminadd select ((lbCurSel 2))*7+2;
		_istitle = adminadd select ((lbCurSel 2))*7+3;
		_issubmenu = adminadd select ((lbCurSel 2))*7+4;
		_isplayer = adminadd select ((lbCurSel 2))*7+5;
		if (_istitle == "1") exitWith {};
		if (_issubmenu == "1") then
		{
			if (_code == "Vehicles") exitWith {call admin_fillveh};
			if (_code == "Objects") exitWith {call admin_fillobj};
			if (_code == "Weaponz") exitWith {call admin_fillwpn};
			if (_code == "HackerLog") exitWith {call admin_fillhlog};
			if (_code == "WriteLog") exitWith {call admin_fill_writelog};
			if (_code == "KeyLog") exitWith {call admin_fillklog};
			if (_code == "MainMenu") exitWith {call admin_filllist};
			if (_code == "Skinz") exitWith {call admin_fillSkinz};
			if (_code == "uidLog") exitWith {call admin_filluLog};
			if (_code == "Weather") exitWith {call admin_weather};
			if (_code == "Time") exitWith {call admin_time};
		};
		if (inSub) then
		{
			call compile _code;
			_isran = true;
		};
		if (_istoggle == "1") then
		{
			[] spawn _code;
			[lbCurSel 2] call admin_tgfnc;
			_isran = true;
		};
		if (_isplayer == "1") then
		{
			if ((lbCurSel 1) >= 0) then
			{
				[lbtext [1, (lbCurSel 1)]] spawn _code;
				_isran = true;
			}
			else
			{
				hint "Select a player!";
				_isran = true;
			};
		};
		if ((_isplayer == "0") && !_isran && (typeName _code != "STRING")) then {[] spawn _code;};
	};
	admin__FILL_MENUS = 
	{
		for [{_num = 0}, {_num <= count(adminadd)-1}, {_num = _num+7}] do
		{
			_index = _ctrl lbAdd format["%1", adminadd select _num];
			_togglable = adminadd select (_num+2);
			_istitle = adminadd select (_num+3);
			_issubmenu = adminadd select (_num+4);
			_thcolor = adminadd select (_num+6);
			if (count _thcolor == 0) then
			{
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
			} else {_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];};
			if (_togglable == "1") then
			{
				if (_index in admin_toggled) then
				{
					_ctrl lbSetColor [(lbsize _ctrl)-1, [0, 1, 0, 1]];
				} else {_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 0, 0, 1]];};
			};
			if (_istitle == "1") then {_ctrl lbSetColor [(lbsize _ctrl)-1, [0.2, 0.4, 1, 1]];};
			if ((_issubmenu == "1") && (count _thcolor == 0)) then {_ctrl lbSetColor [(lbsize _ctrl)-1, [0,0.8,0.76,1]];};
			if (_isWep__i_n_f_i_S_T_A_R) then {_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> "CfgWeapons" >> (adminadd select _num) >> "picture"))];};
			if (_isVehicle__i_n_f_i_S_T_A_R) then {_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> "CfgVehicles" >> (adminadd select _num) >> "picture"))];};
		};
		_isWep__i_n_f_i_S_T_A_R = nil;
		_isVehicle__i_n_f_i_S_T_A_R = nil;
	};
	Admin_Fill_filler = 
	{
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
	};
	admin_skin_change = {
		_name = _this select 0;
		_skin = _this select 1;
		if ((_name == name player) or (_name == "")) then 
		{
			closedialog 0;cutText ['','PLAIN',0];Titletext ['','PLAIN',0];endLoadingScreen;0 fadeSound 1;disableUserInput false;
			if (isNil 'dayz_characterID') then {dayz_characterID = random 9999;};
			if (_skin isKindOf 'CAAnimalBase') then {removeAllWeapons player;removeAllItems player;removeBackpack player;};
			[getPlayerUID player, dayz_characterID, _skin] spawn player_humanityMorph;
			waitUntil {typeof player == _skin};
			sleep 0.1;
			vehicle player switchCamera 'EXTERNAL';
		}
		else
		{
			_morph = format ["if (name player == '%1') then
			{
				closedialog 0;cutText ['','PLAIN',0];Titletext ['','PLAIN',0];endLoadingScreen;0 fadeSound 1;disableUserInput false;
				if (isNil 'dayz_characterID') then {dayz_characterID = random 9999;};
				_skin = '%2';
				if (_skin isKindOf 'CAAnimalBase') then {removeAllWeapons player;removeAllItems player;removeBackpack player;};
				[getPlayerUID player, dayz_characterID, _skin] spawn player_humanityMorph;
				waitUntil {typeof player == _skin};
				sleep 0.1;
				vehicle player switchCamera 'EXTERNAL';
			};", _name, _skin];
			[_morph] call admin_d0;
		};
	};
	Admin_fillSkinz = 
	{
		if (isnil "adminaddxxxxx") then {adminaddxxxxx = compile ('
			adminaddmen = [" Player Skins","","0","0","0","0",[0,0.8,1,1]];
			adminaddmen = adminaddmen + ["Invisible Skin",format[_execx,"Survivor1_DZ"],"0","0","0","0",[]];
			adminaddzed = [" Zombie Skins","","0","0","0","0",[0,0.65,0,1]];
			adminaddanimal = [" Animal Skins","","0","0","0","0",[0.5,0,0.2,1]];
			_cfgvehicles = configFile >> "cfgVehicles";
			for "_i" from 0 to (count _cfgvehicles)-1 do
			{
				_vehicle = _cfgvehicles select _i;
				if (isClass _vehicle) then
				{
					_veh_type = configName _vehicle;
					if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Man") && !(_veh_type isKindOf "zZombie_Base") && !(_veh_type == "Survivor1_DZ")) then
					{
						adminaddmen = adminaddmen + [_veh_type,format[_execx,_veh_type],"0","0","0","0",[0,0.8,1,1]];
					};
					if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && !(_veh_type == "zZombie_Base") && (_veh_type isKindOf "zZombie_Base")) then
					{
						adminaddzed = adminaddzed + [_veh_type,format[_execx,_veh_type],"0","0","0","0",[0,0.65,0,1]];
					};
					if ((getNumber (_vehicle >> "scope") == 2) && (_veh_type isKindOf "CAAnimalBase") && !(_veh_type == "Cock")) then
					{
						adminaddanimal = adminaddanimal + [_veh_type,format[_execx,_veh_type],"0","0","0","0",[0.5,0,0.2,1]];
					};
				};
			};adminadd = adminadd + adminaddmen + adminaddzed + adminaddanimal;');
		};	
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		_execx = "[lbtext [1, (lbCurSel 1)],'%1'] spawn admin_skin_change";
		adminadd = [];
		call admin_fillsubsss;
		call adminaddxxxxx;
		call Admin_Fill_filler;
		call admin__FILL_MENUS;
	};
	adminskin =
	{
		if (isNil "dayz_characterID") then {dayz_characterID = random 9999;};
		if (isNil "adminskinz") then {adminskinz = 0;};
		if (adminskinz == 0) then
		{
			_formatLine = "[getPlayerUID player,dayz_characterID,'%1'] call player_humanityMorph;
			adminSkin_wardrobe = player addaction [(""<t color=""""#ff8810"""">"" + (""Wardrobe"") +""</t>""),""ca\modules\MP\data\scriptCommands\moveIn.sqf"",
			""Driver (call adminSkin_helper);"",5,false,false,"""",""""];";
			wardrobe =
			[
				["",true],
					["DayZ Clothing", [2], "#USER:WardrobeDayZ", -5, [["expression", ""]], "1", "1"],
					["Custom Clothing", [3], "#USER:WardrobeCustom", -5, [["expression", ""]], "1", "1"],
					["", [-1], "", -5, [["expression", ""]], "1", "0"],
					["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
			];
			WardrobeCustom =
			[
				["",true],
					["Rocket Uniform", [2],  "", -5, [["expression", format[_formatLine,"Rocket_DZ"]]], "1", "1"],
					["Desert Rocket Uniform", [3],  "", -5, [["expression", format[_formatLine,"BAF_Soldier_Officer_DDPM"]]], "1", "1"],
					["Desert Camo Clothing", [4],  "", -5, [["expression", format[_formatLine,"BAF_Soldier_L_DDPM"]]], "1", "1"],
					["Desert Soldier Uniform", [5],  "", -5, [["expression", format[_formatLine,"BAF_Soldier_DDPM"]]], "1", "1"],
					["Desert Green Uniform", [6],  "", -5, [["expression", format[_formatLine,"BAF_Soldier_MTP"]]], "1", "1"],
					["US Soldier Uniform", [7],  "", -5, [["expression", format[_formatLine,"US_Soldier_EP1"]]], "1", "1"],
					["Czech Soldier Uniform", [8],  "", -5, [["expression", format[_formatLine,"CZ_Soldier_DES_EP1"]]], "1", "1"],
					["Invisible Skin", [9],  "", -5, [["expression", format[_formatLine,"Survivor1_DZ"]]], "1", "1"],
					["", [-1], "", -5, [["expression", ""]], "1", "0"],
					["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
			];
			WardrobeDayZ =
			[
				["",true],
					["Male Suvivor", [2],  "", -5, [["expression", format[_formatLine,"Survivor2_DZ"]]], "1", "1"],
					["Female Suvivor", [3],  "", -5, [["expression", format[_formatLine,"SurvivorW2_DZ"]]], "1", "1"],
					["Male Bandit", [4],  "", -5, [["expression", format[_formatLine,"Bandit1_DZ"]]], "1", "1"],
					["Female Bandit", [5],  "", -5, [["expression", format[_formatLine,"BanditW1_DZ"]]], "1", "1"],
					["Camo Clothing", [6],  "", -5, [["expression", format[_formatLine,"Camo1_DZ"]]], "1", "1"],
					["Ghillie Suit", [7],  "", -5, [["expression", format[_formatLine,"Sniper1_DZ"]]], "1", "1"],
					["Soldier Uniform", [8],  "", -5, [["expression", format[_formatLine,"Soldier1_DZ"]]], "1", "1"],
					["", [-1], "", -5, [["expression", ""]], "1", "0"],
					["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
			];
			adminskinz = 1;
			adminSkin_wardrobe = player addaction [("<t color=""#ff8810"">" + ("Wardrobe") +"</t>"),"ca\modules\MP\data\scriptCommands\moveIn.sqf",
			"Driver (call adminSkin_helper);",5,false,false,"",""];
			adminSkin_helper = {showCommandingMenu "#USER:wardrobe";};
		}
		else
		{
			player removeAction adminSkin_wardrobe;
			adminskinz = 0;
		};
	};
	admin_filllist =
	{
		inSub = false;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		adminadd = [];
		call admin_fillsubsss;
		if (getPlayerUID player in PVDZ_L_AdminList) then {call LowAdmin_MENU;};
		if (getPlayerUID player in PVDZ_N_AdminList) then {call NormalAdmin_Menu;};
		if (getPlayerUID player in PVDZ_S_AdminList) then {call SuperAdmin_MENU;};
		adminadd = adminadd + 
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]];
		call admin__FILL_MENUS;
	};
	admin_fill_writelog =
	{
		inSub = false;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		adminadd = [];
		call admin_fillsubsss;
		call admin__FILL_MENUS;
		_num = if (count PVDZ_writeAdmin_log_ARRAY > 100) then {(count PVDZ_writeAdmin_log_ARRAY)-100;} else {0;};
		for "_i" from (count PVDZ_writeAdmin_log_ARRAY)-1 to _num step -1 do
		{
			_ctrl lbAdd format["%1", (PVDZ_writeAdmin_log_ARRAY select _i)select 0];
			_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
		};
		call Admin_Fill_filler;
	};
	admin_fillplr =
	{
		disableSerialization;
		_ctrl = 1 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		_playableUnits = playableUnits;
		
		if (isNil "PVDZ_filluLog_arr") then {PVDZ_filluLog_arr = [];};
		{
			if (( isPlayer _x ) && !(getPlayerUID _x in PVDZ_filluLog_arr)) then
			{
				_name = (name _x);
				_uid = (getPlayerUID _x);
				_pos = mapGridPosition getPos _x;
				PVDZ_filluLog_arr = PVDZ_filluLog_arr + [_name] + [_uid] + [_pos];
				publicVariable "PVDZ_filluLog_arr";
			};
		} forEach _playableUnits;
		
		_ctrl lbAdd format ["Player: %1",count playableUnits];
		
		
		
		_ctrl lbAdd "      Master Admins";
		_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
		_ctrl lbSetColor [(lbsize _ctrl)-1, [1,1,1,1]];
		{
			if (getplayeruid _x in PVDZ_S_AdminList) then 
			{
				_ctrl lbAdd format ["%1", name _x];
				_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, [0, 1, 0, 1]];
				if (vehicle _x == _x) then 
				{
					_plrpic = "\ca\ca_e\data\flag_blufor_co.paa";
					_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
				}
				else
				{
					_plrpic = (gettext (configFile >> "CfgVehicles" >> (typeof vehicle _x) >> "picture"));
					_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
				};
			};
		} forEach _playableUnits;
		
		
		_ctrl lbAdd "      High Rank Admins";
		_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
		_ctrl lbSetColor [(lbsize _ctrl)-1, [1,1,1,1]];
		{
			if (getplayeruid _x in PVDZ_N_AdminList) then 
			{
				_ctrl lbAdd format ["%1", name _x];
				_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, [0, 1, 0, 1]];
				if (vehicle _x == _x) then 
				{
					_plrpic = "\ca\ca_e\data\flag_blufor_co.paa";
					_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
				}
				else
				{
					_plrpic = (gettext (configFile >> "CfgVehicles" >> (typeof vehicle _x) >> "picture"));
					_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
				};
			};
		} forEach _playableUnits;
		
		
		_ctrl lbAdd "      Admins";
		_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
		_ctrl lbSetColor [(lbsize _ctrl)-1, [1,1,1,1]];
		{
			if (getplayeruid _x in PVDZ_L_AdminList) then 
			{
				_ctrl lbAdd format ["%1", name _x];
				_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, [0, 1, 0, 1]];
				if (vehicle _x == _x) then 
				{
					_plrpic = "\ca\ca_e\data\flag_blufor_co.paa";
					_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
				}
				else
				{
					_plrpic = (gettext (configFile >> "CfgVehicles" >> (typeof vehicle _x) >> "picture"));
					_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
				};
			};
		} forEach _playableUnits;
		
		
		_ctrl lbAdd "";
		
		_ctrl lbAdd "      Normal Player";
		_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
		_ctrl lbSetColor [(lbsize _ctrl)-1, [1,1,1,1]];
		{
			if ((getPlayerUID _x != "") && !(getplayeruid _x in PVDZ_L_AdminList) && !(getplayeruid _x in PVDZ_N_AdminList) && !(getplayeruid _x in PVDZ_S_AdminList)) then
			{
				if !((vehicle _x isKindOf "LandVehicle") || (vehicle _x isKindOf "Air") || (vehicle _x isKindOf "Ship")) then 
				{
					_ctrl lbAdd format ["%1", name _x];
					_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
					_ctrl lbSetColor [(lbsize _ctrl)-1, [0.047, 0.502, 1, 1]];
					if (vehicle _x == _x) then 
					{
						_plrpic = "\ca\ca_e\data\flag_blufor_co.paa";
						_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
					}
					else
					{
						_plrpic = (gettext (configFile >> "CfgVehicles" >> (typeof vehicle _x) >> "picture"));
						_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
					};
				};
			};
		} forEach _playableUnits;
		
		_ctrl lbAdd "      In Vehicle";
		_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
		_ctrl lbSetColor [(lbsize _ctrl)-1, [1,1,1,1]];
		{
			if ((getPlayerUID _x != "") && !(getplayeruid _x in PVDZ_L_AdminList) && !(getplayeruid _x in PVDZ_N_AdminList) && !(getplayeruid _x in PVDZ_S_AdminList)) then
			{
				if ((vehicle _x isKindOf "LandVehicle") || (vehicle _x isKindOf "Air") || (vehicle _x isKindOf "Ship")) then 
				{
					{
						_ctrl lbAdd format ["%1", name _x];
						_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
						_ctrl lbSetColor [(lbsize _ctrl)-1, [0.047, 0.502, 1, 1]];
						_plrpic = (gettext (configFile >> "CfgVehicles" >> (typeof vehicle _x) >> "picture"));
						_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
					} forEach crew _x;
				};
			};
		} forEach _playableUnits;		
		
		
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
	};
	admin_fillveh =
	{
		inSub = true;
		_isVehicle__i_n_f_i_S_T_A_R = true;
		_ctrl = 2 call getControl;
		_ctrl ctrlSetFont "TahomaB";
		lbclear _ctrl;
		_spwx = "['%1'] call adminsveh;";
		if (isNil "Vehicles_in_fi_ST_AR") then 
		{
			adminadd = [];
			call admin_fillsubsss;
			_cfgvehicles = configFile >> "cfgVehicles";
			adminadd = adminadd + ["Air","","0","1","0","0",[]];
			for "_i" from 0 to (count _cfgvehicles)-1 do
			{
				_vehicle = _cfgvehicles select _i;
				if (isClass _vehicle) then
				{
					_veh_type = configName _vehicle;
					if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Air") && !((_veh_type isKindOf "ParachuteBase") or (_veh_type isKindOf "BIS_Steerable_Parachute"))) then
					{
						adminadd = adminadd + [_veh_type,format[_spwx,_veh_type],"0","0","0","0",[]];
					};
				};
			};
			adminadd = adminadd + ["Land","","0","1","0","0",[]];
			for "_i" from 0 to (count _cfgvehicles)-1 do
			{
				_vehicle = _cfgvehicles select _i;
				if (isClass _vehicle) then
				{
					_veh_type = configName _vehicle;
					if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "LandVehicle") && !((_veh_type isKindOf "ParachuteBase") or (_veh_type isKindOf "BIS_Steerable_Parachute"))) then
					{
						adminadd = adminadd + [_veh_type,format[_spwx,_veh_type],"0","0","0","0",[]];
					};
				};
			};
			adminadd = adminadd + ["Ship","","0","1","0","0",[]];
			for "_i" from 0 to (count _cfgvehicles)-1 do
			{
				_vehicle = _cfgvehicles select _i;
				if (isClass _vehicle) then
				{
					_veh_type = configName _vehicle;
					if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Ship") && !((_veh_type isKindOf "ParachuteBase") or (_veh_type isKindOf "BIS_Steerable_Parachute"))) then
					{
						adminadd = adminadd + [_veh_type,format[_spwx,_veh_type],"0","0","0","0",[]];
					};
				};
			};
			Vehicles_in_fi_ST_AR = adminadd;
		};
		adminadd = Vehicles_in_fi_ST_AR;
		call Admin_Fill_filler;
		call admin__FILL_MENUS;
	};
	admin_fillobj =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		_spwx = "['%1'] call adminsobj;";
		adminadd = [];
		call admin_fillsubsss;
		_cfgobjects = configFile >> "cfgVehicles";
		for "_i" from 0 to (count _cfgobjects)-1 do
		{
			_object = _cfgobjects select _i;
			if (isClass _object) then
			{
				_obj_type = configName _object;
				if ((getNumber (_object >> "scope") == 2) && (getText (_object >> "picture") != "") && !((_obj_type isKindOf "ParachuteBase") or (_obj_type isKindOf "BIS_Steerable_Parachute")) && (_obj_type isKindOf "Building")) then
				{
					adminadd = adminadd + ["     "+_obj_type,format[_spwx,_obj_type],"0","0","0","0",[]];
				};
			};
		};
		call Admin_Fill_filler;
		call admin__FILL_MENUS;
	};
	admin_fillwpn =
	{
		inSub = true;
		_isWep__i_n_f_i_S_T_A_R = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		_spwx = "['%1'] spawn adminweapon;";
		if (isNil "weapons_in_fi_ST_AR") then 
		{
			adminadd = [];
			call admin_fillsubsss;
			_cfgweapons = configFile >> 'cfgWeapons';
			for "_i" from 0 to (count _cfgweapons)-1 do
			{
				_weapon = _cfgweapons select _i;
				if (isClass _weapon) then
				{
					_wpn_type = configName _weapon;
					if ((getNumber (_weapon >> "scope") == 0) or (getNumber (_weapon >> "scope") == 2)) then
					{
						adminadd = adminadd + [_wpn_type,format[_spwx,_wpn_type],"0","0","0","0",[]];
						weapons_in_fi_ST_AR = adminadd;
					};
				};
			};
		};
		adminadd = weapons_in_fi_ST_AR;
		call Admin_Fill_filler;
		call admin__FILL_MENUS;
	};
	admin_fillhlog =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		adminadd = [];
		call admin_fillsubsss;
		_num = if (count hackerLog > 100) then {(count hackerLog)-100;} else {0;};
		for "_i" from (count hackerLog)-1 to _num step -1 do
		{
			adminadd = adminadd + (hackerLog select _i);
		};
		call admin__FILL_MENUS;
	};
	admin_fillklog =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		adminadd = [];
		call admin_fillsubsss;
		_num = if (count keyLog > 100) then {(count keyLog)-100;} else {0;};
		for "_i" from (count keyLog)-1 to _num step -1 do
		{
			adminadd = adminadd + (keyLog select _i);
		};
		call admin__FILL_MENUS;
	};
	admin_filluLog =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		call admin_fillsubsss;
		for "_i" from 0 to (count PVDZ_filluLog_arr)-1 do 
		{
			_name = PVDZ_filluLog_arr select _i;
			_uid = PVDZ_filluLog_arr select (_i+1);
			_pos = PVDZ_filluLog_arr select (_i+2);
			adminadd = adminadd + ["Name: "+_name+"  UID: "+_uid+"  Pos: "+_pos,"","0","1","0","0",[]];
			_i = _i + 2;
		};
		call admin__FILL_MENUS;
	};
	admin_weather =
	{
		inSub = false;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		call admin_fillsubsss;

		adminadd = adminadd + ["     View Distance ","","0","1","0","0",[]];
		adminadd = adminadd + ["      1",{hint "Changing distance to 1";PVDZ_admin_rq = [19,player,1,1];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      500",{hint "Changing distance to 500";PVDZ_admin_rq = [19,player,1,500];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      1000",{hint "Changing distance to 1000";PVDZ_admin_rq = [19,player,1,1000];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      2000",{hint "Changing distance to 2000";PVDZ_admin_rq = [19,player,1,2000];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      3000",{hint "Changing distance to 3000";PVDZ_admin_rq = [19,player,1,3000];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      5000",{hint "Changing distance to 5000";PVDZ_admin_rq = [19,player,1,5000];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      7500",{hint "Changing distance to 7500";PVDZ_admin_rq = [19,player,1,7500];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      10000",{hint "Changing distance to 10000";PVDZ_admin_rq = [19,player,1,10000];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      12500",{hint "Changing distance to 12500";PVDZ_admin_rq = [19,player,1,12500];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      15000",{hint "Changing distance to 15000";PVDZ_admin_rq = [19,player,1,15000];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      20000",{hint "Changing distance to 20000";PVDZ_admin_rq = [19,player,1,20000];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["     Overcast ","","0","1","0","0",[]];
		adminadd = adminadd + ["      Clear",{hint "Clear Weather";PVDZ_admin_rq = [19,player,2,0];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Partly Sunny",{hint "Partly Sunny";PVDZ_admin_rq = [19,player,2,0.2];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Cloudy",{hint "Cloudy";PVDZ_admin_rq = [19,player,2,0.4];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Rain",{hint "Rain";PVDZ_admin_rq = [19,player,2,0.6];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Heavy Rain",{hint "Heavy Rain";PVDZ_admin_rq = [19,player,2,0.8];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Storm",{hint "Storm";PVDZ_admin_rq = [19,player,2,1];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		call admin__FILL_MENUS;
	};
	admin_time =
	{
		inSub = false;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		call admin_fillsubsss;

		adminadd = adminadd + ["     Time Selection ","","0","1","0","0",[]];
		adminadd = adminadd + ["      12 AM",{hint "Changing time to 12AM";PVDZ_admin_rq = [20,player,date,0];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      1 AM",{hint "Changing time to 1AM";PVDZ_admin_rq = [20,player,date,1];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      3 AM",{hint "Changing time to 3AM";PVDZ_admin_rq = [20,player,date,3];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      5 AM",{hint "Changing time to 5AM";PVDZ_admin_rq = [20,player,date,5];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      7 AM",{hint "Changing time to 7AM";PVDZ_admin_rq = [20,player,date,7];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      9 AM",{hint "Changing time to 9AM";PVDZ_admin_rq = [20,player,date,9];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      11 AM",{hint "Changing time to 11AM";PVDZ_admin_rq = [20,player,date,11];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      13 PM",{hint "Changing time to 13PM";PVDZ_admin_rq = [20,player,date,13];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      15 PM",{hint "Changing time to 15PM";PVDZ_admin_rq = [20,player,date,15];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      17 PM",{hint "Changing time to 17PM";PVDZ_admin_rq = [20,player,date,17];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      19 PM",{hint "Changing time to 19PM";PVDZ_admin_rq = [20,player,date,19];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      21 PM",{hint "Changing time to 21PM";PVDZ_admin_rq = [20,player,date,21];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      23 PM",{hint "Changing time to 23PM";PVDZ_admin_rq = [20,player,date,23];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		call admin__FILL_MENUS;
	};
	admin_init = 
	{
		if (isNil "Admin_Layout") then {Admin_Layout = 0;};
		if (Admin_Layout == 0) then 
		{
			if (isNull (findDisplay 3030)) then 
			{
				createDialog "RscConfigEditor_Main";
				_ctrl = 3 call getControl;
				_ctrl ctrlSetBackgroundColor [0.2, 0.2, 0.23, 1];
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlSetScale 2.2;
				_ctrl ctrlSetTextColor [0.2, 0.2, 1, 1];
				_ctrl ctrlSetPosition [safezoneX, safezoneY, safeZoneW, 0.02];
				_ctrl ctrlSetText "No Admin";
				if (getplayeruid player in PVDZ_L_AdminList) then {_ctrl ctrlSetText "Admin Menu";};			
				if (getplayeruid player in PVDZ_N_AdminList) then {_ctrl ctrlSetText "High Rank Admin Menu";};
				if (getplayeruid player in PVDZ_S_AdminList) then	{_ctrl ctrlSetText "Master Admin Menu";};
				_ctrl ctrlCommit 0;
				
				_ctrl = 2 call getControl;
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlSetPosition [safezoneXAbs + 0.485 + 0.02, safezoneY + 0.07, (safezoneWAbs - 0.485 - 0.03)*0.6, (safeZoneH - 0.07 - 0.03)*0.75];
				_ctrl ctrlSetScale 1.35;
				_ctrl ctrlCommit 0;
				_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick;"];
				call admin_filllist;
				[] spawn admin_fillplr;
				
				_ctrl = 1 call getControl;
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlSetPosition [safezoneXAbs + 0.01, safezoneY + 0.07, (0.485)*0.75, (safeZoneH - 0.07 - 0.03)*0.75];
				_ctrl ctrlSetScale 1.35;
				_ctrl ctrlCommit 0;
				_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick_2;"];
			};
		};
		if (Admin_Layout == 1) then 
		{
			if (isNull (findDisplay 3030)) then 
			{
				createDialog "RscConfigEditor_Main";
				_ctrl = 3 call getControl;
				_ctrl ctrlSetBackgroundColor [0.2, 0.2, 0.23, 1];
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlSetScale 2.2;
				_ctrl ctrlSetTextColor [0.2, 0.2, 1, 1];
				_ctrl ctrlSetPosition [safezoneX, safezoneY, safeZoneW, 0.02];
				_ctrl ctrlSetText "No Admin";
				if (getplayeruid player in PVDZ_L_AdminList) then {_ctrl ctrlSetText "Admin Menu";};			
				if (getplayeruid player in PVDZ_N_AdminList) then {_ctrl ctrlSetText "High Rank Admin Menu";};
				if (getplayeruid player in PVDZ_S_AdminList) then	{_ctrl ctrlSetText "Master Admin Menu";};
				_ctrl ctrlCommit 0;
				
				_ctrl = 2 call getControl;
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlCommit 0;
				_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick;"];
				call admin_filllist;
				[] spawn admin_fillplr;
				
				_ctrl = 1 call getControl;
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlCommit 0;
				_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick_2;"];
			};
		};
		if (Admin_Layout == 2) then 
		{
			if (isNull (findDisplay 3030)) then 
			{
				createDialog "RscConfigEditor_Main";
				_ctrl = 3 call getControl;
				_ctrl ctrlSetBackgroundColor [0.2, 0.2, 0.23, 1];
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlSetScale 2.2;
				_ctrl ctrlSetTextColor [0.2, 0.2, 1, 1];
				_ctrl ctrlSetPosition [safezoneX, safezoneY, safeZoneW, 0.02];
				_ctrl ctrlSetText "No Admin";
				if (getplayeruid player in PVDZ_L_AdminList) then {_ctrl ctrlSetText "Admin Menu";};			
				if (getplayeruid player in PVDZ_N_AdminList) then {_ctrl ctrlSetText "High Rank Admin Menu";};
				if (getplayeruid player in PVDZ_S_AdminList) then	{_ctrl ctrlSetText "Master Admin Menu";};
				_ctrl ctrlCommit 0;
				
				_ctrl = 2 call getControl;
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlSetPosition [safezoneXAbs + 0.485 + 0.02, safezoneY + 0.07, (safezoneWAbs - 0.485 - 0.03)*0.55, (safeZoneH - 0.07 - 0.03)*0.65];
				_ctrl ctrlSetScale 1.55;
				_ctrl ctrlCommit 0;
				_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick;"];
				call admin_filllist;
				[] spawn admin_fillplr;
				
				_ctrl = 1 call getControl;
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlSetPosition [safezoneXAbs + 0.01, safezoneY + 0.07, (0.485)*0.65, (safeZoneH - 0.07 - 0.03)*0.65];
				_ctrl ctrlSetScale 1.55;
				_ctrl ctrlCommit 0;
				_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick_2;"];
			};
		};
		if (Admin_Layout == 3) then 
		{
			if (isNull (findDisplay 3030)) then 
			{
				createDialog "RscConfigEditor_Main";
				_ctrl = 3 call getControl;
				_ctrl ctrlSetBackgroundColor [0.2, 0.2, 0.23, 1];
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlSetScale 2.2;
				_ctrl ctrlSetTextColor [0.2, 0.2, 1, 1];
				_ctrl ctrlSetPosition [safezoneX, safezoneY, safeZoneW, 0.02];
				_ctrl ctrlSetText "No Admin";
				if (getplayeruid player in PVDZ_L_AdminList) then {_ctrl ctrlSetText "Admin Menu";};			
				if (getplayeruid player in PVDZ_N_AdminList) then {_ctrl ctrlSetText "High Rank Admin Menu";};
				if (getplayeruid player in PVDZ_S_AdminList) then	{_ctrl ctrlSetText "Master Admin Menu";};
				_ctrl ctrlCommit 0;
				
				_ctrl = 2 call getControl;
				_ctrl ctrlSetPosition [safezoneX*0.01, safezoneY + 0.05, 0.38, safezoneH - 0.74];
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlSetScale (safezoneH - safezoneW / 2) * 2.2;
				_ctrl ctrlCommit 0;
				_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick;"];
				call admin_filllist;
				[] spawn admin_fillplr;
				
				_ctrl = 1 call getControl;
				_ctrl ctrlSetPosition [safezoneX*-0.7, safezoneY + 0.05, 0.38, safezoneH - 0.74];
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlSetScale (safezoneH - safezoneW / 2) * 2.2;
				_ctrl ctrlCommit 0;
				_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick_2;"];
				
				_ctrl = -1 call getControl;
				_ctrl ctrlSetPosition [safezoneX*0.01, safezoneY + 0.05, safeZoneW - 1.41, safezoneH - 0.38];
				_ctrl ctrlCommit 0;
			};
		};
	};
	adminheal =
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [5,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["Healing %1", _this select 0];
			};
		} forEach playableUnits;
	};
	admin_aatp =
	{
		[] spawn
		{
			_tempTime = time;
			time = "aatp";
			sleep 3;
			[_tempTime] spawn
			{
				_tempTime = (_this select 0) + 3;
				while {true} do
				{
					time = _tempTime;
					_tempTime = _tempTime + 1;
					sleep 1;
				};
			};
		};
	};
	adminrepair =
	{
		_vehicle = vehicle player;
		_vehicle setdamage 0;
		_vehicle setfuel 1;
		(vehicle cursorTarget) setdamage 0;
		(vehicle cursorTarget) setfuel 1;
		hint "Repairing..";
	};
	admincrate =
	{
		PVDZ_admin_rq = [6,player];
		publicVariableServer "PVDZ_admin_rq";
		hint "Box";
		
		_savelog = format["%1 - BOX at %2",name player,mapGridPosition getPos player];
		PVDZ_writelog_rq = [_savelog];
		publicVariableServer "PVDZ_writelog_rq";
	};
	adminESPicons = 
	{
		{[_x] joinSilent grpNull;} forEach playableUnits;
		if !("ItemMap" in items player) then 
		{
			_config = ["ItemMap"];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		setGroupIconsVisible [true, true];
		_color_list = [0, 1, 0, 1];
		_color_white = [1, 1, 1, 1];
		_color_orange = [1,0.3,0,1];
		_color_red = [1,0,0,1];
		_color_blue = [0, 0, 1, 1];
		_color_yellow  =   [0.85, 0.85, 0, 1];
		
		_color_bluefor_plr = 	[0.047, 0.502, 1, 1];
		_color_opfor_plr =		[1, 0.17, 0.17, 1];
		_color_resistance_plr = [0, 0.65, 0, 1];
		_color_civilian_plr = 	[1, 1, 1, 1];
		
		if (isnil "wpm_adminxxx_") then {wpm_adminxxx_ = 0;};
		if (wpm_adminxxx_ == 0) then 
		{
			wpm_adminxxx_ = 1;
			hint "GroupIcons ON";
			
			_savelog = format["%1 E_S_P Enabled",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		} 
		else 
		{
			wpm_adminxxx_ = 0;
			hint "GroupIcons OFF";
			
			_savelog = format["%1 E_S_P Disabled",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		};
		
		while {wpm_adminxxx_ == 1} do
		{
			{
				_side = side _x;
				if !(vehicle _x != _x) then
				{
					clearGroupIcons group _x;
					group _x addGroupIcon ["x_art"];
					
					_clr = _color_bluefor_plr;
					if (_side == west) then {_clr = _color_bluefor_plr};
					if (_side == east) then {_clr = _color_opfor_plr};
					if (_side == resistance) then {_clr = _color_resistance_plr};
					if (_side == civilian) then {_clr = _color_civilian_plr};
					if (getPlayerUID _x in (PVDZ_L_AdminList + PVDZ_N_AdminList + PVDZ_S_AdminList)) then {_clr = [0,1,0,1];};
					group _x setGroupIconParams [_clr, format ["%1 --%3-%2m",name _x,round(_x distance player),_side], 1, true];
				};
				if (vehicle _x != _x) then
				{
					_crewnames = [];
					{
						_crewnames = _crewnames + [name _x];
					} forEach crew (vehicle _x);
					clearGroupIcons group _x;
					group _x addGroupIcon ["b_inf"];
					
					_clr = _color_red;
					if (_side == west) then {_clr = _color_bluefor_plr};
					if (_side == east) then {_clr = _color_opfor_plr};
					if (_side == resistance) then {_clr = _color_resistance_plr};
					if (_side == civilian) then {_clr = _color_civilian_plr};
					if (getPlayerUID _x in (PVDZ_L_AdminList + PVDZ_N_AdminList + PVDZ_S_AdminList)) then {_clr = [0,1,0,1];};
					group _x setGroupIconParams [_clr, format ["%1 ---[%2]--%4-%3m",
					_crewnames,
					(gettext (configFile >> "CfgVehicles" >> (typeof vehicle _x) >> "displayName")),
					round(_x distance player),
					_side], 1, true];
				};
			} forEach playableUnits;
		sleep 1;
		};
		{clearGroupIcons group _x;} forEach playableUnits;
	};
	adminicons = 
	{
		if !("ItemMap" in items player) then 
		{
			_config = ["ItemMap"];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		
		disableSerialization;		
		if (isNil "origins_houses_admin") then {
		origins_houses_admin = 
		((allMissionObjects "wooden_shed_lvl_1")+
		(allMissionObjects "log_house_lvl_2")+
		(allMissionObjects "wooden_house_lvl_3")+
		(allMissionObjects "large_shed_lvl_1")+
		(allMissionObjects "small_house_lvl_2")+
		(allMissionObjects "big_house_lvl_3")+
		(allMissionObjects "small_garage")+
		(allMissionObjects "big_garage"));
		};
		
		_minimap = (uinamespace getvariable "BIS_RscMiniMap") displayCtrl 101;
		if (isnil "adminx__icons") then 
		{
			adminx__icons = true;
			_map = (findDisplay 12) displayCtrl 51;
			_mapdraw = _map ctrlSetEventHandler ["Draw", "_this call Draw_adminx__icons;"];
			_minimapdraw = _minimap ctrlSetEventHandler ["Draw", "_this call Draw_adminx__icons;"];
			cutText ["Icons Added","PLAIN DOWN"];
			
			_savelog = format["%1 Icons Enabled",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		} 
		else 
		{
			adminx__icons = nil;
			_map ctrlremoveeventhandler ["Draw", _mapdraw];
			cutText ["Icons Removed","PLAIN DOWN"];
			
			_savelog = format["%1 Icons Disabled",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		};
		
		Draw_adminx__icons = 
		{
			if (!isnil "adminx__icons") then 
			{
				private["_ctrl"];
				_ctrl =  _this select 0;
				_iscale = (1 - ctrlMapScale _ctrl) max .2;
				_irad = 30;
				_color = [0, 0, 0, 1];
				_icon = "\ca\ui\data\icon_zora_ca.paa";
				{
					_icon = getText(configFile >> "CfgVehicles" >> typeOf _x >> "icon");
					_irad = 30;
					
					if ((_x iskindof "Air") or (_x iskindof "Tank")) then 
					{
						_irad = 35;
						_ctrl drawIcon [_icon, [1, 0, 1, 1], getPosASL _x, _iscale*_irad, _iscale*_irad, getDir _x, "", 1];
					} 
					else 
					{
						if (_x iskindof "house") then 
						{
							_irad = 30;
							_ctrl drawIcon [_icon, [0,0.4,0.6,1], getPosASL _x, _iscale*_irad, _iscale*_irad, getDir _x, "", 0.2];
						}
						else
						{
							_irad = 30;
							_ctrl drawIcon [_icon, [0,0,0.4,1], getPosASL _x, _iscale*_irad, _iscale*_irad, getDir _x, "", 1];
						};
					};
				} forEach vehicles+origins_houses_admin;
				
				{
					if ((!isnull _x) and !(vehicle _x != _x)) then 
					{
						if (_x == player) then 
						{
							_color = [0, 0, 0, 1];
						} 
						else 
						{
							_color = [1, 0, 0, 1];
						};
						_ctrl drawIcon ["\ca\ui\data\iconman_ca.paa", _color, getPosASL _x, _iscale*30, _iscale*30, getDir _x, "", 1];
					};
				} forEach playableUnits;
			};
		};		
	};
	adminmark =
	{
		if !("ItemMap" in items player) then 
		{
			_config = ["ItemMap"];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		
		adminpmark =
		{
			while {mark == 1} do
			{
				_playableUnits = playableUnits;
				for "_i" from 0 to (count _playableUnits)-1 do
				{
					deleteMarkerLocal ("adminpmark" + (str _i));
					if ((_playableUnits select _i) == vehicle (_playableUnits select _i)) then 
					{
						deleteMarkerLocal ("adminpmark" + (str _i));
						_pm = createMarkerLocal [("adminpmark" + (str _i)), getPos (_playableUnits select _i)];
						_pm setMarkerTypeLocal "destroyedvehicle";
						_pm setMarkerSizeLocal [0.8, 0.8];
						_pm setMarkerTextLocal format ["%1", name (_playableUnits select _i)];
						_pm setMarkerColorLocal ("ColorBlue");
					};
				};
				sleep 2;
			};
			for "_i" from 0 to (count playableUnits)-1 do {deleteMarkerLocal ("adminpmark" + (str _i));};
		};
		if (isNil "mark") then {mark = 0;};
		if (mark == 0) then
		{
			mark = 1;
			hint "2D Map PLAYER Markers Enabled";
			[] spawn adminpmark;
			
			_savelog = format["%1 PlayerMarkers Enabled",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		}
		else
		{
			mark = 0;
			hint "2D Map PLAYER Markers Disabled";
			
			_savelog = format["%1 PlayerMarkers Disabled",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		};
	};
	adminmarkveh =
	{
		if !("ItemMap" in items player) then 
		{
			_config = ["ItemMap"];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		
		adminvmark =
		{
			while {markveh == 1} do
			{
				_vehicles = vehicles;
				for "_i" from 0 to (count _vehicles)-1 do
				{
					deleteMarkerLocal ("adminvmark" + (str _i));
					
					if (((_vehicles select _i) isKindOf "LandVehicle") or ((_vehicles select _i) isKindOf "Air") or ((_vehicles select _i) isKindOf "Ship")) then 
					{
						if (count crew (_vehicles select _i) != 0) then 
						{
							_crewnames = [];
							{
								_crewnames = _crewnames + [name _x];
							} forEach crew (_vehicles select _i);
							
							deleteMarkerLocal ("adminvmark" + (str _i));
							_vm = createMarkerLocal [("adminvmark" + (str _i)), getPos (_vehicles select _i)];
							_vm setMarkerTypeLocal "destroyedvehicle";
							_vm setMarkerSizeLocal [0.8, 0.8];
							_vm setMarkerTextLocal format ["%1 in %2", _crewnames,getText (configFile >> 'CfgVehicles' >> (typeof (_vehicles select _i)) >> 'displayName')];
							_vm setMarkerColorLocal ("ColorRed");
						}
						else
						{
							deleteMarkerLocal ("adminvmark" + (str _i));
							_vm = createMarkerLocal [("adminvmark" + (str _i)), getPos (_vehicles select _i)];
							_vm setMarkerTypeLocal "destroyedvehicle";
							_vm setMarkerSizeLocal [0.8, 0.8];
							_vm setMarkerTextLocal format ["%1", getText (configFile >> 'CfgVehicles' >> (typeof (_vehicles select _i)) >> 'displayName')];
							_vm setMarkerColorLocal ("ColorBrown");
						};
					};
				};
				sleep 2;
			};
			for "_i" from 0 to (count vehicles)-1 do {deleteMarkerLocal ("adminvmark" + (str _i));};
		};
		if (isNil "markveh") then {markveh = 0;};
		if (markveh == 0) then
		{
			markveh = 1;
			hint "2D Map VEHICLE Markers Enabled";
			[] spawn adminvmark;
			
			_savelog = format["%1 PlayerMarkers Enabled",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		}
		else
		{
			markveh = 0;
			hint "2D Map VEHICLE Markers Disabled";
			
			_savelog = format["%1 PlayerMarkers Disabled",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		};
	};
	adminZedshld = 
	{
		if (isNil "zoombiieshieldd") then {zoombiieshieldd = true;} 
		else 
		{
			zoombiieshieldd = !zoombiieshieldd;
			if (zoombiieshieldd) then 
			{	
				cutText [format["ZedShield ON for 50m"],"PLAIN DOWN"];
				
				_savelog = format["%1 ZedShield Enabled",name player];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			} 
			else 
			{
				cutText ["ZedShield OFF","PLAIN DOWN"];
				
				_savelog = format["%1 ZedShield Disabled",name player];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		};
		while {zoombiieshieldd} do 
		{
			_pos = getPos player;
			_zombies = _pos nearEntities ["zZombie_Base",50];
			_count = count _zombies;
			for "_i" from 0 to (_count -1) do
			{
				_zombie = _zombies select _i;
				deleteVehicle _zombie;
			};
			sleep 0.5;
		};
	};
	adminammo_recoil = {
		if (isnil ("admin_loop1")) then {admin_loop1 = 0;};
		if (admin_loop1==0) then 
		{
			admin_loop1=1;
			cutText [format["Unlimited AMMO and No Recoil ON"], "PLAIN DOWN"];
			hint "Unlimited AMMO and No Recoil ON";
			
			_savelog = format["%1 adminammo_recoil ON",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		}
		else
		{
			admin_loop1=0;
			cutText [format["Unlimited AMMO and No Recoil OFF"], "PLAIN DOWN"];
			hint "Unlimited AMMO and No Recoil OFF";
			
			_savelog = format["%1 adminammo_recoil OFF",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		};

		while {admin_loop1==1} do 
		{
			(vehicle player) setVehicleAmmo 1;
			(vehicle player) setUnitRecoilCoefficient 0;
		sleep 0.01;
		};
	};
	admin_low_terrain = {
		if (isNil "admin_terrain") then {admin_terrain = true;} else {admin_terrain = !admin_terrain};
		if (admin_terrain) then {
		setTerrainGrid 50;
		hint "Terrain Low";
		cutText [format["Terrain Low"], "PLAIN DOWN"];
		_savelog = format["%1 Terrain Low",name player];
		PVDZ_writelog_rq = [_savelog];
		publicVariableServer "PVDZ_writelog_rq";
		} else {
		setTerrainGrid 12.5;
		hint "Terrain Normal";
		cutText [format["Terrain Normal"], "PLAIN DOWN"];
		_savelog = format["%1 Terrain Normal",name player];
		PVDZ_writelog_rq = [_savelog];
		publicVariableServer "PVDZ_writelog_rq";
		};
	};
	admingod =
	{
		if (isNil "gmdadmin") then {gmdadmin = 0;};
		if (gmdadmin == 0) then
		{
			gmdadmin = 1;
			_object = player;
			player setUnitRecoilCoefficient 0;
			player_zombieCheck = {};
			fnc_usec_damageHandler = {};
			fnc_usec_unconscious  = {};
			_object allowDamage false;
			hint "God Enabled";
			
			_savelog = format["%1 G_o_d Enabled",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		}
		else
		{
			player setUnitRecoilCoefficient 1;
			player_zombieCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieCheck.sqf";
			fnc_usec_damageHandler = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandler.sqf";
			fnc_usec_unconscious = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_unconscious.sqf";
			player allowDamage true;
			gmdadmin = 0;
			hint "God Disabled";
			
			_savelog = format["%1 G_o_d Disabled",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		};
	};
	adminHumanityPlus =
	{
		{
			if (name _x == _this select 0) then
			{
				_humanity = _x getVariable["humanity",0];
				_x setVariable["humanity",_humanity+2500,true];
				hint format ["Gave %1 +2500 Humanity!",_this select 0];
				
				_savelog = format["%1 +2500 Humanity to %2",name player,_this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminHumanityMinus =
	{
		{
			if (name _x == _this select 0) then
			{
				_humanity = _x getVariable["humanity",0];
				_x setVariable["humanity",_humanity-2500,true];
				hint format ["Gave %1 -2500 Humanity!",_this select 0];
				
				_savelog = format["%1 -2500 Humanity to %2",name player,_this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};	
	fixfps =
	{
		hint "fixing fps..";
		_class = (nearestObjects [[6800, 9200, 0], ["Land_Fire_DZ", "MedBox0", "wire_cat1", "Hedgehog_DZ", "Sandbag1_DZ", "BearTrap_DZ", "WeaponHolder", "DZ_Patrol_Pack_EP1"], 11000]) + allDead;
		{
			if (_x != objNull) then
			{
				deleteVehicle _x;
				cutText [format ["Deleted %1", typeOf _x], "PLAIN", 1];
			};
		sleep 0.05;
		} forEach _class;
	};
	admininvis =
	{
		if (isNil 'inv1') then {inv1 = 0;};
		if (inv1 == 0) then
		{
			PVDZ_admin_rq = [3,(getPlayerUID player),1];
			publicVariableServer "PVDZ_admin_rq";
			inv1 = 1;
			hint "Invisibility Enabled";
			
			_savelog = format["%1 Invisibility Enabled",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		}
		else
		{
			PVDZ_admin_rq = [3,(getPlayerUID player),0];
			publicVariableServer "PVDZ_admin_rq";
			inv1 = 0;
			hint "Invisibility Disabled";
			
			_savelog = format["%1 Invisibility Disabled",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		};
	};
	admin_debug = 
	{
		if (isNil "admindebug_colorful") then {admindebug_colorful = true;} else {admindebug_colorful = !admindebug_colorful;};
		while {admindebug_colorful} do 
		{
			custom_monitor = false;
			_pic = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'picture'));
			if (player == vehicle player) then 
			{
				_pic = (gettext (configFile >> 'cfgWeapons' >> (currentWeapon player) >> 'picture'));
			}
			else
			{
				_pic = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'picture'));
			};
			
			hintSilent parseText format["
			<t size='1.2'font='TahomaB'align='left' color='#14fb06'>Player Online:</t><t size='1.2'font='TahomaB'align='right'color='#14fb06'>%5</t><br/>
			<t size='1.2'font='TahomaB'align='left' color='#13ee67'>Player in 500m:</t><t size='1.2'font='TahomaB'align='right'color='#13ee67'>%6</t><br/>
			<t size='1.2'font='TahomaB'align='left' color='#13ee67'>Viewdistance:</t><t size='1.2'font='TahomaB'align='right'color='#13ee67'>%12</t><br/>
			<br/>
			<t size='1.2'font='TahomaB'align='left'color='#13eedb'>Vehicles:</t><t size='1.2' font='TahomaB'align='right'color='#13eedb'>%8(%10)</t><br/>
			<t size='1.2'font='TahomaB'align='left'color='#13b4ee'>Air:</t><t size='1.2' font='TahomaB'align='right'color='#13b4ee'>%9</t><br/>
			<t size='1.2'font='TahomaB'align='left'color='#1367ee'>Tank:</t><t size='1.2' font='TahomaB'align='right'color='#1367ee'>%7</t><br/>
			<t size='1.2'font='TahomaB'align='left'color='#6d13ee'>Car:</t><t size='1.2' font='TahomaB'align='right'color='#6d13ee'>%11</t><br/>
			<br/>
			<t font='TahomaB' align='Center' size='1.2' color='#FFBF00'>[%3]</t><br/>
			<img size='5.5' image='%4'/><br/>
			<t size='1.2'font='TahomaB'align='left' color='#3fa77d'>Humanity:</t><t color='#3fa77d' size='1.2'font='TahomaB'align='right'>%14</t><br/>
			<t size='1.2'font='TahomaB'align='left' color='#3fa77d'>Blood:</t><t color='#3fa77d' size='1.2'font='TahomaB'align='right'>%13</t><br/>
			<t size='1.2'font='TahomaB'align='left' color='#3fa77d'>Name:</t><t color='#3fa77d' size='1.2'font='TahomaB'align='right'>%1</t><br/>
			<t size='1.2'font='TahomaB'align='center'color='#2ECCFA'>Fps: %2</t><br/>",
			(player getVariable['bodyName', name player]),
			(round diag_fps),
			(gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'displayName')),
			_pic,
			(count playableUnits),
			(({isPlayer _x} count (getPos vehicle player nearEntities [['AllVehicles'], 500]))-1),
			(count([6800, 9200, 0] nearEntities [['Tank'],25000])),
			(count([6800, 9200, 0] nearEntities [['StaticWeapon','Car','Motorcycle','Tank','Air','Ship'],25000])),
			(count([6800, 9200, 0] nearEntities [['Air'],25000])),
			count vehicles,
			(count([6800, 9200, 0] nearEntities [['Car'],25000])),
			viewdistance,
			r_player_blood,
			(player getVariable['humanity', 0])];
			
			sleep 1;
		};
		if (!admindebug_colorful) then {hintSilent parseText format ["<t size='1'font='TahomaB'align='center'>DEBUG OFF</t>"];};
	};
	admin_tpdirection_on = 
	{
		if (isNil "admin_tpdirection_0n") then {admin_tpdirection_0n = true;} else {admin_tpdirection_0n = !admin_tpdirection_0n;};
		sleep 0.1;
		if (admin_tpdirection_0n) then 
		{
			hint "TP infront of you ON";
			cutText ["TP infront of you ON", "PLAIN DOWN"];
			
			_savelog = format["%1 TP infront of you ON",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		}
		else
		{
			hint "TP infront of you OFF";
			cutText ["TP infront of you OFF", "PLAIN DOWN"];
			
			_savelog = format["%1 TP infront of you OFF",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		};
	};
	admin_tpdirection = 
	{
		if (!isNil "admin_tpdirection_check") exitWith {};
		if (isNil "admin_tpdirection_0n") exitWith {};
		if (!admin_tpdirection_0n) exitWith {};
		
		_distance = 10;
		_object = (vehicle player);
		_dir = getdir _object;
		_pos = getPosATL _object;
		if (_object isKindOf "Air") then
		{
			if (count(crew _object)>1) then 
			{ 
				_distance = 10;
				_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),((getpos _object) select 2)+100];
				if (surfaceIsWater _pos) then {_object setPosASL _pos;} else {_object setPosATL _pos;};
			} 
			else
			{
				_distance = 50;
				_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),0];
				if (surfaceIsWater _pos) then {_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),2];};
				if ((getpos _object) select 2 > 6) then {_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),((getpos _object) select 2)+0.1]};
				if (surfaceIsWater _pos) then {_object setPosASL _pos;} else {_object setPosATL _pos;};
			};
		}
		else
		{
			_distance = 10;
			_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),0];
			if (surfaceIsWater _pos) then {_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),2];};
			if ((getpos _object) select 2 > 3) then {_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),((getpos _object) select 2)];};
			if (surfaceIsWater _pos) then {_object setPosASL _pos;} else {_object setPosATL _pos;};
		};
	};
	adminaltteleport = 
	{
		if (isNil "adminaltteleport_toggle") then {adminaltteleport_toggle = true;} else {adminaltteleport_toggle = !adminaltteleport_toggle;};
		if (adminaltteleport_toggle) then 
		{
			if !("ItemMap" in items player) then 
			{
				_config = ["ItemMap"];
				_isOK = [player,_config] call BIS_fnc_invAdd;
			};
			
			(findDisplay 46) displayAddEventHandler ["KeyDown", "altstate_Admin = _this select 4"];
			((findDisplay 12) displayCtrl 51) ctrlAddEventHandler ["MouseButtonDown", "if (((_this select 1) == 0) && altstate_Admin) then
			{
				if (isNil 'L_AA_TP') then {[] spawn admin_aatp;L_AA_TP = true;[] spawn {sleep 30;L_AA_TP = nil;};};
				PVDZ_admin_rq = [1, player, ((_this select 0) posScreenToWorld [_this select 2, _this select 3])];
				publicVariableServer 'PVDZ_admin_rq';
			};"];
			hint "ALT TELEPORT ACTIVATED";
			cutText ["ALT TELEPORT ACTIVATED", "PLAIN"];
		}
		else
		{
			((findDisplay 12) displayCtrl 51) ctrlRemoveAllEventHandlers "MouseButtonDown";
			hint "ALT TELEPORT DISABLED";
			cutText ["ALT TELEPORT DISABLED", "PLAIN"];
		};
	};
	admintele =
	{
		[] spawn admin_aatp;
		{
			if (name _x == _this select 0) then
			{
				_bolt = vehicle player;
				_hitObject = vehicle _x;
				_val = [0,-1,0];
				_hitMemoryPt = "";
				_bolt attachTo [_hitObject,_val,_hitMemoryPt];
				hint format ["Moving to %1", _this select 0];
				sleep 1;
				detach _bolt;
				
				_savelog = format["%1 Moving to %2",name player,_this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminbreakleg =
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [2,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["Breaking %1's legs", _this select 0];
				
				_savelog = format["%1 Break Legs %2",name player,_this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminspec =
	{
		_name = _this select 0;
		{
			if (name _x == _name) then
			{
				vehicle _x switchCamera "EXTERNAL";
				hint format ["Spectating %1, F10 to cancel - F9 Show Gear", name _x];
				cutText [format["Spectating %1, F10 to cancel - F9 Show Gear", name _x], "PLAIN DOWN"];
				
				_show  = format ["
				['<t size=''1''color=''#00ff40''font=''EtelkaNarrowMediumPro''align=''left''>Spectating: %1</t>',-0.6,safezoneY+0.5,999999,0,0,3031] spawn bis_fnc_dynamicText;
				", (name _x)];
				call compile format["%1;", _show];
				
				waitForGearRequest = _x;
				(findDisplay 46) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 0x43) then {closeDialog 0;sleep 0.1;createGearDialog [(waitForGearRequest), ""RscDisplayGear""];}"];
			};
		} forEach playableUnits;
	};
	admin_spec_gear = 
	{
		{
			if (name _x == _this select 0) then
			{
				waitUntil {count weapons _x > 0};
				sleep 0.5;
				createGearDialog [(_x), "RscDisplayGear"];
				hint format ["Show Gear of %1", name _x];
			};
		} forEach playableUnits;
	};
	adminkill =
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [4,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["Killing %1", _this select 0];
				
				_savelog = format["%1 Adminkilled %2",name player, _this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminSlap = 
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [21,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["Slap %1", _this select 0];
				
				_savelog = format["%1 Slaps %2",name player, _this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminFDisconnect =
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [10,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["Disconnect %1", _this select 0];
				
				_savelog = format["%1 Disconnected %2",name player, _this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminremovegear = 
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [8,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["%1 Gear Removed", _this select 0];
				
				_savelog = format["%1 Removes %2 Gear",name player, _this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminmsg =
	{
		createDialog "RscDisplayPassword";
		ctrlSetText [1001,"BroadCast Message Plugin"];
		if (isNil "first_open_adminmsg") then 
		{
			first_open_adminmsg = true;
			ctrlSetText [101,"Type Message Here..."];
		}
		else
		{
			ctrlSetText [101,""];
		};
		ctrlshow [1002,false];
		buttonSetAction [1,"PVDZ_admin_rq = [9, player, toArray(ctrlText 101)]; publicVariable ""PVDZ_admin_rq"";"];
	};
	admint2me =
	{
		[] spawn admin_aatp;
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [7,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["TPing %1", _this select 0];
				
				_savelog = format["%1 TP %2 to %3",name player, _this select 0, mapGridPosition getPos player];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminweapon =
	{
		_pWep = currentWeapon player;
		player removeWeapon _pWep;
		_item = _this select 0;
		_config = [_item];
		_isOK = [player,_config] call BIS_fnc_invAdd;
		_mags = getArray(configfile >> 'cfgWeapons' >> _item >> 'magazines');
		_config = _mags select 0;
		_isOK = [player,_config] call BIS_fnc_invAdd;
		_isOK = [player,_config] call BIS_fnc_invAdd;
		_isOK = [player,_config] call BIS_fnc_invAdd;
		player selectWeapon _item;
		reload player;
		
		_savelog = format['%1 - %2',name player,_this select 0];
		PVDZ_writelog_rq = [_savelog];
		publicVariable 'PVDZ_writelog_rq';
	};
	adminsveh =
	{
		_dir = getdir vehicle player;
		_pos = getPos vehicle player;
		_pos = [(_pos select 0)+8*sin(_dir),(_pos select 1)+8*cos(_dir),0];
		PVDZ_admin_rq = [0, player, _this select 0, _pos];
		publicVariableServer "PVDZ_admin_rq";
		
		_savelog = format["%1 - %2 at %3",name player,_this select 0, mapGridPosition getPos player];
		PVDZ_writelog_rq = [_savelog];
		publicVariableServer "PVDZ_writelog_rq";
	};
	adminsobj =
	{
		_dir = getdir vehicle player;
		_pos = getPos vehicle player;
		_pos = [(_pos select 0)+8*sin(_dir),(_pos select 1)+8*cos(_dir),0];
		PVDZ_admin_rq = [0, player, _this select 0, _pos];
		publicVariableServer "PVDZ_admin_rq";
		
		_savelog = format["%1 - %2 at %3",name player,_this select 0, mapGridPosition getPos player];
		PVDZ_writelog_rq = [_savelog];
		publicVariableServer "PVDZ_writelog_rq";
	};
	adminUncon =
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [11,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["Putting %1 to sleep...", _this select 0];
				
				_savelog = format["%1 Putting %2 to sleep...",name player,_this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	admin_d0 =
	{
		_do = (_this select 0);_do = toArray _do;
		PVDZ_admin_rq = [69,_do];
		publicVariableServer "PVDZ_admin_rq";
		
		_savelog = format["%1 used admin RE",name player];
		PVDZ_writelog_rq = [_savelog];
		publicVariableServer "PVDZ_writelog_rq";
	};
	admin_del_bxs =
	{
		PVDZ_admin_rq = [14];
		publicVariableServer "PVDZ_admin_rq";
		
		hint "deleting boxes..";
		
		_savelog = format["%1 deleted boxes",name player];
		PVDZ_writelog_rq = [_savelog];
		publicVariableServer "PVDZ_writelog_rq";
	};
	adminDrug = 
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [15,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["Drugging %1...", _this select 0];
				
				_savelog = format["%1 drugged %2",name player,_this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminSuicide =
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [22,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["Suiciding %1", _this select 0];
				
				_savelog = format["%1 Suiciding %2",name player,_this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminClearBan =
	{
		PVDZ_admin_rq = [16,player];
		publicVariableServer "PVDZ_admin_rq";
		hint "Bans cleared!";
		
		_savelog = format["%1 cleared Bans",name player];
		PVDZ_writelog_rq = [_savelog];
		publicVariableServer "PVDZ_writelog_rq";
	};
	adminKick =
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [17,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["Kicked %1...", _this select 0];
				
				_savelog = format["%1 Kicked %2",name player,_this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};	
	adminBan =
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [18,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["Banned %1...", _this select 0];
				
				_savelog = format["%1 Banned %2",name player,_this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminGiveGod =
	{
		if ((_this select 1) == 1) then {
			{
				if (name _x == _this select 0) then
				{
					PVDZ_admin_rq = [12,player,_x];
					publicVariableServer "PVDZ_admin_rq";
					hint format ["Giving %1 G_O_D...", _this select 0];
					cutText [format["Giving %1 G_O_D...", _this select 0], "PLAIN DOWN"];
					
					_savelog = format["%1 G_O_D %2",name player,_this select 0];
					PVDZ_writelog_rq = [_savelog];
					publicVariableServer "PVDZ_writelog_rq";
				};
			} forEach playableUnits;
		}
		else
		{
			{
				if (name _x == _this select 0) then
				{
					PVDZ_admin_rq = [13,player,_x];
					publicVariableServer "PVDZ_admin_rq";
					hint format ["Taking %1's G_O_D...", _this select 0];
					cutText [format["Taking %1's G_O_D...", _this select 0], "PLAIN DOWN"];
					
					_savelog = format["%1 UN_G_O_D %2",name player,_this select 0];
					PVDZ_writelog_rq = [_savelog];
					publicVariableServer "PVDZ_writelog_rq";
				};
			} forEach playableUnits;
		};
	};
	adminDelete = 
	{
		_delete = cursorTarget;
		if (isNull _delete) exitWith {hint "target doesn't exist";cutText ["target doesn't exist", "PLAIN"];};
		hint format["deleting %1...", _delete];
		cutText [format["deleting %1...", _delete], "PLAIN DOWN"];
		deleteVehicle _delete;
	};
	(findDisplay 46) displayAddEventHandler ["KeyUp","
	_key = _this select 1;
	if (_key == 0x48) then {call compile preprocessFileLineNumbers 'admin_start.sqf';};
	if (_key == 0x4B) then {[] spawn admin_tpdirection_on;};
	if (_key == 0x0B) then {[] spawn admin_debug;};
	if (_key == 0x06) then {call admin_tpdirection;};
	if (_key == 0x3B) then {call admin_init;};
	if (_key == 0x3C) then {call admin_init;};
	if (_key == 0xCF) then {call admin_init;};
	if (_key == 0xD3) then {call adminDelete;};
	if (_key == 0x44) then {vehicle player switchCamera 'EXTERNAL';['',-0.6,safezoneY+0.2,1,0,0,3031] spawn bis_fnc_dynamicText;};"];
};
publicVariable "PVDZ_AdminMenuCode";






/*
	PublicVariableEventHandlers
*/

"PVDZ_writelog_rq" addPublicVariableEventHandler
{
	if (isNil "PVDZ_writeAdmin_log_ARRAY") then {PVDZ_writeAdmin_log_ARRAY = [];};
	_array = _this select 1;
	diag_log (_array);
	
	PVDZ_writeAdmin_log_ARRAY = PVDZ_writeAdmin_log_ARRAY + [_array];
	publicVariable "PVDZ_writeAdmin_log_ARRAY";
};

"PVDZ_admin_rq" addPublicVariableEventHandler
{
	if (isNil "PVDZ_writeAdmin_log_ARRAY") then {PVDZ_writeAdmin_log_ARRAY = [];};
	_array = _this select 1;
	_option = _array select 0;
	if (_option == 69) then 
	{
		_unit = createAgent ["Sheep", [4000,4000,0], [], 0, "FORM"];
		_unit allowdamage false;
		_unit disableAI "MOVE";
		_unit disableAI "ANIM";
		_do = toString (_array select 1);
		_unit setVehicleInit _do;
		processInitCommands;
		deleteVehicle _unit;
	};
	if (_option == 0) then
	{
		_object = (_array select 2) createVehicle (_array select 3);
		dayz_serverObjectMonitor set [count dayz_serverObjectMonitor, _object];
		_object setVariable ["ObjectID", "1", true];
		_object setVariable ["ObjectUID", "1", true];
	};
	if (_option == 1) then
	{
		_unit = (_array select 1);
		_pos = (_array select 2);
		
		vehicle _unit setPosATL _pos;
		
		_savelog = format["%1 TP to %2",name _unit, mapGridPosition _pos];
		PVDZ_writelog_rq = [_savelog];
		publicVariableServer "PVDZ_writelog_rq";
	};
	if (_option == 2) then
	{
		_do = format ["if (getPlayerUID player == '%1') then
		{
			_unit = player;
			_selection = ""legs"";
			_damage = 1;
			_unit setHit[_selection,_damage];
		};", getPlayerUID (_array select 2)];
		_list = [0,0,0] nearEntities 1000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 3) then
	{
		_uid = _array select 1;
		_run = _array select 2;
		if (_run == 1) then
		{
			[nil, nil, rSPAWN, _uid, { {if (getPlayerUID _x == _this) then {vehicle _x hideObject true;};} forEach playableUnits; }] call RE;
		}
		else
		{
			[nil, nil, rSPAWN, _uid, { {if (getPlayerUID _x == _this) then {vehicle _x hideObject false;};} forEach playableUnits; }] call RE;
		};
	};
	if (_option == 4) then
	{
		_vehicle = vehicle (_array select 2);
		_unit = (_array select 2);
		if (true) then 
		{
			_unit setDamage 2;
			[_vehicle,_unit] spawn 
			{
				_vehicle = _this select 0;
				_unit = _this select 1;
				sleep 2;
				if (alive _unit) then {_vehicle setDamage 2;_unit setDamage 2};
			};
		};
	};
	if (_option == 5) then
	{
		_unit = _array select 2;
		_do = format ["if (getPlayerUID player == '%1') then
		{
			disableSerialization;
			dayz_sourceBleeding = objNull;
			r_player_blood = r_player_bloodTotal;
			r_player_inpain = false;
			r_player_infected = false;
			r_player_injured = false;
			dayz_hunger = 0;
			dayz_thirst = 0;
			dayz_temperatur = 40;
			r_fracture_legs = false;
			r_fracture_arms = false;
			r_player_dead = false;
			r_player_unconscious = false;
			r_player_loaded = false;
			r_player_cardiac = false;
			r_player_lowblood = false;
			r_player_timeout = 0;
			r_handlercount = 0;
			r_interrupt = false;
			r_doLoop = false;
			r_drag_sqf = false;
			r_self = false;
			r_action = false;
			r_action_unload = false;
			r_player_handler = false;
			r_player_handler1 = false;
			disableUserInput false;
			""dynamicBlur"" ppEffectAdjust [0];
			""dynamicBlur"" ppEffectCommit 5;
			_unit = player;
			_selection = ""legs"";
			_damage = 0;
			_unit setHit[_selection,_damage];
			player setVariable ['messing',[dayz_hunger,dayz_thirst],true];
			player setVariable ['USEC_BloodQty',r_player_blood,true];
			player setVariable ['medForceUpdate',true];
			player setVariable ['hit_legs',0,true];
			player setVariable ['hit_hands',0,true];
			player setVariable ['USEC_injured',false,true];
			player setVariable ['USEC_inPain',false,true];
			player setVariable ['USEC_lowBlood',false,true];
			_display = uiNamespace getVariable 'DAYZ_GUI_display';
			_control = 	_display displayCtrl  1303;
			_control ctrlShow false;
			_display = uiNamespace getVariable 'DAYZ_GUI_display';
			_control = _display displayCtrl 1203;
			_control ctrlShow false;
			_unit setdamage 0;
			0 fadeSound 1;
		};", getPlayerUID (_array select 2)];
		_list = [0,0,0] nearEntities 1000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 6) then 
	{
		_dir = getdir (_array select 1);
		_pos = getPos (_array select 1);
		_pos = [(_pos select 0)+8*sin(_dir),(_pos select 1)+8*cos(_dir),0];
		_admincrate_boxcreate = "USBasicAmmunitionBox" createVehicle _pos;
		{_admincrate_boxcreate addWeaponCargoGlobal [_x, 5];} forEach
		["BAF_AS50_Scoped","AK_107_GL_Kobra","AK_107_Kobra","AK_107_PSO","AK_47_M",
		"AK_47_S","AK_74","AK_74_GL","AK_74_GL_Kobra",
		"BAF_AS50_TWS","BAF_L110A1_Aim","BAF_L7A2_GPMG","BAF_L85A2_RIS_ACOG",
		"BAF_L85A2_RIS_CWS","BAF_L85A2_RIS_Holo","BAF_L85A2_RIS_SUSAT",
		"BAF_L85A2_UGL_ACOG","BAF_L85A2_UGL_Holo","BAF_L85A2_UGL_SUSAT",
		"BAF_L86A2_ACOG","BAF_LRR_scoped","BAF_LRR_scoped_W","bizon","bizon_silenced",
		"Colt1911","Crossbow","DMR","G36_C_SD_camo","G36_C_SD_eotech","G36a",
		"G36A_camo","G36C","G36C_camo","G36K","G36K_camo","FN_FAL","FN_FAL_ANPVS4",
		"glock17_EP1","Huntingrifle","ksvk","LeeEnfield","M1014","m107_DZ",
		"M14_EP1","M16A2","M16A2GL","m16a4","m16a4_acg","M16A4_ACG_GL","M16A4_GL",
		"M24","M24_des_EP1","M240","m240_scoped_EP1","M249","M249_EP1","M249_m145_EP1",
		"M40A3","M4A1","M4A1_Aim","M4A1_Aim_camo","M4A1_AIM_SD_camo","M4A1_HWS_GL",
		"M4A1_HWS_GL_camo","M4A1_HWS_GL_SD_Camo","M4A1_RCO_GL","M4A3_CCO_EP1",
		"M4A3_RCO_GL_EP1","M4SPR","M60A4_EP1","M9","M9SD","Makarov","MakarovSD",
		"MeleeHatchet","MeleeCrowbar","MG36","Mk_48_DES_EP1","Mk_48_DZ","MP5A5",
		"MP5SD","MR43","Pecheneg","PK","Remington870_lamp","revolver_EP1",
		"revolver_gold_EP1","RPK_74","Sa61_EP1","Saiga12K","SVD","SVD_CAMO",
		"SVD_des_EP1","SVD_NSPU_EP1","UZI_EP1","UZI_SD_EP1","Winchester1866",
		"Binocular","Binocular_Vector","ItemCompass","ItemEtool","ItemFlashlight",
		"ItemFlashlightRed","ItemGPS","ItemHatchet","ItemKnife","ItemMap",
		"ItemMatchbox","ItemRadio","ItemToolbox","ItemWatch","Laserdesignator",
		"NVGoggles"];
		{_admincrate_boxcreate addMagazineCargoGlobal [_x, 20];} forEach
		["5Rnd_127x99_as50","2Rnd_shotgun_74Slug","2Rnd_shotgun_74Pellets","5Rnd_127x108_KSVK",
		"5Rnd_762x51_M24","5Rnd_86x70_L115A1","5x_22_LR_17_HMR",
		"6Rnd_45ACP","7Rnd_45ACP_1911","8Rnd_9x18_Makarov","8Rnd_9x18_MakarovSD",
		"8Rnd_B_Beneli_74Slug","8Rnd_B_Beneli_Pellets","8Rnd_B_Saiga12_74Slug",
		"8Rnd_B_Saiga12_Pellets","10Rnd_127x99_M107","10Rnd_762x54_SVD",
		"10x_303","15Rnd_9x19_M9","15Rnd_9x19_M9SD","15Rnd_W1866_Slug",
		"15Rnd_W1866_Pellet","17Rnd_9x19_glock17","20Rnd_556x45_Stanag",
		"20Rnd_762x51_DMR","20Rnd_762x51_FNFAL","20Rnd_B_765x17_Ball",
		"30Rnd_545x39_AK","30Rnd_556x45_G36","30Rnd_556x45_G36SD",
		"30Rnd_556x45_Stanag","30Rnd_556x45_StanagSD","30Rnd_762x39_AK47",
		"30Rnd_9x19_MP5","30Rnd_9x19_MP5SD","30Rnd_9x19_UZI","30Rnd_9x19_UZI_SD",
		"50Rnd_127x108_KORD","64Rnd_9x19_Bizon","64Rnd_9x19_SD_Bizon","75Rnd_545x39_RPK",
		"100Rnd_762x51_M240","100Rnd_762x54_PK","100Rnd_556x45_BetaCMag","100Rnd_556x45_M249",
		"200Rnd_556x45_L110A1","200Rnd_556x45_M249","BoltSteel","1Rnd_HE_GP25",
		"1Rnd_HE_M203","1Rnd_Smoke_GP25","1Rnd_SmokeGreen_GP25","1Rnd_SmokeRed_GP25",
		"1Rnd_SmokeYellow_GP25","1Rnd_Smoke_M203","1Rnd_SmokeGreen_M203",
		"1Rnd_SmokeRed_M203","1Rnd_SmokeYellow_M203","6Rnd_HE_M203","BAF_ied_v1",
		"FlareGreen_GP25","FlareRed_GP25","FlareWhite_GP25","FlareYellow_GP25",
		"FlareGreen_M203","FlareRed_M203","FlareWhite_M203","FlareYellow_M203",
		"HandGrenade_East","HandGrenade_West","M136","SmokeShell","SmokeShellBlue",
		"SmokeShellGreen","SmokeShellOrange","SmokeShellPurple","SmokeShellRed",
		"SmokeShellYellow","PipeBomb","FoodCanBakedBeans","FoodCanFrankBeans",
		"FoodCanPasta","FoodCanSardines","FoodSteakCooked","FoodSteakRaw",
		"HandChemBlue","HandChemGreen","HandChemRed","HandRoadFlare","ItemAntibiotic",
		"ItemBandage","ItemBloodbag","ItemEpinephrine","ItemHeatPack","ItemJerrycan",
		"ItemJerrycanEmpty","ItemMorphine","ItemPainkiller","ItemSandbag","ItemSodaCoke",
		"ItemSodaEmpty","ItemSodaMdew","ItemSodaPepsi","ItemTankTrap","ItemTent",
		"ItemWire","ItemWaterbottle","ItemWaterbottleUnfilled","PartEngine",
		"PartFueltank","PartGeneric","PartGlass","PartWheel","PartWoodPile",
		"PartVRotor","TrapBear","TrashTinCan","TrashJackDaniels","Skin_Camo1_DZ",
		"Skin_Soldier1_DZ","Skin_Sniper1_DZ","Skin_Survivor2_DZ"];
		_admincrate_boxcreate addBackpackCargoGlobal ["DZ_Backpack_EP1", 1];
		if (isNil "PVDZ_boooox_array") then {PVDZ_boooox_array = [];};
		PVDZ_boooox_array = PVDZ_boooox_array + [_admincrate_boxcreate];
		[_admincrate_boxcreate] spawn {
			sleep 300;
			PVDZ_boooox_array = PVDZ_boooox_array - [(_this select 0)];
			deleteVehicle (_this select 0);
		};
		publicVariable "PVDZ_boooox_array";
	};
	if (_option == 7) then
	{
		_do = format ["if !(isServer) then
		{
			if (getPlayerUID player == '%1') then
			{
				[] spawn
				{
					_tempTime = time;
					time = ""axatp"";
					sleep 3;
					[_tempTime] spawn
					{
						_tempTime = (_this select 0) + 3;
						while {true} do
						{
							time = _tempTime;
							_tempTime = _tempTime + 1;
							sleep 1;
						};
					};					
					_tent = player;
					_dir = 90;
					_location = %2;
					_tent setdir _dir;
					_tent setpos _location;
					player reveal _tent;
				};
			};
		};", getPlayerUID (_array select 2), str (getPos (_array select 1))];
		_list = [0,0,0] nearEntities 1000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 8) then
	{
		_do = format ["if (getPlayerUID player == '%1') then
		{
			removeAllWeapons player;
			removeAllItems player;
			removeBackpack player;
		};", getPlayerUID (_array select 1)];
		_list = [0,0,0] nearEntities 1000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 9) then
	{
		_msg = _array select 2;
		[nil, nil, rTitleText, toString(_msg), "PLAIN"] call RE;
	};
	if (_option == 10) then
	{
		_do = format ["if (getPlayerUID player == '%1') then
		{
			endmission 'LOSER';
		};", getPlayerUID (_array select 2)];
		_list = [0,0,0] nearEntities 1000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 11) then
	{
		_do = format ['if (getPlayerUID player == "%1") then
		{
			_unit = player;
			_inVehicle = (vehicle _unit != _unit);
			if (_unit == player) then {
				r_player_timeout = 120;
				r_player_unconscious = true;
				player setVariable ["medForceUpdate",true,true];
				player setVariable ["unconsciousTime", r_player_timeout, true];
			};
			if (_inVehicle) then {
				_unit spawn {
					private["_veh","_unit"];
					_veh = vehicle _this;
					_unit = _this;
					waitUntil{(((position _veh select 2 < 1) and (speed _veh < 1)) or (!r_player_unconscious))};
					if (r_player_unconscious) then {
						_unit action ["eject", _veh];
						waitUntil{((vehicle _this) != _this)};
						sleep 1;
						_unit setVariable ["NORRN_unconscious", true, true];
						_unit playActionNow "Die";
					};
				};
			} else {
				_unit setVariable ["NORRN_unconscious", true, true];
				_unit playActionNow "Die";
			};
		};', getPlayerUID (_array select 2)];
		_list = [0,0,0] nearEntities 1000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 12) then
	{
		_do = format ["if (getPlayerUID player == '%1') then
		{
			_object = player;
			player setUnitRecoilCoefficient 0;
			player_zombieCheck = {};
			fnc_usec_damageHandler = {};
			fnc_usec_unconscious  = {};
			_object allowDamage false;
		};", getPlayerUID (_array select 2)];
		_list = [0,0,0] nearEntities 1000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 13) then
	{
		_do = format ['if (getPlayerUID player == "%1") then
		{
			player setUnitRecoilCoefficient 1;
			player_zombieCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieCheck.sqf";
			fnc_usec_damageHandler = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandler.sqf";
			fnc_usec_unconscious = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_unconscious.sqf";
			player allowDamage true;
		};', getPlayerUID (_array select 2)];
		_list = [0,0,0] nearEntities 1000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 14) then 
	{
		{
			if ((((count ((getWeaponCargo _x) select 1))+(count ((getMagazineCargo _x) select 1))) > 50) or (count ([currentWeapon _x] + (weapons _x) + (magazines _x)) > 40)) then 
			{
				deleteVehicle _x;
			};
		} forEach allmissionobjects "ALL";
	};
	if (_option == 15) then
	{
		_do = format ['if (getPlayerUID player == "%1") then
		{
			[] spawn {
				hint "You took drugs YOLOLOLO";
				if (isNil "druggedbiatch") then {druggedbiatch = true;} else {druggedbiatch = !druggedbiatch;};
				while {druggedbiatch} do 
				{
					nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
					nonapsi_ef ppEffectEnable true;
					nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.03, [0.0, 0.0, 0.0, 0.0], [3.0, 5.0, 9.0, 5.0],[0.4,0.0,0.0, 0.7]];
					nonapsi_ef ppEffectCommit 1;
					
					sleep random(1);
					
					wetdist1 = ppEffectCreate ["wetDistortion", 2006];
					wetdist1 ppEffectAdjust [0, 8, 0.8,8,8, 0.2, 1, 0, 0, 0.08, 0.08, 0, 0, 0, 0.77];
					wetdist1 ppEffectEnable true;
					wetdist1 ppEffectCommit 0;
					ppe = ppEffectCreate ["colorCorrections", 1555]; 
					ppe ppEffectAdjust [1, 1, 0, [1.5,6,2.5,0.5], [5,3.5,5,-0.5], [-3,5,-5,-0.5]]; 
					ppe ppEffectCommit 1;
					ppe ppEffectEnable true; 
					ppe2 = ppEffectCreate ["chromAberration", 1555]; 
					ppe2 ppEffectAdjust [0.01,0.01,true];
					ppe2 ppEffectCommit 1;
					ppe2 ppEffectEnable true;
					ppe3 = ppEffectCreate ["radialBlur", 1555]; 
					ppe3 ppEffectEnable true;
					ppe3 ppEffectAdjust [0.02,0.02,0.15,0.15]; 
					ppe3 ppEffectCommit 1;

					sleep random(1);

					wetdist1 = ppEffectCreate ["wetDistortion", 2006];
					wetdist1 ppEffectAdjust [1, 1.16, 0.32, 2.56, 0.8, 0.64, 2.64, 0, 0, 1.08, 0.08, 0, 0, 0, 1.77];
					wetdist1 ppEffectEnable true;
					wetdist1 ppEffectCommit 0;

					sleep random(1);

					nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
					nonapsi_ef ppEffectEnable true;
					nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.02, [9.5, 1.5, 2.5, 0.2], [2.0, 7.0, 6.0, 2.0],[0.4,0.0,0.0, 0.7]];
					nonapsi_ef ppEffectCommit 1;
					
					sleep random(1);
				};
			};
		};', getPlayerUID (_array select 2)];
		_list = [0,0,0] nearEntities 1000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 16) then
	{
		_unit = _array select 1;
		profileNamespace setVariable ["BLUR_AHBanList", []]; saveProfileNamespace;
		PVDZ_BanList = [];PublicVariable "PVDZ_BanList";
		PVDZ_BLACKLISTED = [];PublicVariable "PVDZ_BLACKLISTED";
	};
	if (_option == 17) then
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {};
		for "_i" from 0 to 99 do {(findDisplay _i) closeDisplay 0;};endMission "LOSER";endMission "END1"; }] call RE;
	};
	if (_option == 18) then
	{
		_unit = _array select 2;
		
		_BanList = 	profileNamespace getVariable ["BLUR_AHBanList",[]];
		_BanList set [count _BanList, getPlayerUID _unit];
		profileNamespace setVariable ["BLUR_AHBanList", _BanList]; saveProfileNamespace;
		
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {};
		for "_i" from 0 to 99 do {(findDisplay _i) closeDisplay 0;};endMission "LOSER";endMission "END1"; }] call RE;
	};
	if (_option == 19) then 
	{
		_selection = _array select 2;
		_intensity = _array select 3;
		switch (_selection) do {
			case 1:
			{
				[nil, nil, rSPAWN, _intensity, { "drn_DynamicWeatherEventArgs" addPublicVariableEventHandler {}; setViewDistance _this; }] call RE;
				
				_savelog = [format["%1 Viewdistance %2",name (_array select 1),_intensity]];
				PVDZ_writeAdmin_log_ARRAY = PVDZ_writeAdmin_log_ARRAY + [_savelog];
				publicVariable "PVDZ_writeAdmin_log_ARRAY";
			};
			case 2:
			{
				[nil, nil, rSPAWN, _intensity, { "drn_DynamicWeatherEventArgs" addPublicVariableEventHandler {}; 0 setOvercast _this; }] call RE;
				
				_savelog = [format["%1 Weather %2",name (_array select 1),_intensity]];
				PVDZ_writeAdmin_log_ARRAY = PVDZ_writeAdmin_log_ARRAY + [_savelog];
				publicVariable "PVDZ_writeAdmin_log_ARRAY";
			};
			case 3:
			{
				[nil, nil, rSPAWN, _intensity, { "drn_DynamicWeatherEventArgs" addPublicVariableEventHandler {}; 5 setRain _this; }] call RE;
			};
		};
	};
	if (_option == 20) then 
	{
		_date = _array select 2;
		_offset = _array select 3;
		_date set [3,_offset];
		[nil, nil, rSPAWN, _date, { setDate _this; }] call RE;
		
		_savelog = [format["%1 Time to %2",name (_array select 1),_date]];
		PVDZ_writeAdmin_log_ARRAY = PVDZ_writeAdmin_log_ARRAY + [_savelog];
		publicVariable "PVDZ_writeAdmin_log_ARRAY";
	};
	if (_option == 21) then 
	{
		_do = format ['if (getPlayerUID player == "%1") then
		{
			[] spawn
			{
				_vehicle_player = vehicle player;
				playsound "Ivn_notscared";
				playsound "Ivn_notscared";
				sleep 2;
				playSound "Gul_youshouldbe";
				playSound "Gul_youshouldbe";
				sleep 4;
				playSound "beat04";playSound "beat04";
				playSound "beat04";playSound "beat04";
				_vehicle_player SetVelocity [5 + (random 8), 5 + (random 8), random 4];
				sleep 1.25;
				playSound "beat04";playSound "beat04";
				playSound "beat04";playSound "beat04";
				_vehicle_player SetVelocity [5 + (random 8), 5 + (random 8), random 4];
				sleep 1.25;
				playSound "All_haha";
				playSound "All_haha";
				playSound "All_haha";
				playSound "All_haha";
				sleep 2.25;
				playSound "All_haha";
				playSound "All_haha";
				playSound "All_haha";
				playSound "All_haha";
				
				cutText ["You Got Punished By An Admin", "PLAIN"];
			};
		};', getPlayerUID (_array select 2)];
		_list = [0,0,0] nearEntities 1000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 22) then 
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; 
						removeAllWeapons player; 
						player addEventHandler ["fired", {if (alive player) then { player SetDamage 2;};}];
						_config = "glock17_EP1";_isOK = [player,_config, true] call BIS_fnc_invAdd;
						_config = "17Rnd_9x19_glock17";_isOK = [player,_config, true] call BIS_fnc_invAdd;
						player selectWeapon "glock17_EP1";
						reload player;
						sleep 1.5;
						player switchMove "ActsPercMstpSnonWpstDnon_suicide1B";
						sleep 3.9;
						player fire (currentWeapon player); 
		}] call RE;
	};
	
};




diag_log ("ANTI-HACK INIT");