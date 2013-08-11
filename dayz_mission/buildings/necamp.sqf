// NE Airfield Military Camp by t.hundero.us
 
// Installing This Modification
// 1. Save this code as "necamp.sqf"
// 2. Place the .sqf file inside your mission.pbo file
// 3. Open "init.sqf" and add the following line to the very end -
// [] execVM "necamp.sqf";
 
if (isServer) then {

_vehicle_0 = objNull;
if (true) then
{
  _this = createVehicle ["US_WarfareBContructionSite_Base_EP1", [12012.212, 12702.035], [], 0, "CAN_COLLIDE"];
  _vehicle_0 = _this;
  _this setDir 26.154211;
  _this setPos [12012.212, 12702.035];
};

_vehicle_1 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [12089.065, 12652.161, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1 = _this;
  _this setPos [12089.065, 12652.161, 4.5776367e-005];
};

_vehicle_2 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Medium", [12089.398, 12653.985, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_2 = _this;
  _this setDir -53.872581;
  _this setPos [12089.398, 12653.985, -7.6293945e-005];
};

_vehicle_3 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNet_EAST", [12089, 12650.426, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_3 = _this;
  _this setDir 106.56143;
  _this setPos [12089, 12650.426, -0.00012207031];
};

_vehicle_4 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNetB_EAST", [12019.382, 12679.734, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4 = _this;
  _this setDir -55.920654;
  _this setPos [12019.382, 12679.734, -1.5258789e-005];
};

_vehicle_5 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [12017.079, 12700.334, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5 = _this;
  _this setDir 19.750807;
  _this setPos [12017.079, 12700.334, -1.5258789e-005];
};

_vehicle_6 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_small", [12020.427, 12676.867, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_6 = _this;
  _this setDir 249.93091;
  _this setPos [12020.427, 12676.867, -1.5258789e-005];
};

_vehicle_7 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [12066.161, 12656.576, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_7 = _this;
  _this setDir 19.273684;
  _this setPos [12066.161, 12656.576, -9.1552734e-005];
};

_vehicle_8 = objNull;
if (true) then
{
  _this = createVehicle ["PowGen_Big_EP1", [12098.973, 12666.906, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_8 = _this;
  _this setDir -7.4678459;
  _this setPos [12098.973, 12666.906, -1.5258789e-005];
};

_vehicle_9 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [12040.633, 12678.384, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_9 = _this;
  _this setDir -68.620232;
  _this setPos [12040.633, 12678.384, -4.5776367e-005];
};

_vehicle_10 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [12036.58, 12667.239, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_10 = _this;
  _this setDir -69.179428;
  _this setPos [12036.58, 12667.239, -3.0517578e-005];
};

_vehicle_11 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [12054.9, 12660.685, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_11 = _this;
  _this setDir 109.72045;
  _this setPos [12054.9, 12660.685, -1.5258789e-005];
};

_vehicle_12 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [12058.72, 12671.986, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_12 = _this;
  _this setDir 110.10094;
  _this setPos [12058.72, 12671.986, -4.5776367e-005];
};

_vehicle_16 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Antenna", [12103.145, 12664.065], [], 0, "CAN_COLLIDE"];
  _vehicle_16 = _this;
  _this setPos [12103.145, 12664.065];
};

_vehicle_17 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel5", [12096.146, 12669.363, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_17 = _this;
  _this setDir 182.55235;
  _this setPos [12096.146, 12669.363, 3.0517578e-005];
};

_vehicle_18 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel5", [12095.984, 12668.319, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_18 = _this;
  _this setDir 80.653389;
  _this setPos [12095.984, 12668.319, 7.6293945e-005];
};

_vehicle_19 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [12072.947, 12654.265, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_19 = _this;
  _this setDir 18.193274;
  _this setPos [12072.947, 12654.265, -1.5258789e-005];
};

_vehicle_20 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_tiny", [12086.664, 12647.318, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_20 = _this;
  _this setDir 214.1142;
  _this setPos [12086.664, 12647.318, -1.5258789e-005];
};

_vehicle_21 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [12024.823, 12681.604, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_21 = _this;
  _this setDir 105.41257;
  _this setPos [12024.823, 12681.604, 1.5258789e-005];
};

_vehicle_22 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [12022.66, 12682.408], [], 0, "CAN_COLLIDE"];
  _vehicle_22 = _this;
  _this setDir -41.223644;
  _this setPos [12022.66, 12682.408];
};

_vehicle_23 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Crates_EP1", [12025.056, 12683.34, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_23 = _this;
  _this setPos [12025.056, 12683.34, -1.5258789e-005];
};

_vehicle_24 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_Checkpoint", [12024.707, 12679.841, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_24 = _this;
  _this setDir 86.312393;
  _this setPos [12024.707, 12679.841, -3.0517578e-005];
};

_vehicle_34 = objNull;
if (true) then
{
  _this = createVehicle ["Suitcase", [12055.349, 12632.204], [], 0, "CAN_COLLIDE"];
  _vehicle_34 = _this;
  _this setPos [12055.349, 12632.204];
};

_vehicle_36 = objNull;
if (true) then
{
  _this = createVehicle ["USMC_WarfareBFieldhHospital", [12079.237, 12672.125, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_36 = _this;
  _this setDir -71.348488;
  _this setPos [12079.237, 12672.125, -4.5776367e-005];
};

_vehicle_40 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Toilet", [12065.208, 12683.073], [], 0, "CAN_COLLIDE"];
  _vehicle_40 = _this;
  _this setDir 20.699389;
  _this setPos [12065.208, 12683.073];
};

_vehicle_41 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Toilet", [12067.521, 12682.354, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_41 = _this;
  _this setDir 22.36478;
  _this setPos [12067.521, 12682.354, -3.0517578e-005];
};

_vehicle_42 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Toilet", [12063.232, 12683.86, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_42 = _this;
  _this setDir 24.516426;
  _this setPos [12063.232, 12683.86, -6.1035156e-005];
};

_vehicle_43 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [12061.536, 12685.09, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_43 = _this;
  _this setDir -64.267242;
  _this setPos [12061.536, 12685.09, -7.6293945e-005];
};

_vehicle_44 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [12058.547, 12684.494, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_44 = _this;
  _this setDir 380.03699;
  _this setPos [12058.547, 12684.494, 7.6293945e-005];
};

_vehicle_45 = objNull;
if (true) then
{
  _this = createVehicle ["Camp_EP1", [12097.983, 12659.155, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_45 = _this;
  _this setDir -72.059647;
  _this setPos [12097.983, 12659.155, -3.0517578e-005];
};

_vehicle_46 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrate_NoInteractive_", [12074.639, 12666.712, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_46 = _this;
  _this setDir 125.90913;
  _this setPos [12074.639, 12666.712, 1.5258789e-005];
};

_vehicle_47 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel1", [12075.219, 12657.217, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_47 = _this;
  _this setPos [12075.219, 12657.217, -1.5258789e-005];
};

_vehicle_49 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [11991.129, 12673.759, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_49 = _this;
  _this setPos [11991.129, 12673.759, 3.0517578e-005];
};

_vehicle_50 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [11989.877, 12669.979], [], 0, "CAN_COLLIDE"];
  _vehicle_50 = _this;
  _this setDir 55.316391;
  _this setPos [11989.877, 12669.979];
};

_vehicle_51 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo2E_EP1", [12065.116, 12689.605, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_51 = _this;
  _this setDir -77.999542;
  _this setPos [12065.116, 12689.605, -4.5776367e-005];
};

_vehicle_52 = objNull;
if (true) then
{
  _this = createVehicle ["US_WarfareBContructionSite1_Base_EP1", [12042.644, 12698.686, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_52 = _this;
  _this setDir -165.43417;
  _this setPos [12042.644, 12698.686, -4.5776367e-005];
};

_vehicle_53 = objNull;
if (true) then
{
  _this = createVehicle ["US_WarfareBContructionSite_Base_EP1", [12071.685, 12687.056, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_53 = _this;
  _this setDir -65.762817;
  _this setPos [12071.685, 12687.056, -4.5776367e-005];
};

_vehicle_54 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1Bo_military", [12037.47, 12702.407], [], 0, "CAN_COLLIDE"];
  _vehicle_54 = _this;
  _this setPos [12037.47, 12702.407];
};

_vehicle_61 = objNull;
if (true) then
{
  _this = createVehicle ["Notice_board_EP1", [12057.489, 12630.631, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_61 = _this;
  _this setDir 169.99197;
  _this setPos [12057.489, 12630.631, 4.5776367e-005];
};

_vehicle_63 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [12058.05, 12638.766, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_63 = _this;
  _this setPos [12058.05, 12638.766, -1.5258789e-005];
};

_vehicle_64 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [12056.225, 12637.339], [], 0, "CAN_COLLIDE"];
  _vehicle_64 = _this;
  _this setDir -2.0316877;
  _this setPos [12056.225, 12637.339];
};

_vehicle_65 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [12056.369, 12634.562, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_65 = _this;
  _this setDir -38.206127;
  _this setPos [12056.369, 12634.562, -1.5258789e-005];
};

_vehicle_66 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [12057.821, 12635.813, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_66 = _this;
  _this setDir 10.937011;
  _this setPos [12057.821, 12635.813, 1.5258789e-005];
};

_vehicle_67 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [12056.48, 12639.81, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_67 = _this;
  _this setDir 37.910099;
  _this setPos [12056.48, 12639.81, 3.0517578e-005];
};

_vehicle_68 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [12054.456, 12631.711, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_68 = _this;
  _this setDir 16.33835;
  _this setPos [12054.456, 12631.711, -6.1035156e-005];
};

_vehicle_69 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [12050.692, 12635.532, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_69 = _this;
  _this setDir -70.69368;
  _this setPos [12050.692, 12635.532, 3.0517578e-005];
};

_vehicle_70 = objNull;
if (true) then
{
  _this = createVehicle ["WoodChair", [12049.876, 12666.698, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_70 = _this;
  _this setDir -29.116951;
  _this setPos [12049.876, 12666.698, 1.5258789e-005];
};

_vehicle_71 = objNull;
if (true) then
{
  _this = createVehicle ["SmallTable", [12049.535, 12665.617, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_71 = _this;
  _this setDir 24.837084;
  _this setPos [12049.535, 12665.617, 3.0517578e-005];
};

_vehicle_72 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [12059.921, 12686.013, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_72 = _this;
  _this setDir 1.4070174;
  _this setPos [12059.921, 12686.013, -3.0517578e-005];
};

_vehicle_73 = objNull;
if (true) then
{
  _this = createVehicle ["Land_bags_stack_EP1", [12019.378, 12698.208, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_73 = _this;
  _this setDir 138.5748;
  _this setPos [12019.378, 12698.208, 1.5258789e-005];
};

_vehicle_74 = objNull;
if (true) then
{
  _this = createVehicle ["Loudspeakers_EP1", [12053.941, 12656.053, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_74 = _this;
  _this setPos [12053.941, 12656.053, 1.5258789e-005];
};

_vehicle_80 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel1", [12058.03, 12686.328, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_80 = _this;
  _this setPos [12058.03, 12686.328, -3.0517578e-005];
};

_vehicle_84 = objNull;
if (true) then
{
  _this = createVehicle ["TK_GUE_WarfareBVehicleServicePoint_EP1", [12050.618, 12689.802], [], 0, "CAN_COLLIDE"];
  _vehicle_84 = _this;
  _this setDir 197.40753;
  _this setPos [12050.618, 12689.802];
};

_vehicle_85 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta2", [12097.252, 12670.478, -0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_85 = _this;
  _this setDir -47.454025;
  _this setPos [12097.252, 12670.478, -0.00010681152];
};

_vehicle_86 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Small", [12087.6, 12653.468, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_86 = _this;
  _this setPos [12087.6, 12653.468, 1.5258789e-005];
};

_vehicle_87 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fortified_nest_small", [12086.483, 12555.646, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_87 = _this;
  _this setDir -12.875128;
  _this setPos [12086.483, 12555.646, 6.1035156e-005];
};

_vehicle_88 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [12091.178, 12555.813, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_88 = _this;
  _this setDir -11.770027;
  _this setPos [12091.178, 12555.813, -7.6293945e-005];
};

_vehicle_89 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [12083.402, 12554.49, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_89 = _this;
  _this setDir -10.63287;
  _this setPos [12083.402, 12554.49, -7.6293945e-005];
};

_vehicle_90 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [12080.136, 12554.648, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_90 = _this;
  _this setDir -8.1724463;
  _this setPos [12080.136, 12554.648, -4.5776367e-005];
};

_vehicle_91 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [11986.376, 12533.838, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_91 = _this;
  _this setDir 75.92968;
  _this setPos [11986.376, 12533.838, 4.5776367e-005];
};

_vehicle_92 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fortified_nest_small", [11987.42, 12530.523, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_92 = _this;
  _this setDir 76.664238;
  _this setPos [11987.42, 12530.523, 1.5258789e-005];
};

_vehicle_93 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [11987.76, 12527.142], [], 0, "CAN_COLLIDE"];
  _vehicle_93 = _this;
  _this setDir 71.89473;
  _this setPos [11987.76, 12527.142];
};

_vehicle_94 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [11989.053, 12524.496, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_94 = _this;
  _this setDir 54.500572;
  _this setPos [11989.053, 12524.496, 6.1035156e-005];
};

_vehicle_95 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [11989.645, 12528.221], [], 0, "CAN_COLLIDE"];
  _vehicle_95 = _this;
  _this setDir 13.998145;
  _this setPos [11989.645, 12528.221];
};

_vehicle_96 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Medium", [12081.581, 12555.928, -0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_96 = _this;
  _this setDir 8.1626053;
  _this setPos [12081.581, 12555.928, -0.00010681152];
};

_vehicle_97 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrate_NoInteractive_", [12083.071, 12556.101, 0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_97 = _this;
  _this setDir -26.009325;
  _this setPos [12083.071, 12556.101, 0.00010681152];
};

_vehicle_98 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [12104.807, 12653.311, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_98 = _this;
  _this setDir -0.93830192;
  _this setPos [12104.807, 12653.311, -1.5258789e-005];
};

_vehicle_99 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel4", [12106.846, 12666.894], [], 0, "CAN_COLLIDE"];
  _vehicle_99 = _this;
  _this setPos [12106.846, 12666.894];
};

_vehicle_100 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [12105.366, 12654.756, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_100 = _this;
  _this setDir -11.951507;
  _this setPos [12105.366, 12654.756, -3.0517578e-005];
};

_vehicle_102 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_concrete_High", [12059.637, 12691.035], [], 0, "CAN_COLLIDE"];
  _vehicle_102 = _this;
  _this setDir -174.34058;
  _this setPos [12059.637, 12691.035];
};

_vehicle_105 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_palletsfoiled_heap", [12109.088, 12662.078], [], 0, "CAN_COLLIDE"];
  _vehicle_105 = _this;
  _this setDir 17.133743;
  _this setPos [12109.088, 12662.078];
};

_vehicle_110 = objNull;
if (true) then
{
  _this = createVehicle ["Land_transport_crates_EP1", [12104.66, 12667.159, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_110 = _this;
  _this setPos [12104.66, 12667.159, 1.5258789e-005];
};

_vehicle_111 = objNull;
if (true) then
{
  _this = createVehicle ["Land_transport_crates_EP1", [12050.36, 12684.045], [], 0, "CAN_COLLIDE"];
  _vehicle_111 = _this;
  _this setPos [12050.36, 12684.045];
};

_vehicle_112 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_Crate_wood", [12054.786, 12654.306], [], 0, "CAN_COLLIDE"];
  _vehicle_112 = _this;
  _this setPos [12054.786, 12654.306];
};

_vehicle_114 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tires_EP1", [12022.361, 12674.603, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_114 = _this;
  _this setPos [12022.361, 12674.603, 3.0517578e-005];
};

_vehicle_116 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_Crate_wood", [12047.938, 12684.255], [], 0, "CAN_COLLIDE"];
  _vehicle_116 = _this;
  _this setDir -30.784639;
  _this setPos [12047.938, 12684.255];
};

_vehicle_119 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Pneu", [12021.911, 12698.834, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_119 = _this;
  _this setPos [12021.911, 12698.834, -3.0517578e-005];
};

_vehicle_125 = objNull;
if (true) then
{
  _this = createVehicle ["Land_bags_stack_EP1", [12047.853, 12666.441, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_125 = _this;
  _this setDir -50.071819;
  _this setPos [12047.853, 12666.441, -1.5258789e-005];
};
};