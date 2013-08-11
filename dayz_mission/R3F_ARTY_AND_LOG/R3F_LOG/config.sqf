/**
 * English and French comments
 * Commentaires anglais et fran�ais
 * 
 * This file contains the configuration variables of the logistics system.
 * Fichier contenant les variables de configuration du syst�me de logistique.
 * 
 * Important note : All the classes names which inherits from the ones used in configuration variables will be also available.
 * Note importante : Tous les noms de classes d�rivant de celles utilis�es dans les variables de configuration seront aussi valables.
 */

/*
 * There are two ways to manage new objects with the logistics system. The first is to add these objects in the
 * folowing appropriate lists. The second is to create a new external file in the /addons_config/ directory,
 * according to the same scheme as the existing ones, and to add a #include at the end of this current file.
 * 
 * Deux moyens existent pour g�rer de nouveaux objets avec le syst�me logistique. Le premier consiste � ajouter
 * ces objets dans les listes appropri�es ci-dessous. Le deuxi�me est de cr�er un fichier externe dans le r�pertoire
 * /addons_config/ selon le m�me sch�ma que ceux qui existent d�j�, et d'ajouter un #include � la fin de ce pr�sent fichier.
 */

/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/

/**
 * List of class names of (ground or air) vehicles which can tow towables objects.
 * Liste des noms de classes des v�hicules terrestres pouvant remorquer des objets remorquables.
 */
R3F_LOG_CFG_remorqueurs =
[
	"ArmoredSUV_PMC_DZ",
    "datsun1_civil_1_open",
    "datsun1_civil_2_covered",
    "datsun1_civil_3_open",
    "GAZ_Vodnik",
    "GAZ_Vodnik_MedEvac",
    "hilux1_civil_1_open",
    "hilux1_civil_2_covered",
    "hilux1_civil_3_open_EP1",
    "HMMWV_Ambulance",
    "HMMWV_Ambulance_CZ_DES_EP1",
    "HMMWV_DES_EP1",
    "HMMWV_DZ",
    "HMMWV_M135_DES_EP1",
    "HMMWV_M1151_M2_CZ_DES_EP1",
    "HMMWV_M998A_SOV_DEV_EP1",
    "Ikarus",
    "Kamaz",
    "KamazRefuel_DZ",
    "LandRover_CZ_EP1",
    "LandRover_MG_TK_EP1",
    "LandRover_Special_CZ_EP1",
    "LandRover_TK_CIV_EP1",
    "M1030_US_DES_EP1",
    "MTVR_DES_EP1",
    "MtvrRefuel_DES_EP1_DZ",
    "Offroad_DSHKM_GUE",
    "Pickup_PK_GUE",
    "Pickup_PK_INS",
    "Pickup_PK_TK_GUE_EP1",
    "SUV_Blue",
    "SUV_Camo",
    "SUV_Charcoal",
    "SUV_Green",
    "SUV_Orange",
    "SUV_Pink",
    "SUV_Red",
    "SUV_Silver",
    "SUV_TK_CIV_EP1",
    "SUV_White",
    "SUV_Yellow",
    "tractor",
    "UAZ_CDF",
    "UAZ_INS",
    "UAZ_MG_TK_EP1",
    "UAZ_RU",
    "UAZ_Unarmed_TK_CIV_EP1",
    "UAZ_Unarmed_UN_EP1",
    "UralCivil",
    "UralCivil2",
    "Ural_CDF",
    "Ural_TK_CIV_EP1",
    "Ural_UN_EP1",
    "UralRefuel_TK_EP1_DZ",
    "V3S_Open_TK_CIV_EP1",
    "V3S_TK_EP1",
    "V3S_Refuel_TK_GUE_EP1_DZ",
    "VIL_ducato_bus",
    "VIL_ducato_cargo",
    "VIL_ducato_cargo2",
    "VIL_hilux1_civi2",
    "VIL_hilux1_civi3",
    "VIL_hilux1_civil",
    "VIL_hilux1_police",
    "VIL_lublin_freez",
    "VIL_panda_civil",
    "VIL_panda_civil1",
    "VIL_sprinter_cargo",
    "VIL_Star_S2000o",
    "VIL_Star_S2000",
    "VIL_transit_civ",
    "VIL_transit_truck",
    "VIL_vivaro_amb",
    "VIL_vivaro_civ",
    "VIL_volvofl",
    "VIL_vwt4_civ",
    "VIL_vwt4_banksec",
    "VIL_assistvan"
];

/**
 * List of class names of towables objects.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_objets_remorquables =
[
    "AH6X_DZ",
    "CH_47F_EP1_DZ",
    "MH6J_DZ",
    "Mi17_Civilian_DZ",
    "Mi17_DZ",
    "UH1H_DZ",
    "UH1Y_DZ",
    "UH60M_EP1_DZ",
    "Mi24_D_TK_EP1",
    "ArmoredSUV_PMC_DZ",
    "datsun1_civil_1_open",
    "datsun1_civil_2_covered",
    "datsun1_civil_3_open",
    "GAZ_Vodnik",
    "GAZ_Vodnik_MedEvac",
    "hilux1_civil_1_open",
    "hilux1_civil_2_covered",
    "hilux1_civil_3_open_EP1",
    "HMMWV_Ambulance",
    "HMMWV_Ambulance_CZ_DES_EP1",
    "HMMWV_DES_EP1",
    "HMMWV_DZ",
    "HMMWV_M135_DES_EP1",
    "HMMWV_M1151_M2_CZ_DES_EP1",
    "HMMWV_M998A_SOV_DEV_EP1",
    "LandRover_CZ_EP1",
    "LandRover_MG_TK_EP1",
    "LandRover_Special_CZ_EP1",
    "LandRover_TK_CIV_EP1",
    "M1030_US_DES_EP1",
    "MTVR_DES_EP1",
    "MtvrRefuel_DES_EP1_DZ",
    "Offroad_DSHKM_GUE",
    "Pickup_PK_GUE",
    "Pickup_PK_INS",
    "Pickup_PK_TK_GUE_EP1",
    "SUV_Blue",
    "SUV_Camo",
    "SUV_Charcoal",
    "SUV_Green",
    "SUV_Orange",
    "SUV_Pink",
    "SUV_Red",
    "SUV_Silver",
    "SUV_TK_CIV_EP1",
    "SUV_White",
    "SUV_Yellow",
    "tractor",
    "UAZ_CDF",
    "UAZ_INS",
    "UAZ_MG_TK_EP1",
    "UAZ_RU",
    "UAZ_Unarmed_TK_CIV_EP1",
    "UAZ_Unarmed_UN_EP1",
    "VIL_ducato_bus",
    "VIL_ducato_cargo",
    "VIL_ducato_cargo2",
    "VIL_hilux1_civi2",
    "VIL_hilux1_civi3",
    "VIL_hilux1_civil",
    "VIL_hilux1_police",
    "VIL_lublin_freez",
    "VIL_panda_civil",
    "VIL_panda_civil1",
    "VIL_sprinter_cargo",
    "VIL_Star_S2000o",
    "VIL_Star_S2000",
    "VIL_transit_civ",
    "VIL_transit_truck",
    "VIL_vivaro_amb",
    "VIL_vivaro_civ",
    "VIL_volvofl",
    "VIL_vwt4_civ",
    "VIL_vwt4_banksec",
    "VIL_assistvan",
    "car_hatchback",
    "car_sedan",
    "Lada1",
    "Lada1_TK_CIV_EP1",
    "Lada2",
    "Lada2_TK_CIV_EP1",
    "LadaLM",
    "policecar",
    "S1203_ambulance_EP1",
    "S1203_TK_CIV_EP1",
    "Skoda",
    "SkodaBlue",
    "SkodaGreen",
    "SkodaRed",
    "VIL_alfa_civil",
    "VIL_alfa_civil2",
    "VIL_berlingo",
    "VIL_bmw7_civil",
    "VIL_bmw7_civil1",
    "VIL_bmw7_civil2",
    "VIL_bmw7_civilvip",
    "VIL_citrone_civil",
    "VIL_citrone_civil1",
    "VIL_citrone_civil2",
    "VIL_citrone_civil3",
    "VIL_fobia_civil",
    "VIL_fobia_civil1",
    "VIL_fobia_civil2",
    "VIL_fobia_civil3",
    "VIL_fobia_civil4",
    "VIL_fobia_civil5",
    "VIL_karoca_civil",
    "VIL_karoca_civil_red",
    "VIL_kia_ceed",
    "VIL_kia_ceed2",
    "VIL_kia_ceed3",
    "VIL_kia_ceed4",
    "VIL_kia_ceeddwa",
    "VIL_kia_ceeddwa2",
    "VIL_kia_ceeddwa3",
    "VIL_kia_ceeddwa4",
    "VIL_kia_ceeddwa5",
    "VIL_kia_ceeddwa6",
    "VIL_mondeo_civil",
    "VIL_mondeo_civil1",
    "VIL_mondeo_civil3",
    "VIL_mondeo_civil4",
    "VIL_mondeo_civil5",
    "VIL_octavia_civil",
    "VIL_octavia_civil2",
    "VIL_octavia_civil3",
    "VIL_octavia_civil4",
    "VIL_passat_civil",
    "VIL_passat_civil1",
    "VIL_passat_civil2",
    "VIL_passat_civil3",
    "VIL_passat_civil4",
    "VIL_passat_civil5",
    "VIL_smart_civil",
    "VIL_smart_civil1",
    "VIL_smart_civil2",
    "VIL_smart_civil3",
    "VIL_smart_civil4",
    "VIL_smart_civil5",
    "VolhaLimo_TK_CIV_EP1",
    "Volha_1_TK_CIV_EP1",
    "Volha_2_TK_CIV_EP1",
    "VWGolf",
    "ATV_CZ_EP1",
    "ATV_US_EP1",
    "Fishing_Boat",
    "JetSkiYanahui_Case_blue",
    "JetSkiYanahui_Case_Green",
    "JetSkiYanahui_Case_Yellow",
    "PBX",
    "RHIB",
    "SmallBoat_1",
    "SmallBoat_2",
    "Zodiac",
    "AN2_DZ",
    "GNT_C185C",
    "GNT_C185R",
    "GNT_C185U",
    "GNT_C185"
];


/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of air vehicles which can lift liftables objects.
 * Liste des noms de classes des v�hicules a�riens pouvant h�liporter des objets h�liportables.
 */
R3F_LOG_CFG_heliporteurs =
[
	"AH6X_DZ",
    "CH_47F_EP1_DZ",
    "MH6J_DZ",
    "Mi17_Civilian_DZ",
    "Mi17_DZ",
    "UH1H_DZ",
    "UH1Y_DZ",
    "UH60M_EP1_DZ",
    "Mi24_D_TK_EP1",
    "MV22_DZ"
];

/**
 * List of class names of liftables objects.
 * Liste des noms de classes des objets h�liportables.
 */
R3F_LOG_CFG_objets_heliportables =
[
    "AH6X_DZ",
    "CH_47F_EP1_DZ",
    "MH6J_DZ",
    "Mi17_Civilian_DZ",
    "Mi17_DZ",
    "UH1H_DZ",
    "UH1Y_DZ",
    "UH60M_EP1_DZ",
    "Mi24_D_TK_EP1",
    "ArmoredSUV_PMC_DZ",
    "datsun1_civil_1_open",
    "datsun1_civil_2_covered",
    "datsun1_civil_3_open",
    "GAZ_Vodnik",
    "GAZ_Vodnik_MedEvac",
    "hilux1_civil_1_open",
    "hilux1_civil_2_covered",
    "hilux1_civil_3_open_EP1",
    "HMMWV_Ambulance",
    "HMMWV_Ambulance_CZ_DES_EP1",
    "HMMWV_DES_EP1",
    "HMMWV_DZ",
    "HMMWV_M135_DES_EP1",
    "HMMWV_M1151_M2_CZ_DES_EP1",
    "HMMWV_M998A_SOV_DEV_EP1",
    "Ikarus",
    "Kamaz",
    "KamazRefuel_DZ",
    "LandRover_CZ_EP1",
    "LandRover_MG_TK_EP1",
    "LandRover_Special_CZ_EP1",
    "LandRover_TK_CIV_EP1",
    "M1030_US_DES_EP1",
    "MTVR_DES_EP1",
    "MtvrRefuel_DES_EP1_DZ",
    "Offroad_DSHKM_GUE",
    "Pickup_PK_GUE",
    "Pickup_PK_INS",
    "Pickup_PK_TK_GUE_EP1",
    "SUV_Blue",
    "SUV_Camo",
    "SUV_Charcoal",
    "SUV_Green",
    "SUV_Orange",
    "SUV_Pink",
    "SUV_Red",
    "SUV_Silver",
    "SUV_TK_CIV_EP1",
    "SUV_White",
    "SUV_Yellow",
    "tractor",
    "UAZ_CDF",
    "UAZ_INS",
    "UAZ_MG_TK_EP1",
    "UAZ_RU",
    "UAZ_Unarmed_TK_CIV_EP1",
    "UAZ_Unarmed_UN_EP1",
    "UralCivil",
    "UralCivil2",
    "Ural_CDF",
    "Ural_TK_CIV_EP1",
    "Ural_UN_EP1",
    "UralRefuel_TK_EP1_DZ",
    "V3S_Open_TK_CIV_EP1",
    "V3S_TK_EP1",
    "V3S_Refuel_TK_GUE_EP1_DZ",
    "VIL_ducato_bus",
    "VIL_ducato_cargo",
    "VIL_ducato_cargo2",
    "VIL_hilux1_civi2",
    "VIL_hilux1_civi3",
    "VIL_hilux1_civil",
    "VIL_hilux1_police",
    "VIL_lublin_freez",
    "VIL_panda_civil",
    "VIL_panda_civil1",
    "VIL_sprinter_cargo",
    "VIL_Star_S2000o",
    "VIL_Star_S2000",
    "VIL_transit_civ",
    "VIL_transit_truck",
    "VIL_vivaro_amb",
    "VIL_vivaro_civ",
    "VIL_volvofl",
    "VIL_vwt4_civ",
    "VIL_vwt4_banksec",
    "VIL_assistvan",
    "car_hatchback",
    "car_sedan",
    "Lada1",
    "Lada1_TK_CIV_EP1",
    "Lada2",
    "Lada2_TK_CIV_EP1",
    "LadaLM",
    "policecar",
    "S1203_ambulance_EP1",
    "S1203_TK_CIV_EP1",
    "Skoda",
    "SkodaBlue",
    "SkodaGreen",
    "SkodaRed",
    "VIL_alfa_civil",
    "VIL_alfa_civil2",
    "VIL_berlingo",
    "VIL_bmw7_civil",
    "VIL_bmw7_civil1",
    "VIL_bmw7_civil2",
    "VIL_bmw7_civilvip",
    "VIL_citrone_civil",
    "VIL_citrone_civil1",
    "VIL_citrone_civil2",
    "VIL_citrone_civil3",
    "VIL_fobia_civil",
    "VIL_fobia_civil1",
    "VIL_fobia_civil2",
    "VIL_fobia_civil3",
    "VIL_fobia_civil4",
    "VIL_fobia_civil5",
    "VIL_karoca_civil",
    "VIL_karoca_civil_red",
    "VIL_kia_ceed",
    "VIL_kia_ceed2",
    "VIL_kia_ceed3",
    "VIL_kia_ceed4",
    "VIL_kia_ceeddwa",
    "VIL_kia_ceeddwa2",
    "VIL_kia_ceeddwa3",
    "VIL_kia_ceeddwa4",
    "VIL_kia_ceeddwa5",
    "VIL_kia_ceeddwa6",
    "VIL_mondeo_civil",
    "VIL_mondeo_civil1",
    "VIL_mondeo_civil3",
    "VIL_mondeo_civil4",
    "VIL_mondeo_civil5",
    "VIL_octavia_civil",
    "VIL_octavia_civil2",
    "VIL_octavia_civil3",
    "VIL_octavia_civil4",
    "VIL_passat_civil",
    "VIL_passat_civil1",
    "VIL_passat_civil2",
    "VIL_passat_civil3",
    "VIL_passat_civil4",
    "VIL_passat_civil5",
    "VIL_smart_civil",
    "VIL_smart_civil1",
    "VIL_smart_civil2",
    "VIL_smart_civil3",
    "VIL_smart_civil4",
    "VIL_smart_civil5",
    "VolhaLimo_TK_CIV_EP1",
    "Volha_1_TK_CIV_EP1",
    "Volha_2_TK_CIV_EP1",
    "VWGolf",
    "ATV_CZ_EP1",
    "ATV_US_EP1",
    "Fishing_Boat",
    "JetSkiYanahui_Case_blue",
    "JetSkiYanahui_Case_Green",
    "JetSkiYanahui_Case_Yellow",
    "PBX",
    "RHIB",
    "SmallBoat_1",
    "SmallBoat_2",
    "Zodiac",
    "AN2_DZ",
    "GNT_C185C",
    "GNT_C185R",
    "GNT_C185U",
    "GNT_C185"
];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/

/*
 * This section use a quantification of the volume and/or weight of the objets.
 * The arbitrary referencial used is : an ammo box of type USVehicleBox "weights" 12 units.
 * 
 * Cette section utilise une quantification du volume et/ou poids des objets.
 * Le r�f�rentiel arbitraire utilis� est : une caisse de munition de type USVehicleBox "p�se" 12 unit�s.
 * 
 * Note : the priority of a declaration of capacity to another corresponds to their order in the tables.
 *   For example : the "Truck" class is in the "Car" class (see http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   If "Truck" is declared with a capacity of 140 before "Car". And if "Car" is declared after "Truck" with a capacity of 40,
 *   Then all the sub-classes in "Truck" will have a capacity of 140. And all the sub-classes of "Car", excepted the ones
 *   in "Truck", will have a capacity of 40.
 * 
 * Note : la priorit� d'une d�claration de capacit� sur une autre correspond � leur ordre dans les tableaux.
 *   Par exemple : la classe "Truck" appartient � la classe "Car" (voir http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   Si "Truck" est d�clar� avec une capacit� de 140 avant "Car". Et que "Car" est d�clar� apr�s "Truck" avec une capacit� de 40,
 *   Alors toutes les sous-classes appartenant � "Truck" auront une capacit� de 140. Et toutes les sous-classes appartenant
 *   � "Car", except�es celles de "Truck", auront une capacit� de 40.
 */

/**
 * List of class names of (ground or air) vehicles which can transport transportables objects.
 * The second element of the arrays is the load capacity (in relation with the capacity cost of the objects).
 * 
 * Liste des noms de classes des v�hicules (terrestres ou a�riens) pouvant transporter des objets transportables.
 * Le deuxi�me �l�ment des tableaux est la capacit� de chargement (en relation avec le co�t de capacit� des objets).
 */
R3F_LOG_CFG_transporteurs =
[
["AH6X_DZ", 50],
    ["CH_47F_EP1_DZ", 100],
    ["MH6J_DZ", 50],
    ["Mi17_Civilian_DZ", 75],
    ["Mi17_DZ", 75],
    ["UH1H_DZ", 50],
    ["UH1Y_DZ", 50],
    ["UH60M_EP1_DZ", 75],
    ["Mi24_D_TK_EP1", 75],
    ["ArmoredSUV_PMC_DZ", 75],
    ["datsun1_civil_1_open", 50],
    ["datsun1_civil_2_covered", 50],
    ["datsun1_civil_3_open", 50],
    ["GAZ_Vodnik", 75],
    ["GAZ_Vodnik_MedEvac", 75],
    ["hilux1_civil_1_open", 50],
    ["hilux1_civil_2_covered", 50],
    ["hilux1_civil_3_open_EP1", 50],
    ["HMMWV_Ambulance", 50],
    ["HMMWV_Ambulance_CZ_DES_EP1", 75],
    ["HMMWV_DES_EP1", 50],
    ["HMMWV_DZ", 50],
    ["HMMWV_M135_DES_EP1", 50],
    ["HMMWV_M1151_M2_CZ_DES_EP1", 50],
    ["HMMWV_M998A_SOV_DEV_EP1", 50],
    ["Ikarus", 100],
    ["Kamaz", 100],
    ["KamazRefuel_DZ", 100],
    ["LandRover_CZ_EP1", 75],
    ["LandRover_MG_TK_EP1", 75],
    ["LandRover_Special_CZ_EP1", 75],
    ["LandRover_TK_CIV_EP1", 75],
    ["M1030_US_DES_EP1", 50],
    ["MTVR_DES_EP1", 100],
    ["MtvrRefuel_DES_EP1_DZ", 100],
    ["Offroad_DSHKM_GUE", 50],
    ["Pickup_PK_GUE", 50],
    ["Pickup_PK_INS", 50],
    ["Pickup_PK_TK_GUE_EP1", 50],
    ["SUV_Blue", 75],
    ["SUV_Camo", 75],
    ["SUV_Charcoal", 75],
    ["SUV_Green", 75],
    ["SUV_Orange", 75],
    ["SUV_Pink", 75],
    ["SUV_Red", 75],
    ["SUV_Silver", 75],
    ["SUV_TK_CIV_EP1", 75],
    ["SUV_White", 75],
    ["SUV_Yellow", 75],
    ["tractor", 25],
    ["UAZ_CDF", 25],
    ["UAZ_INS", 25],
    ["UAZ_MG_TK_EP1", 25],
    ["UAZ_RU", 25],
    ["UAZ_Unarmed_TK_CIV_EP1", 25],
    ["UAZ_Unarmed_UN_EP1", 25],
    ["Ural_CDF", 100],
    ["Ural_TK_CIV_EP1", 100],
    ["Ural_UN_EP1", 100],
    ["UralRefuel_TK_EP1_DZ", 100],
    ["V3S_Open_TK_CIV_EP1", 100],
    ["V3S_TK_EP1", 100],
    ["V3S_Refuel_TK_GUE_EP1_DZ", 100],
    ["VIL_ducato_bus", 100],
    ["VIL_ducato_cargo", 100],
    ["VIL_ducato_cargo2", 100],
    ["VIL_hilux1_civi2", 50],
    ["VIL_hilux1_civi3", 50],
    ["VIL_hilux1_civil", 50],
    ["VIL_hilux1_police", 50],
    ["VIL_lublin_freez", 50],
    ["VIL_panda_civil", 50],
    ["VIL_panda_civil1", 50],
    ["VIL_sprinter_cargo", 50],
    ["VIL_Star_S2000o", 50],
    ["VIL_Star_S2000", 50],
    ["VIL_transit_civ", 50],
    ["VIL_transit_truck", 50],
    ["VIL_vivaro_amb", 50],
    ["VIL_vivaro_civ", 50],
    ["VIL_volvofl", 50],
    ["VIL_vwt4_civ", 50],
    ["VIL_vwt4_banksec", 50],
    ["VIL_assistvan", 75]
];

/**
 * List of class names of transportables objects.
 * The second element of the arrays is the cost capacity (in relation with the capacity of the vehicles).
 * 
 * Liste des noms de classes des objets transportables.
 * Le deuxi�me �l�ment des tableaux est le co�t de capacit� (en relation avec la capacit� des v�hicules).
 */
R3F_LOG_CFG_objets_transportables =
[];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects moveables by player.
 * Liste des noms de classes des objets transportables par le joueur.
 */
R3F_LOG_CFG_objets_deplacables =
[
	"Barrels"
];

/*
 * List of files adding objects in the arrays of logistics configuration (e.g. R3F_LOG_CFG_remorqueurs)
 * Add an include to the new file here if you want to use the logistics with a new addon.
 * 
 * Liste des fichiers ajoutant des objets dans les tableaux de fonctionnalit�s logistiques (ex : R3F_LOG_CFG_remorqueurs)
 * Ajoutez une inclusion vers votre nouveau fichier ici si vous souhaitez utilisez la logistique avec un nouvel addon.
 */
//#include "addons_config\ACE_OA_objects.sqf"
//#include "addons_config\BAF_objects.sqf"
//#include "addons_config\arma2_CO_objects.sqf"