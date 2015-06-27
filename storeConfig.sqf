// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeConfig.sqf
# @@Author: His_Shadow, AgentRev
# @@Create Date: 2013-09-16 20:40:58
#*********************************************************/

// This tracks which store owner the client is interacting with
currentOwnerName = "";

// Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost

pistolArray = compileFinal str
[
	// Handguns
	[localize "str_a3_cfgweapons_hgun_p070", "hgun_P07_F", 50],
	[localize "str_cfgweapons_hgun_rook40_f0", "hgun_Rook40_F", 50],
	[localize "str_a3_cfgweapons_hgun_acpc2_f0", "hgun_ACPC2_F", 75],
	[localize "str_a3_cfgweapons_hgun_pistol_heavy_02_f0", "hgun_Pistol_heavy_02_F", 75],
	[localize "str_a3_cfgweapons_hgun_pistol_heavy_01_f0", "hgun_Pistol_heavy_01_F", 100]
];

smgArray = compileFinal str
[
	[localize "str_a3_cfgweapons_hgun_pdw20000", "hgun_PDW2000_F", 100],
	[localize "str_a3_cfgweapons_smg_020", "SMG_02_F", 125],
	[localize "str_a3_cfgweapons_smg_010", "SMG_01_F", 125]
];

rifleArray = compileFinal str
[
	// Underwater Gun
	[localize "str_a3_cfgweapons_arifle_sdar0", "arifle_SDAR_F", 100],

	// Assault Rifles
	[localize "str_a3_cfgweapons_arifle_mk20c0", "arifle_Mk20C_plain_F", 150],
	[localize "str_a3_cfgweapons_arifle_mk20c_camo", "arifle_Mk20C_F", 175],
	[localize "str_a3_cfgweapons_arifle_mk200", "arifle_Mk20_plain_F", 200],
	[localize "str_a3_cfgweapons_arifle_mk20_camo", "arifle_Mk20_F", 200],
	[localize "str_a3_cfgweapons_arifle_mk20_gl0", "arifle_Mk20_GL_plain_F", 250],
	[localize "STR_A3_cfgweapons_afrile_mk20_gl_camo", "arifle_Mk20_GL_F", 250],

	[localize "str_a3_cfgweapons_arifle_trg200", "arifle_TRG20_F", 150],
	[localize "str_a3_cfgweapons_arifle_trg210", "arifle_TRG21_F", 200],
	[localize "str_a3_cfgweapons_arifle_trg21_gl0", "arifle_TRG21_GL_F", 250],

	[localize "str_a3_cfgweapons_arifle_katiba_c_f0", "arifle_Katiba_C_F", 150],
	[localize "str_a3_cfgweapons_arifle_katiba_f0", "arifle_Katiba_F", 200],
	[localize "str_a3_cfgweapons_arifle_katiba_gl_f0", "arifle_Katiba_GL_F", 250],

	[localize "str_a3_cfgweapons_arifle_xmc0", "arifle_MXC_F", 150],
	[localize "str_a3_cfgweapons_arifle_mxc_black_f0", "arifle_MXC_Black_F", 175],
	[localize "str_a3_cfgweapons_arifle_xmx0", "arifle_MX_F", 200],
	[localize "str_a3_cfgweapons_arifle_mx_black_f0", "arifle_MX_Black_F", 225],
	[localize "str_a3_cfgweapons_arifle_xmx_gl0", "arifle_MX_GL_F", 250],
	[localize "str_a3_cfgweapons_arifle_mx_gl_black_f0", "arifle_MX_GL_Black_F", 275],

	// Markman Rifles
	[localize "str_a3_cfgweapons_arifle_xmm0", "arifle_MXM_F", 300],
	[localize "str_a3_cfgweapons_arifle_mxm_black_f0", "arifle_MXM_Black_F", 325],
	[localize "str_a3_cfgweapons_srifle_dmr_01_f0", "srifle_DMR_01_F", 400],
	[localize "str_a3_cfgweapons_srifle_abr0", "srifle_EBR_F", 450],

	// DLC
	["Mk14 Rifle (Camo) [DLC]", "srifle_DMR_06_camo_F", 450],
	["Mk14 Rifle (Olive) [DLC]", "srifle_DMR_06_olive_F", 450],
	["Mk-I EMR Rifle [DLC]", "srifle_DMR_03_F", 500],
	["Mk-I EMR Rifle (Camo) [DLC]", "srifle_DMR_03_multicam_F", 550],
	["Mk-I EMR Rifle (Khaki) [DLC]", "srifle_DMR_03_khaki_F", 550],
	["Mk-I EMR Rifle (Sand) [DLC]", "srifle_DMR_03_tan_F", 550],
	["Mk-I EMR Rifle (Woodland) [DLC]", "srifle_DMR_03_woodland_F", 550],
	["MAR-10 Rifle [DLC]", "srifle_DMR_02_F", 750],
	["MAR-10 Rifle (Camo) [DLC]", "srifle_DMR_02_camo_F", 800],
	["MAR-10 Rifle (Sand) [DLC]", "srifle_DMR_02_sniper_F", 800],
	["Cyrus Rifle [DLC]", "srifle_DMR_05_blk_F", 750],
	["Cyrus Rifle (Hex) [DLC]", "srifle_DMR_05_hex_F", 800],
	["Cyrus Rifle (Tan) [DLC]", "srifle_DMR_05_tan_f", 800],

	// Sniper Rifles
	[localize "str_a3_cfgweapons_srifle_lrr0", "srifle_LRR_SOS_F", 1000],
	[localize "str_a3_cfgweapons_srifle_lrr_camo_f0", "srifle_LRR_camo_SOS_F", 1150],
	[localize "str_a3_cfgweapons_srifle_gm60", "srifle_GM6_SOS_F", 1100],
	[localize "str_a3_cfgweapons_srifle_gm6_camo_f0", "srifle_GM6_camo_SOS_F", 1250],

	["ASP-1 Kir Rifle [DLC]", "srifle_DMR_04_F", 2000],
	["ASP-1 Kir Rifle (Tan) [DLC]", "srifle_DMR_04_tan_F", 2250]
];

lmgArray = compileFinal str
[
	[localize "str_a3_cfgweapons_arifle_xm_lsw0", "arifle_MX_SW_F", 300],
	[localize "str_a3_cfgweapons_arifle_mx_sw_black_f0", "arifle_MX_SW_Black_F", 325],
	[localize "str_a3_cfgweapons_lmg_mk2000", "LMG_Mk200_F", 375],
	[localize "str_a3_cfgweapons_lmg_zafir_f0", "LMG_Zafir_F", 450],
	["Navid MMG (Tan) [DLC]", "MMG_01_tan_F", 750],
	["Navid MMG (Hex) [DLC]", "MMG_01_hex_F", 750],
	["SPMG MMG (Sand) [DLC]", "MMG_02_sand_F", 750],
	["SPMG MMG (MTP) [DLC]", "MMG_02_camo_F", 750],
	["SPMG MMG (Black) [DLC]", "MMG_02_black_F", 800]
];

launcherArray = compileFinal str
[
	[localize "str_a3_cfgweapons_launch_law0", "launch_RPG32_F", 400],
	[localize "str_a3_cfgweapons_launch_nlaw0", "launch_NLAW_F", 600],
	[localize "str_cfgweapons_launch_mprl_short_f0" + " (" + localize "STR_WL_Skin_Tan" + ")", "launch_Titan_short_F", 500],
	[localize "str_cfgweapons_launch_mprl_short_f0" + " (" + localize "STR_WL_Skin_Brn" + ")", "launch_O_Titan_short_F", 500],
	[localize "str_cfgweapons_launch_mprl_short_f0" + " (" + localize "STR_WL_Skin_Oli" + ")", "launch_I_Titan_short_F", 500],
	[localize "str_a3_cfgweapons_launch_mprl0" + " (" + localize "STR_WL_Skin_Desert" + ")", "launch_Titan_F", 600],
	[localize "str_a3_cfgweapons_launch_mprl0" + " (" + localize "STR_WL_Skin_Hex" + ")", "launch_O_Titan_F", 600],
	[localize "str_a3_cfgweapons_launch_mprl0" + " (" + localize "STR_WL_Skin_Dgtl" + ")", "launch_I_Titan_F", 600]
];

allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call launcherArray);

staticGunsArray = compileFinal str
[
	// [localize "str_a3_cfgvehicles_box_nato_ammoveh_f0", "Box_NATO_AmmoVeh_F", 2500],
	[localize "str_a3_b_static_at_placeholder_f0", "B_static_AT_F", 2500], // Static launchers only have 4 ammo, hence the low price
	[localize "str_a3_b_static_at_placeholder_f0", "O_static_AT_F", 2500],
	[localize "str_a3_b_static_at_placeholder_f0", "I_static_AT_F", 2500],
	[localize "str_a3_b_static_aa_placeholder_f0", "B_static_AA_F", 3000],
	[localize "str_a3_b_static_aa_placeholder_f0", "O_static_AA_F", 3000],
	[localize "str_a3_b_static_aa_placeholder_f0", "I_static_AA_F", 3000],
	[localize "str_a3_cfgvehicles_hmg_01_base0", "B_HMG_01_F", 2500],
	[localize "str_a3_cfgvehicles_hmg_01_base0", "O_HMG_01_F", 2500],
	[localize "str_a3_cfgvehicles_hmg_01_base0", "I_HMG_01_F", 2500],
	// [localize "str_a3_cfgvehicles_hmg_01_a_base0", "B_HMG_01_A_F", 5000], // "A" = Autonomous = Overpowered
	// [localize "str_a3_cfgvehicles_hmg_01_a_base0", "O_HMG_01_A_F", 5000],
	// [localize "str_a3_cfgvehicles_hmg_01_a_base0", "I_HMG_01_A_F", 5000],
	[localize "str_a3_cfgvehicles_hmg_01_a_high_base_f0", "B_HMG_01_high_F", 3000],
	[localize "str_a3_cfgvehicles_hmg_01_a_high_base_f0", "O_HMG_01_high_F", 3000],
	[localize "str_a3_cfgvehicles_hmg_01_a_high_base_f0", "I_HMG_01_high_F", 3000],
	[localize "str_a3_cfgvehicles_gmg_01_base0", "B_GMG_01_F", 5500],
	[localize "str_a3_cfgvehicles_gmg_01_base0", "O_GMG_01_F", 5500],
	[localize "str_a3_cfgvehicles_gmg_01_base0", "I_GMG_01_F", 5500],
	// [localize "str_a3_cfgvehicles_gmg_01_a_base0", "B_GMG_01_A_F", 10000],
	// [localize "str_a3_cfgvehicles_gmg_01_a_base0", "O_GMG_01_A_F", 10000],
	// [localize "str_a3_cfgvehicles_gmg_01_a_base0", "I_GMG_01_A_F", 10000],
	[localize "str_a3_cfgvehicles_gmg_01_high_base_f0", "B_GMG_01_high_F", 6000],
	[localize "str_a3_cfgvehicles_gmg_01_high_base_f0", "O_GMG_01_high_F", 6000],
	[localize "str_a3_cfgvehicles_gmg_01_high_base_f0", "I_GMG_01_high_F", 6000],
	[localize "str_a3_cfgvehicles_mortar_01_base0", "B_Mortar_01_F", 12500],
	[localize "str_a3_cfgvehicles_mortar_01_base0", "O_Mortar_01_F", 12500],
	[localize "str_a3_cfgvehicles_mortar_01_base0", "I_Mortar_01_F", 12500]
];

throwputArray = compileFinal str
[
	[localize "str_a3_cfgmagazines_minigrenade0", "MiniGrenade", 50],
	[localize "str_a3_cfgmagazines_handgrenade0", "HandGrenade", 100],
	[localize "str_a3_cfgmagazines_classicminewiremagazine0", "APERSTripMine_Wire_Mag", 200],
	[localize "str_a3_cfgmagazines_bouncingminerangemagazine0", "APERSBoundingMine_Range_Mag", 250],
	[localize "str_a3_cfgmagazines_classicminerangemagazine0", "APERSMine_Range_Mag", 300],
	[localize "str_a3_cfgmagazines_directionalmineremotemagazine0", "ClaymoreDirectionalMine_Remote_Mag", 350],
	[localize "str_a3_cfgmagazines_directionalminerangemagazine0", "SLAMDirectionalMine_Wire_Mag", 350],
	[localize "str_a3_cfgmagazines_mine0", "ATMine_Range_Mag", 400],
	[localize "str_a3_cfgmagazines_democharge0", "DemoCharge_Remote_Mag", 450],
	[localize "str_a3_cfgmagazines_pipebomb0", "SatchelCharge_Remote_Mag", 500],
	[localize "str_a3_cfgmagazines_smokeshell0", "SmokeShell", 50],
	[localize "str_a3_cfgmagazines_smokeshellpurple0", "SmokeShellPurple", 50],
	[localize "str_a3_cfgmagazines_smokeshellblue0", "SmokeShellBlue", 50],
	[localize "str_a3_cfgmagazines_smokeshellgreen0", "SmokeShellGreen", 50],
	[localize "str_a3_cfgmagazines_smokeshellyellow0", "SmokeShellYellow", 50],
	[localize "str_a3_cfgmagazines_smokeshellorange0", "SmokeShellOrange", 50],
	[localize "str_a3_cfgmagazines_smokeshellred0", "SmokeShellRed", 50]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
[
	[localize "str_a3_cfgmagazines_16rnd_9x21_mag0", "16Rnd_9x21_Mag", 10],
	[localize "str_a3_cfgmagazines_30rnd_9x21_mag0", "30Rnd_9x21_Mag", 15],
	[localize "str_a3_cfgmagazines_6rnd_45acp_cylinder0", "6Rnd_45ACP_Cylinder", 5],
	[localize "str_a3_weapons_f_beta_cfgmagazines_9rnd_45acp_mag0", "9Rnd_45ACP_Mag", 10],
	[localize "str_a3_cfgmagazines_11rnd_45acp_mag0", "11Rnd_45ACP_Mag", 15],
	[localize "str_a3_cfgmagazines_30rnd_9x21_mag_smg_010", "30Rnd_45ACP_MAG_SMG_01", 20],
	[localize "str_a3_cfgmagazines_30rnd_9x21_mag_smg_01_tracer_green0", "30Rnd_45ACP_Mag_SMG_01_tracer_green", 15],
	[localize "STR_A3_CfgMagazines_20Rnd_556x45_UW_mag0", "20Rnd_556x45_UW_mag", 10],
	[localize "str_a3_cfgmagazines_30rnd_556x45_stanag0", "30Rnd_556x45_Stanag", 20],
	[localize "str_a3_cfgmagazines_30rnd_556x45_stanag_tracer_green0", "30Rnd_556x45_Stanag_Tracer_Green", 15],
	[localize "str_a3_cfgmagazines_30rnd_556x45_stanag_tracer_yellow0", "30Rnd_556x45_Stanag_Tracer_Yellow", 15],
	[localize "str_a3_cfgmagazines_30rnd_556x45_stanag_tracer_red0", "30Rnd_556x45_Stanag_Tracer_Red", 15],
	[localize "str_a3_cfgmagazines_30rnd_65x39_mag0", "30Rnd_65x39_caseless_mag", 20],
	[localize "str_a3_cfgmagazines_30rnd_65x39_mag_tracer_red0", "30Rnd_65x39_caseless_mag_Tracer", 15],
	[localize "str_a3_cfgmagazines_30rnd_65x39_caseless_green1", "30Rnd_65x39_caseless_green", 20],
	[localize "str_a3_cfgmagazines_30rnd_65x39_caseless_green_mag_tracer0", "30Rnd_65x39_caseless_green_mag_Tracer", 15],
	[localize "str_a3_cfgmagazines_100rnd_65x39_belt0", "100Rnd_65x39_caseless_mag", 75],
	[localize "str_a3_cfgmagazines_100rnd_65x39_belt_tracer_red0", "100Rnd_65x39_caseless_mag_Tracer", 50],
	[localize "str_a3_cfgmagazines_200rnd_65x39_belt0", "200Rnd_65x39_cased_Box", 150],
	[localize "str_a3_cfgmagazines_200rnd_65x39_belt_tracer_yellow0", "200Rnd_65x39_cased_Box_Tracer", 125],
	//[localize "str_a3_cfgmagazines_10rnd_762x51_mag0", "10Rnd_762x51_Mag", 15],
	[localize "str_a3_cfgmagazines_10rnd_762x51_mag0", "10Rnd_762x54_Mag", 15],
	[localize "str_a3_cfgmagazines_20rnd_762x45_mag0", "20Rnd_762x51_Mag", 25],
	//[localize "str_a3_cfgmagazines_150rnd_762x51_box0", "150Rnd_762x51_Box", 150],
	//[localize "str_a3_cfgmagazines_150rnd_762x51_box_tracer0", "150Rnd_762x51_Box_Tracer", 125],
	[localize "str_a3_cfgmagazines_150rnd_762x51_box0", "150Rnd_762x54_Box", 150],
	[localize "str_a3_cfgmagazines_150rnd_762x51_box_tracer0", "150Rnd_762x54_Box_Tracer", 125],
	[".338 LM 10Rnd Mag", "10Rnd_338_Mag", 50],
	[".338 NM 130Rnd Belt", "130Rnd_338_Mag", 150],
	["9.3mm 10Rnd Mag", "10Rnd_93x64_DMR_05_Mag", 50],
	["9.3mm 150Rnd Belt", "150Rnd_93x64_Mag", 150],
	[localize "str_a3_cfgmagazines_7rnd_408_mag0", "7Rnd_408_Mag", 50],
	[localize "str_a3_cfgmagazines_5rnd_127x108_mag0", "5Rnd_127x108_Mag", 50],
	[localize "str_a3_cfgmagazines_5rnd_127x108_apds_mag0", "5Rnd_127x108_APDS_Mag", 60],
	["12.7mm 10Rnd Subsonic Mag", "10Rnd_127x54_Mag", 75],
	[localize "str_a3_cfgmagazines_law0", "RPG32_F", 250],                // Direct damage: high      | Splash damage: low    | Guidance: none
	[localize "str_a3_cfgmagazines_rpg32_aa_f0", "RPG32_HE_F", 250],      // Direct damage: medium    | Splash damage: medium | Guidance: none
	[localize "str_a3_cfgmagazines_nlaw0", "NLAW_F", 400],                // Direct damage: very high | Splash damage: low    | Guidance: laser, ground vehicles
	[localize "str_a3_cfgmagazines_titan_at0", "Titan_AT", 350],          // Direct damage: high      | Splash damage: low    | Guidance: mouse, laser, ground vehicles
	[localize "str_a3_cfgmagazines_titan_ap0", "Titan_AP", 350],          // Direct damage: low       | Splash damage: high   | Guidance: mouse, laser
	[localize "str_a3_cfgmagazines_titan_aa0", "Titan_AA", 350],          // Direct damage: low       | Splash damage: medium | Guidance: aircraft
	[localize "str_a3_cfgmagazines_1rnd_he_grenade_shell0", "1Rnd_HE_Grenade_shell", 125],
	[localize "str_a3_cfgmagazines_3rnd_he_grenade_shell0", "3Rnd_HE_Grenade_shell", 250],
	[localize "str_a3_cfgmagazines_1rnd_smoke_grenade_shell0", "1Rnd_Smoke_Grenade_shell", 50],
	[localize "str_a3_cfgmagazines_1rnd_smokepurple_grenade_shell0", "1Rnd_SmokePurple_Grenade_shell", 50],
	[localize "str_a3_cfgmagazines_1rnd_smokeblue_grenade_shell0", "1Rnd_SmokeBlue_Grenade_shell", 50],
	[localize "str_a3_cfgmagazines_1rnd_smokegreen_grenade_shell0", "1Rnd_SmokeGreen_Grenade_shell", 50],
	[localize "str_a3_cfgmagazines_1rnd_smokeyellow_grenade_shell0", "1Rnd_SmokeYellow_Grenade_shell", 50],
	[localize "str_a3_cfgmagazines_1rnd_smokeorange_grenade_shell0", "1Rnd_SmokeOrange_Grenade_shell", 50],
	[localize "str_a3_cfgmagazines_1rnd_smokered_grenade_shell0", "1Rnd_SmokeRed_Grenade_shell", 50],
	[localize "str_a3_cfgmagazines_3rnd_smoke_grenade_shell0", "3Rnd_Smoke_Grenade_shell", 100],
	[localize "str_a3_cfgmagazines_3rnd_smokepurple_grenade_shell0", "3Rnd_SmokePurple_Grenade_shell", 100],
	[localize "str_a3_cfgmagazines_3rnd_smokeblue_grenade_shell0", "3Rnd_SmokeBlue_Grenade_shell", 100],
	[localize "str_a3_cfgmagazines_3rnd_smokegreen_grenade_shell0", "3Rnd_SmokeGreen_Grenade_shell", 100],
	[localize "str_a3_cfgmagazines_3rnd_smokeyellow_grenade_shell0", "3Rnd_SmokeYellow_Grenade_shell", 100],
	[localize "str_a3_cfgmagazines_3rnd_smokeorange_grenade_shell0", "3Rnd_SmokeOrange_Grenade_shell", 100],
	[localize "str_a3_cfgmagazines_3rnd_smokered_grenade_shell0", "3Rnd_SmokeRed_Grenade_shell", 100],
	[localize "str_a3_cfgmagazines_ugl_flarewhite_f_test1", "UGL_FlareWhite_F", 25],
	[localize "STR_A3_CfgMagazines_UGL_FlareGreen_F0", "UGL_FlareGreen_F", 25],
	[localize "STR_A3_CfgMagazines_UGL_FlareYellow_F0", "UGL_FlareYellow_F", 25],
	[localize "STR_A3_CfgMagazines_UGL_FlareRed_F0", "UGL_FlareRed_F", 25],
	[localize "str_a3_cfgmagazines_ugl_flarecir_f0", "UGL_FlareCIR_F", 25],
	[localize "STR_A3_cfgmagazines_3rnd_ugl_flarewhite_f_test", "3Rnd_UGL_FlareWhite_F", 50],
	[localize "STR_a3_cfgmagazines_3rnd_ugl_flaregreen_f0", "3Rnd_UGL_FlareGreen_F", 50],
	[localize "STR_a3_cfgmagazines_3rnd_ugl_flareyellow_f0", "3Rnd_UGL_FlareYellow_F", 50],
	[localize "STR_a3_cfgmagazines_3rnd_ugl_flarered_f0", "3Rnd_UGL_FlareRed_F", 50],
	[localize "STR_a3_cfgmagazines_3rnd_ugl_flarecir_f0", "3Rnd_UGL_FlareCIR_F", 50]
];

//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[
	[localize "str_a3_cfgweapons_muzzle_snds_l0", "muzzle_snds_L", 50, "item"],
	[localize "str_a3_cfgweapons_muzzle_snds_acp0", "muzzle_snds_acp", 75, "item"],
	[localize "str_a3_cfgweapons_muzzle_snds_m0", "muzzle_snds_M", 100, "item"],
	[localize "str_a3_cfgweapons_muzzle_snds_h0", "muzzle_snds_H", 100, "item"],
	[localize "str_a3_cfgweapons_muzzle_snds_h_mg0", "muzzle_snds_H_MG", 125, "item"],
	[localize "str_a3_cfgweapons_muzzle_snds_b0", "muzzle_snds_B", 125, "item"],
	["Suppressor .338 [DLC]", "muzzle_snds_338_black", 125, "item"],
	["Suppressor .338 (Green) [DLC]", "muzzle_snds_338_green", 125, "item"],
	["Suppressor .338 (Sand) [DLC]", "muzzle_snds_338_sand", 125, "item"],
	["Suppressor 9.3mm [DLC]", "muzzle_snds_93mmg", 125, "item"],
	["Suppressor 9.3mm (Tan) [DLC]", "muzzle_snds_93mmg_tan", 125, "item"],
	[localize "str_a3_rscdisplayarsenal_tab_itembipod" + " (" + localize "str_a3_cfgfactionclasses_blu_f0" + ")", "bipod_01_F_blk", 250, "item"],
	[localize "str_a3_rscdisplayarsenal_tab_itembipod" + " (" + localize "str_a3_cfgfactionclasses_opf_f0" + ")", "bipod_02_F_blk", 250, "item"],
	[localize "str_a3_rscdisplayarsenal_tab_itembipod" + " (" + localize "str_a3_cfgfactionclasses_ind_f0" + ")", "bipod_03_F_blk", 250, "item"],
	[localize "str_a3_rscdisplayarsenal_tab_itembipod" + " (" + localize "STR_WL_Skin_MTP" + ")", "bipod_01_F_mtp", 250, "item"],
	[localize "str_a3_rscdisplayarsenal_tab_itembipod" + " (" + localize "STR_WL_Skin_Hex" + ")", "bipod_02_F_hex", 250, "item"],
	[localize "str_a3_rscdisplayarsenal_tab_itembipod" + " (" + localize "STR_WL_Skin_Oli" + ")", "bipod_03_F_oli", 250, "item"],
	[localize "str_a3_rscdisplayarsenal_tab_itembipod" + " (" + localize "STR_WL_Skin_Snd" + ")", "bipod_01_F_snd", 250, "item"],
	[localize "str_a3_rscdisplayarsenal_tab_itembipod" + " (" + localize "STR_WL_Skin_Tan" + ")", "bipod_02_F_tan", 250, "item"],
	[localize "str_a3_cfgweapons_acc_flashlight0", "acc_flashlight", 25, "item"],
	[localize "str_a3_cfgweapons_acc_pointer_ir0", "acc_pointer_IR", 25, "item"],
	[localize "str_a3_cfgweapons_optic_yorris0", "optic_Yorris", 50, "item"],
	[localize "str_a3_cfgweapons_optic_mrd0", "optic_MRD", 50, "item"],
	[localize "str_a3_cfgweapons_optic_aco_smg0", "optic_aco_smg", 50, "item"],
	[localize "str_a3_cfgweapons_optic_holosight_smg0", "optic_Holosight_smg", 50, "item"],
	[localize "str_a3_cfgweapons_optic_aco0", "optic_Aco", 75, "item"],
	[localize "str_a3_cfgweapons_optic_aco_grn0", "optic_Aco_grn", 75, "item"],
	[localize "str_a3_cfgweapons_optic_holosight0", "optic_Holosight", 75, "item"],
	[localize "str_a3_cfgweapons_optic_valdada0", "optic_MRCO", 100, "item"],
	[localize "str_a3_cfgweapons_optic_arco0", "optic_Arco", 125, "item"],
	[localize "str_a3_cfgweapons_optic_hamr0", "optic_Hamr", 150, "item"],
	[localize "str_a3_cfgweapons_optic_sos0", "optic_SOS", 200, "item"],
	[localize "str_a3_cfgweapons_acc_dms0", "optic_DMS", 175, "item"],
	["AMS [DLC]", "optic_AMS", 200, "item"],
	["AMS (Khaki) [DLC]", "optic_AMS_khk", 200, "item"],
	["AMS (Sand) [DLC]", "optic_AMS_snd", 200, "item"],
	["Kahlia [DLC]", "optic_KHS_blk", 200, "item"],
	["Kahlia (Hex) [DLC]", "optic_KHS_hex", 200, "item"],
	["Kahlia (Tan) [DLC]", "optic_KHS_tan", 200, "item"],
	["Kahlia (Old) [DLC]", "optic_KHS_old", 200, "item"],
	[localize "str_a3_cfgweapons_optic_lrps0", "optic_LRPS", 175, "item"],
	[localize "str_a3_cfgweapons_optic_nvs0", "optic_NVS", 500, "item"],
	[localize "str_a3_cfgweapons_optic_tws0", "optic_tws", 7500, "item"],
	[localize "str_a3_cfgweapons_optic_tws_mg0", "optic_tws_mg", 9000, "item"],
	[localize "str_a3_cfgweapons_optic_nightstalker0", "optic_Nightstalker", 12500, "item"]
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str
[
	["ECH", "H_HelmetB", 50, "hat"],
	["ECH (Ghillie)", "H_HelmetB_camo", 50, "hat"],
	["ECH (Light)", "H_HelmetB_light", 50, "hat"],
	["ECH (Spraypaint)", "H_HelmetB_paint", 50, "hat"],
	["SF Helmet", "H_HelmetSpecB", 50, "hat"],
	["SF Helmet (Black)", "H_HelmetSpecB_blk", 50, "hat"],
	["SF Helmet (Light Paint)", "H_HelmetSpecB_paint1", 50, "hat"],
	["SF Helmet (Dark Paint)", "H_HelmetSpecB_paint2", 50, "hat"],
	["Combat Helmet (Black)", "H_HelmetB_plain_blk", 50, "hat"],
	["Protector Helmet (Hex)", "H_HelmetO_ocamo", 50, "hat"],
	["Protector Helmet (Urban)", "H_HelmetO_oucamo", 50, "hat"],
	["Defender Helmet (Hex)", "H_HelmetLeaderO_ocamo", 50, "hat"],
	["Defender Helmet (Urban)", "H_HelmetLeaderO_oucamo", 50, "hat"],
	// ["Assassin Helmet (Hex)", "H_HelmetSpecO_ocamo", 50, "hat"],
	["Assassin Helmet (Black)", "H_HelmetSpecO_blk", 50, "hat"],
	["MICH", "H_HelmetIA", 50, "hat"],
	// ["MICH (Camo)", "H_HelmetIA_net", 50, "hat"],
	// ["MICH 2 (Camo)", "H_HelmetIA_camo", 50, "hat"],
	["Heli Crew Helmet (NATO)", "H_CrewHelmetHeli_B", 50, "hat"],
	["Heli Crew Helmet (CSAT)", "H_CrewHelmetHeli_O", 50, "hat"],
	["Heli Crew Helmet (AAF)", "H_CrewHelmetHeli_I", 50, "hat"],
	["Heli Pilot Helmet (NATO)", "H_PilotHelmetHeli_B", 50, "hat"],
	["Heli Pilot Helmet (CSAT)", "H_PilotHelmetHeli_O", 50, "hat"],
	["Heli Pilot Helmet (AAF)", "H_PilotHelmetHeli_I", 50, "hat"],
	["Crew Helmet (NATO)", "H_HelmetCrew_B", 50, "hat"],
	["Crew Helmet (CSAT)", "H_HelmetCrew_O", 50, "hat"],
	["Crew Helmet (AAF)", "H_HelmetCrew_I", 50, "hat"],
	["Pilot Helmet (NATO)", "H_PilotHelmetFighter_B", 50, "hat"],
	["Pilot Helmet (CSAT)", "H_PilotHelmetFighter_O", 50, "hat"],
	["Pilot Helmet (AAF)", "H_PilotHelmetFighter_I", 50, "hat"],
	["Military Cap (Blue)", "H_MilCap_blue", 25, "hat"],
	["Military Cap (Gray)", "H_MilCap_gry", 25, "hat"],
	["Military Cap (Urban)", "H_MilCap_oucamo", 25, "hat"],
	["Military Cap (Russia)", "H_MilCap_rucamo", 25, "hat"],
	["Military Cap (MTP)", "H_MilCap_mcamo", 25, "hat"],
	["Military Cap (Hex)", "H_MilCap_ocamo", 25, "hat"],
	["Military Cap (AAF)", "H_MilCap_dgtl", 25, "hat"],
	["Rangemaster Cap", "H_Cap_headphones", 25, "hat"],
	["Bandanna (Coyote)", "H_Bandanna_cbr", 10, "hat"],
	["Bandanna (Camo)", "H_Bandanna_camo", 10, "hat"],
	["Bandanna (Gray)", "H_Bandanna_gry", 10, "hat"],
	["Bandanna (Khaki)", "H_Bandanna_khk", 10, "hat"],
	["Bandanna (MTP)", "H_Bandanna_mcamo", 10, "hat"],
	["Bandanna (Sage)", "H_Bandanna_sgg", 10, "hat"],
	["Bandanna (Surfer)", "H_Bandanna_surfer", 10, "hat"],
	// ["Bandanna Mask (Black)", "H_BandMask_blk", 10, "hat"],
	// ["Bandanna Mask (Demon)", "H_BandMask_demon", 10, "hat"],
	// ["Bandanna Mask (Khaki)", "H_BandMask_khk", 10, "hat"],
	// ["Bandanna Mask (Reaper)", "H_BandMask_reaper", 10, "hat"],
	["Beanie (Black)", "H_Watchcap_blk", 10, "hat"],
	["Beanie (Dark blue)", "H_Watchcap_sgg", 10, "hat"],
	["Beanie (Dark brown)", "H_Watchcap_cbr", 10, "hat"],
	["Beanie (Dark khaki)", "H_Watchcap_khk", 10, "hat"],
	["Beanie (Dark green)", "H_Watchcap_camo", 10, "hat"],
	["Beret (Black)", "H_Beret_blk", 10, "hat"],
	["Beret (Colonel)", "H_Beret_Colonel", 10, "hat"],
	["Beret (NATO)", "H_Beret_02", 10, "hat"],
	// ["Beret (Green)", "H_Beret_grn", 10, "hat"],
	// ["Beret (Police)", "H_Beret_blk_POLICE", 10, "hat"],
	// ["Beret (Red)", "H_Beret_red", 10, "hat"],
	// ["Beret (SAS)", "H_Beret_brn_SF", 10, "hat"],
	// ["Beret (SF)", "H_Beret_grn_SF", 10, "hat"],
	// ["Beret (RED)", "H_Beret_ocamo", 10, "hat"],
	// ["Black Turban", "H_TurbanO_blk", 50, "hat"],
	// ["Booniehat (Dirty)", "H_Booniehat_dirty", 10, "hat"],
	// ["Booniehat (Green)", "H_Booniehat_grn", 10, "hat"],
	// ["Booniehat (Khaki)", "H_Booniehat_indp", 10, "hat"],
	["Booniehat (Khaki)", "H_Booniehat_khk", 10, "hat"],
	["Booniehat (Tan)", "H_Booniehat_tan", 10, "hat"],
	["Booniehat (MTP)", "H_Booniehat_mcamo", 10, "hat"],
	["Booniehat (Digi)", "H_Booniehat_dgtl", 10, "hat"],
	["Fedora (Blue)", "H_Hat_blue", 10, "hat"],
	["Fedora (Brown)", "H_Hat_brown", 10, "hat"],
	["Fedora (Camo)", "H_Hat_camo", 10, "hat"],
	["Fedora (Checker)", "H_Hat_checker", 10, "hat"],
	["Fedora (Gray)", "H_Hat_grey", 10, "hat"],
	["Fedora (Tan)", "H_Hat_tan", 10, "hat"],
	["Cap (Black)", "H_Cap_blk", 10, "hat"],
	["Cap (Blue)", "H_Cap_blu", 10, "hat"],
	["Cap (Green)", "H_Cap_grn", 10, "hat"],
	["Cap (Olive)", "H_Cap_oli", 10, "hat"],
	["Cap (Red)", "H_Cap_red", 10, "hat"],
	["Cap (Tan)", "H_Cap_tan", 10, "hat"],
	["Cap (BI)", "H_Cap_grn_BI", 10, "hat"],
	["Cap (CMMG)", "H_Cap_blk_CMMG", 10, "hat"],
	["Cap (ION)", "H_Cap_blk_ION", 10, "hat"],
	["Cap (Raven Security)", "H_Cap_blk_Raven", 10, "hat"],
	["Cap (SAS)", "H_Cap_khaki_specops_UK", 10, "hat"],
	["Cap (SF)", "H_Cap_tan_specops_US", 10, "hat"],
	["Cap (SPECOPS)", "H_Cap_brn_SPECOPS", 10, "hat"],
	["Shemag (White)", "H_ShemagOpen_khk", 25, "hat"],
	["Shemag (Brown)", "H_ShemagOpen_tan", 25, "hat"],
	["Shemag mask (Khaki)", "H_Shemag_khk", 25, "hat"],
	["Shemag mask (Olive)", "H_Shemag_olive", 25, "hat"],
	// ["Shemag mask (Tan)", "H_Shemag_tan", 25, "hat"],
	["Racing Helmet (Black)", "H_RacingHelmet_1_black_F", 25, "hat"],
	["Racing Helmet (Blue)", "H_RacingHelmet_1_blue_F", 25, "hat"],
	["Racing Helmet (Green)", "H_RacingHelmet_1_green_F", 25, "hat"],
	["Racing Helmet (Yellow)", "H_RacingHelmet_1_yellow_F", 25, "hat"],
	["Racing Helmet (Orange)", "H_RacingHelmet_1_orange_F", 25, "hat"],
	["Racing Helmet (Red)", "H_RacingHelmet_1_red_F", 25, "hat"],
	["Racing Helmet (White)", "H_RacingHelmet_1_white_F", 25, "hat"],
	["Racing Helmet (Fuel)", "H_RacingHelmet_1_F", 25, "hat"],
	["Racing Helmet (Bluking)", "H_RacingHelmet_2_F", 25, "hat"],
	["Racing Helmet (Redstone)", "H_RacingHelmet_3_F", 25, "hat"],
	["Racing Helmet (Vrana)", "H_RacingHelmet_4_F", 25, "hat"]
];

uniformArray = compileFinal str
[
	["Ghillie Suit (NATO)", "U_B_GhillieSuit", 300, "uni"],
	["Ghillie Suit (CSAT)", "U_O_GhillieSuit", 300, "uni"],
	["Ghillie Suit (AAF)", "U_I_GhillieSuit", 300, "uni"],
	["Full Ghillie (Arid) (NATO)", "U_B_FullGhillie_ard", 500, "uni"],
	["Full Ghillie (Arid) (CSAT)", "U_O_FullGhillie_ard", 500, "uni"],
	["Full Ghillie (Arid) (AAF)", "U_I_FullGhillie_ard", 500, "uni"],
	["Full Ghillie (Lush) (NATO)", "U_B_FullGhillie_lsh", 500, "uni"],
	["Full Ghillie (Lush) (CSAT)", "U_O_FullGhillie_lsh", 500, "uni"],
	["Full Ghillie (Lush) (AAF)", "U_I_FullGhillie_lsh", 500, "uni"],
	["Full Ghillie (Semi-Arid) (NATO)", "U_B_FullGhillie_sard", 500, "uni"],
	["Full Ghillie (Semi-Arid) (CSAT)", "U_O_FullGhillie_sard", 500, "uni"],
	["Full Ghillie (Semi-Arid) (AAF)", "U_I_FullGhillie_sard", 500, "uni"],
	["Wetsuit (NATO)", "U_B_Wetsuit", 200, "uni"],
	["Wetsuit (CSAT)", "U_O_Wetsuit", 200, "uni"],
	["Wetsuit (AAF)", "U_I_Wetsuit", 200, "uni"],
	["Default Uniform (NATO)", "U_B_CombatUniform_mcam", 50, "uni"],
	["Default Uniform (CSAT)", "U_O_CombatUniform_ocamo", 50, "uni"],
	["Default Uniform (AAF)", "U_I_CombatUniform", 50, "uni"],
	["Combat Fatigues (MTP) (Tee)", "U_B_CombatUniform_mcam_tshirt", 50, "uni"],
	["Recon Fatigues (MTP)", "U_B_CombatUniform_mcam_vest", 50, "uni"],
	["Recon Fatigues (Sage)", "U_B_SpecopsUniform_sgg", 50, "uni"],
	["CTRG Combat Uniform (UBACS)", "U_B_CTRG_1", 50, "uni"],
	["CTRG Combat Uniform (UBACS2)", "U_B_CTRG_2", 50, "uni"],
	["CTRG Combat Uniform (Tee)", "U_B_CTRG_3", 50, "uni"],
	["Recon Fatigues (Hex)", "U_O_SpecopsUniform_ocamo", 50, "uni"],
	["Fatigues (Urban)", "U_O_CombatUniform_oucamo", 50, "uni"],
	["Combat Fatigues Short (Digi)", "U_I_CombatUniform_shortsleeve", 50, "uni"],
	["Combat Fatigues Shirt (Digi)", "U_I_CombatUniform_tshirt", 50, "uni"],
	["Officer Fatigues (Hex)", "U_O_OfficerUniform_ocamo", 50, "uni"],
	["Officer Fatigues (Digi)", "U_I_OfficerUniform", 50, "uni"],
	["Pilot Coveralls (NATO)", "U_B_PilotCoveralls", 50, "uni"],
	["Pilot Coveralls (CSAT)", "U_O_PilotCoveralls", 50, "uni"],
	["Pilot Coveralls (AAF)", "U_I_pilotCoveralls", 50, "uni"],
	["Heli Pilot Coveralls (NATO)", "U_B_HeliPilotCoveralls", 50, "uni"],
	["Heli Pilot Coveralls (AAF)", "U_I_HeliPilotCoveralls", 50, "uni"],
	["Guerilla Smocks 1", "U_BG_Guerilla1_1", 25, "uni"], // BLUFOR
	["Guerilla Smocks 2", "U_BG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 3", "U_BG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 4", "U_BG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 5", "U_BG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 6", "U_BG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 7", "U_BG_leader", 25, "uni"],
	["Guerilla Smocks 1", "U_OG_Guerilla1_1", 25, "uni"], // OPFOR
	["Guerilla Smocks 2", "U_OG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 3", "U_OG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 4", "U_OG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 5", "U_OG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 6", "U_OG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 7", "U_OG_leader", 25, "uni"],
	["Guerilla Smocks 1", "U_IG_Guerilla1_1", 25, "uni"], // Independent
	["Guerilla Smocks 2", "U_IG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 3", "U_IG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 4", "U_IG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 5", "U_IG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 6", "U_IG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 7", "U_IG_leader", 25, "uni"],
	/*["Worker Coveralls", "U_C_WorkerCoveralls", 25, "uni"], // can only be worn by civilian units
	["T-Shirt (Blue)", "U_C_Poor_1", 25, "uni"],
	["Polo (Red/white)", "U_C_Poloshirt_redwhite", 25, "uni"],
	["Polo (Salmon)", "U_C_Poloshirt_salmon", 25, "uni"],
	["Polo (Tri-color)", "U_C_Poloshirt_tricolour", 25, "uni"],
	["Polo (Navy)", "U_C_Poloshirt_blue", 25, "uni"],
	["Polo (Burgundy)", "U_C_Poloshirt_burgundy", 25, "uni"],
	["Polo (Blue/green)", "U_C_Poloshirt_stripped", 25, "uni"],*/
	["Polo (Competitor)", "U_Competitor", 25, "uni"],
	["Polo (Rangemaster)", "U_Rangemaster", 25, "uni"],
	/*["Racing Suit (Black)", "U_C_Driver_1_black", 25, "uni"], // can only be worn by civilian units
	["Racing Suit (Blue)", "U_C_Driver_1_blue", 25, "uni"],
	["Racing Suit (Green)", "U_C_Driver_1_green", 25, "uni"],
	["Racing Suit (Yellow)", "U_C_Driver_1_yellow", 25, "uni"],
	["Racing Suit (Orange)", "U_C_Driver_1_orange", 25, "uni"],
	["Racing Suit (Red)", "U_C_Driver_1_red", 25, "uni"],
	["Racing Suit (White)", "U_C_Driver_1_white", 25, "uni"],
	["Racing Suit (Fuel)", "U_C_Driver_1", 25, "uni"],
	["Racing Suit (Bluking)", "U_C_Driver_2", 25, "uni"],
	["Racing Suit (Redstone)", "U_C_Driver_3", 25, "uni"],
	["Racing Suit (Vrana)", "U_C_Driver_4", 25, "uni"],*/
	["Tron Light Suit (Blue)", "U_B_Protagonist_VR", 5000, "uni"],
	["Tron Light Suit (Red)", "U_O_Protagonist_VR", 5000, "uni"],
	["Tron Light Suit (Green)", "U_I_Protagonist_VR", 5000, "uni"]
];

vestArray = compileFinal str
[
	["Rebreather (NATO)", "V_RebreatherB", 200, "vest"],
	["Rebreather (CSAT)", "V_RebreatherIR", 200, "vest"],
	["Rebreather (AAF)", "V_RebreatherIA", 200, "vest"],
	["Carrier Lite (Green)", "V_PlateCarrier1_rgr", -1, "vest"],
	["Carrier Lite (Black)", "V_PlateCarrier1_blk", -1, "vest"],
	["Carrier Rig (Green)", "V_PlateCarrier3_rgr", -1, "vest"],
	["Carrier GL Rig (Green)", "V_PlateCarrierGL_rgr", -1, "vest"],
	["Carrier GL Rig (Black)", "V_PlateCarrierGL_blk", -1, "vest"],
	["Carrier GL Rig (MTP)", "V_PlateCarrierGL_mtp", -1, "vest"],
	["Carrier Special Rig (Green)", "V_PlateCarrierSpec_rgr", -1, "vest"],
	["Carrier Special Rig (Black)", "V_PlateCarrierSpec_blk", -1, "vest"],
	["Carrier Special Rig (MTP)", "V_PlateCarrierSpec_mtp", -1, "vest"],
	["GA Carrier Lite (Digi)", "V_PlateCarrierIA1_dgtl", -1, "vest"],
	["GA Carrier Rig (Digi)", "V_PlateCarrierIA2_dgtl", -1, "vest"],
	["GA Carrier GL Rig (Digi)", "V_PlateCarrierIAGL_dgtl", -1, "vest"],
	["GA Carrier GL Rig (Olive)", "V_PlateCarrierIAGL_oli", -1, "vest"],
	["LBV Harness", "V_HarnessO_brn", -1, "vest"],
	["LBV Harness (Gray)", "V_HarnessO_gry", -1, "vest"],
	["LBV Grenadier Harness", "V_HarnessOGL_brn", -1, "vest"],
	["LBV Grenadier Harness (Gray)", "V_HarnessOGL_gry", -1, "vest"],
	["ELBV Harness", "V_HarnessOSpec_brn", -1, "vest"],
	["ELBV Harness (Gray)", "V_HarnessOSpec_gry", -1, "vest"],
	["Slash Bandolier (Black)", "V_BandollierB_blk", -1, "vest"],
	["Slash Bandolier (Coyote)", "V_BandollierB_cbr", -1, "vest"],
	["Slash Bandolier (Green)", "V_BandollierB_rgr", -1, "vest"],
	["Slash Bandolier (Khaki)", "V_BandollierB_khk", -1, "vest"],
	["Slash Bandolier (Olive)", "V_BandollierB_oli", -1, "vest"],
	["Chest Rig (Khaki)", "V_Chestrig_khk", -1, "vest"],
	["Chest Rig (Green)", "V_Chestrig_rgr", -1, "vest"],
	["Fighter Chestrig (Black)", "V_Chestrig_blk", -1, "vest"],
	["Fighter Chestrig (Olive)", "V_Chestrig_oli", -1, "vest"],
	["Tactical Vest (Black)", "V_TacVest_blk", -1, "vest"],
	["Tactical Vest (Brown)", "V_TacVest_brn", -1, "vest"],
	["Tactical Vest (Camo)", "V_TacVest_camo", -1, "vest"],
	["Tactical Vest (Khaki)", "V_TacVest_khk", -1, "vest"],
	["Tactical Vest (Olive)", "V_TacVest_oli", -1, "vest"],
	["Raven Night Vest", "V_TacVestIR_blk", -1, "vest"]
];

backpackArray = compileFinal str
[
	//["Parachute", "B_Parachute", 200, "backpack"],

	["Assault Pack (Black)", "B_AssaultPack_blk", 150, "backpack"],
	["Assault Pack (Green)", "B_AssaultPack_rgr", 150, "backpack"],
	["Assault Pack (MTP)", "B_AssaultPack_mcamo", 150, "backpack"],
	["Assault Pack (Hex)", "B_AssaultPack_ocamo", 150, "backpack"],

	["Field Pack (Black)", "B_FieldPack_blk", 200, "backpack"],
	["Field Pack (Coyote)", "B_FieldPack_cbr", 200, "backpack"],
	["Field Pack (Khaki)", "B_FieldPack_khk", 200, "backpack"],
	["Field Pack (Urban)", "B_FieldPack_oucamo", 200, "backpack"],

	["Kitbag (Coyote)", "B_Kitbag_cbr", 350, "backpack"],
	["Kitbag (Green)", "B_Kitbag_rgr", 350, "backpack"],
	["Kitbag (MTP)", "B_Kitbag_mcamo", 350, "backpack"],
	["Kitbag (Sage)", "B_Kitbag_sgg", 350, "backpack"],

	["Bergen (Black)", "B_Bergen_blk", 350, "backpack"],
	["Bergen (Green)", "B_Bergen_rgr", 350, "backpack"],
	["Bergen (MTP)", "B_Bergen_mcamo", 350, "backpack"],
	["Bergen (Sage)", "B_Bergen_sgg", 350, "backpack"],

	["Carryall (Khaki)", "B_Carryall_khk", 500, "backpack"],
	["Carryall (MTP)", "B_Carryall_mcamo", 500, "backpack"],
	["Carryall (Olive)", "B_Carryall_oli", 500, "backpack"],
	["Carryall (Urban)", "B_Carryall_oucamo", 500, "backpack"],

	//DLC backpacks
	["Field Pack (Hex)", "B_FieldPack_ocamo", 200, "backpack"],
	["Field Pack (Olive)", "B_FieldPack_oli", 200, "backpack"],
	["Carryall (Coyote)", "B_Carryall_cbr", 500, "backpack"],
	["Carryall (Hex)", "B_Carryall_ocamo", 500, "backpack"]
];

genItemArray = compileFinal str
[
	["UAV Terminal (NATO)", "B_UavTerminal", 150, "gps"],
	["UAV Terminal (CSAT)", "O_UavTerminal", 150, "gps"],
	["UAV Terminal (AAF)", "I_UavTerminal", 150, "gps"],
	["Quadrotor UAV (NATO)", "B_UAV_01_backpack_F", 500, "backpack"],
	["Quadrotor UAV (CSAT)", "O_UAV_01_backpack_F", 500, "backpack"],
	["Quadrotor UAV (AAF)", "I_UAV_01_backpack_F", 500, "backpack"],
	["Remote Designator Bag (NATO) [DLC]", "B_Static_Designator_01_weapon_F", 1000, "backpack"],
	["Remote Designator Bag (CSAT) [DLC]", "O_Static_Designator_02_weapon_F", 1000, "backpack"],
	["GPS", "ItemGPS", 100, "gps"],
	["First Aid Kit", "FirstAidKit", 25, "item"],
	["Medikit", "Medikit", 150, "item"],
	["Toolkit", "ToolKit", 150, "item"],
	["Mine & Beacon Detector", "MineDetector", 100, "item"],
	["NV Goggles", "NVGoggles", 100, "nvg"],
	["Diving Goggles", "G_Diving", 100, "gogg"],
	["Binoculars", "Binocular", 50, "binoc"],
	["Rangefinder", "Rangefinder", 150, "binoc"],
	["Laser Designator", "Laserdesignator", 1000, "binoc"],
	["Chemlight (Blue)", "Chemlight_blue", 25, "mag"],
	["Chemlight (Green)", "Chemlight_green", 25, "mag"],
	["Chemlight (Yellow)", "Chemlight_yellow", 25, "mag"],
	["Chemlight (Red)", "Chemlight_red", 25, "mag"]
];

allStoreMagazines = compileFinal str (call ammoArray + call throwputArray + call genItemArray);
allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call allStoreMagazines + call accessoriesArray);
allStoreGear = compileFinal str (call headArray + call uniformArray + call vestArray + call backpackArray);

genObjectsArray = compileFinal str
[
	// Additions
	["Sign (Military Area, Small)", "Land_Sign_WarningMilAreaSmall_F", 100, "object"],
	["Sign (Military Area)", "Land_Sign_WarningMilitaryArea_F", 100, "object"],
	["Sign (Military Vehicles)", "Land_Sign_WarningMilitaryVehicles_F", 100, "object"],
	["Sign (Risk Area)", "Land_Sign_WarningUnexplodedAmmo_F", 100, "object"],
	["Canal Wall (Small)", "Land_Canal_WallSmall_10m_F", 200, "object"],
	["Military Cargo HQ", "Land_Cargo_HQ_V1_F", 7500, "object"],
	["Food sacks", "Land_Sacks_goods_F", 4000, "object"],
	["Water Barrel", "Land_BarrelWater_F", 4000, "object"],
	// Additions
	["Empty Ammo Crate", "Box_NATO_Ammo_F", 200, "ammocrate"],
	//["Metal Barrel", "Land_MetalBarrel_F", 25, "object"],
	//["Toilet Box", "Land_ToiletBox_F", 25, "object"],
	["Lamp Post (Harbour)", "Land_LampHarbour_F", 100, "object"],
	["Lamp Post (Shabby)", "Land_LampShabby_F", 100, "object"],
	["Boom Gate", "Land_BarGate_F", 150, "object"],
	["Pipes", "Land_Pipes_Large_F", 200, "object"],
	["Concrete Frame", "Land_CncShelter_F", 200, "object"],
	["Highway Guardrail", "Land_Crash_barrier_F", 200, "object"],
	["Concrete Barrier", "Land_CncBarrier_F", 200, "object"],
	["Concrete Barrier (Medium)", "Land_CncBarrierMedium_F", 350, "object"],
	["Concrete Barrier (Long)", "Land_CncBarrierMedium4_F", 500, "object"],
	["HBarrier (1 block)", "Land_HBarrier_1_F", 150, "object"],
	["HBarrier (3 blocks)", "Land_HBarrier_3_F", 200, "object"],
	["HBarrier (5 blocks)", "Land_HBarrier_5_F", 250, "object"],
	["HBarrier Big", "Land_HBarrierBig_F", 500, "object"],
	["HBarrier Wall (4 blocks)", "Land_HBarrierWall4_F", 400, "object"],
	["HBarrier Wall (6 blocks)", "Land_HBarrierWall6_F", 500, "object"],
	["HBarrier Watchtower", "Land_HBarrierTower_F", 600, "object"],
	["Concrete Wall", "Land_CncWall1_F", 400, "object"],
	["Concrete Military Wall", "Land_Mil_ConcreteWall_F", 400, "object"],
	["Concrete Wall (Long)", "Land_CncWall4_F", 600, "object"],
	["Military Wall (Big)", "Land_Mil_WallBig_4m_F", 600, "object"],
	//["Shoot House Wall", "Land_Shoot_House_Wall_F", 180, "object"],
	["Canal Wall (Small)", "Land_Canal_WallSmall_10m_F", 400, "object"],
	["Canal Stairs", "Land_Canal_Wall_Stairs_F", 500, "object"],
	["Bag Fence (Corner)", "Land_BagFence_Corner_F", 150, "object"],
	["Bag Fence (End)", "Land_BagFence_End_F", 150, "object"],
	["Bag Fence (Long)", "Land_BagFence_Long_F", 200, "object"],
	["Bag Fence (Round)", "Land_BagFence_Round_F", 150, "object"],
	["Bag Fence (Short)", "Land_BagFence_Short_F", 150, "object"],
	["Bag Bunker (Small)", "Land_BagBunker_Small_F", 250, "object"],
	["Bag Bunker (Large)", "Land_BagBunker_Large_F", 500, "object"],
	["Bag Bunker Tower", "Land_BagBunker_Tower_F", 1000, "object"],
	["Military Cargo Post", "Land_Cargo_Patrol_V1_F", 800, "object"],
	["Military Cargo Tower", "Land_Cargo_Tower_V1_F", 10000, "object"],
	["Concrete Ramp", "Land_RampConcrete_F", 350, "object"],
	["Concrete Ramp (High)", "Land_RampConcreteHigh_F", 500, "object"],
	["Scaffolding", "Land_Scaffolding_F", 250, "object"]
];

allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear);

//Text name, classname, buy cost, spawn type, sell price (selling not implemented) or spawning color
landArray = compileFinal str
[
	["Kart", "C_Kart_01_F", 500, "vehicle"],

	["Quadbike (Civilian)", "C_Quadbike_01_F", 600, "vehicle"],
	["Quadbike (NATO)", "B_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (CSAT)", "O_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (AAF)", "I_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (FIA)", "B_G_Quadbike_01_F", 650, "vehicle"],

	["Hatchback", "C_Hatchback_01_F", 800, "vehicle"],
	["Hatchback Sport", "C_Hatchback_01_sport_F", 1000, "vehicle"],
	["SUV", "C_SUV_01_F", 1100, "vehicle"],
	["Offroad", "C_Offroad_01_F", 1100, "vehicle"],
	["Offroad Camo", "B_G_Offroad_01_F", 1250, "vehicle"],
	["Offroad Repair", "C_Offroad_01_repair_F", 1500, "vehicle"],
	["Offroad HMG", "B_G_Offroad_01_armed_F", 2500, "vehicle"],

	["Truck", "C_Van_01_transport_F", 700, "vehicle"],
	["Truck (Camo)", "B_G_Van_01_transport_F", 800, "vehicle"],
	["Truck Box", "C_Van_01_box_F", 900, "vehicle"],
	["Fuel Truck", "C_Van_01_fuel_F", 5500, "vehicle"],
	["Fuel Truck (Camo)", "B_G_Van_01_fuel_F", 6000, "vehicle"],

	["HEMTT Tractor", "B_Truck_01_mover_F", 4000, "vehicle"],
	["HEMTT Box", "B_Truck_01_box_F", 5000, "vehicle"],
	["HEMTT Transport", "B_Truck_01_transport_F", 6000, "vehicle"],
	["HEMTT Covered", "B_Truck_01_covered_F", 7500, "vehicle"],
	["HEMTT Fuel", "B_Truck_01_fuel_F", 8500, "vehicle"],
	["HEMTT Medical", "B_Truck_01_medical_F", 9000, "vehicle"],
	["HEMTT Repair", "B_Truck_01_Repair_F", 10500, "vehicle"],
	["HEMTT Ammo", "B_Truck_01_ammo_F", 12500, "vehicle"],

	["Tempest Device", "O_Truck_03_device_F", 4000, "vehicle"],
	["Tempest Transport", "O_Truck_03_transport_F", 6000, "vehicle"],
	["Tempest Covered", "O_Truck_03_covered_F", 7500, "vehicle"],
	["Tempest Fuel", "O_Truck_03_fuel_F", 8000, "vehicle"],
	["Tempest Medical", "O_Truck_03_medical_F", 9000, "vehicle"],
	["Tempest Repair", "O_Truck_03_repair_F", 10000, "vehicle"],
	["Tempest Ammo", "O_Truck_03_ammo_F", 12000, "vehicle"],

	["Zamak Transport", "I_Truck_02_transport_F", 4000, "vehicle"],
	["Zamak Covered", "I_Truck_02_covered_F", 5000, "vehicle"],
	["Zamak Fuel", "I_Truck_02_fuel_F", 7500, "vehicle"],
	["Zamak Medical", "I_Truck_02_medical_F", 9000, "vehicle"],
	["Zamak Repair", "I_Truck_02_box_F", 10000, "vehicle"],
	["Zamak Ammo", "I_Truck_02_ammo_F", 12000, "vehicle"],

	["UGV Stomper (NATO)", "B_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (NATO)", "B_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Stomper (AAF)", "I_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (AAF)", "I_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Saif (CSAT)", "O_UGV_01_F", 2500, "vehicle"],
	["UGV Saif RCWS (CSAT)", "O_UGV_01_rcws_F", 15000, "vehicle"]
];

armoredArray = compileFinal str
[
	["Hunter", "B_MRAP_01_F", 4000, "vehicle"],
	["Hunter HMG", "B_MRAP_01_hmg_F", 15000, "vehicle"],
	["Hunter GMG", "B_MRAP_01_gmg_F", 17500, "vehicle"],
	["Ifrit", "O_MRAP_02_F", 4000, "vehicle"],
	["Ifrit HMG", "O_MRAP_02_hmg_F", 15000, "vehicle"],
	["Ifrit GMG", "O_MRAP_02_gmg_F", 17500, "vehicle"],
	["Strider", "I_MRAP_03_F", 4000, "vehicle"],
	["Strider HMG", "I_MRAP_03_hmg_F", 15000, "vehicle"],
	["Strider GMG", "I_MRAP_03_gmg_F", 17500, "vehicle"],
	["MSE-3 Marid", "O_APC_Wheeled_02_rcws_F", 22500, "vehicle"],
	["AMV-7 Marshall", "B_APC_Wheeled_01_cannon_F", 27500, "vehicle"],
	["AFV-4 Gorgon", "I_APC_Wheeled_03_cannon_F", 30000, "vehicle"]
];

tanksArray = compileFinal str
[
	["CRV-6e Bobcat", "B_APC_Tracked_01_CRV_F", 32500, "vehicle"],
	["IFV-6c Panther", "B_APC_Tracked_01_rcws_F", 35000, "vehicle"],
	["FV-720 Mora", "I_APC_tracked_03_cannon_F", 37500, "vehicle"],
	["BTR-K Kamysh", "O_APC_Tracked_02_cannon_F", 40000, "vehicle"],
	["IFV-6a Cheetah AA", "B_APC_Tracked_01_AA_F", 35000, "vehicle"],
	["ZSU-39 Tigris AA", "O_APC_Tracked_02_AA_F", 35500, "vehicle"],
	["M2A1 Slammer", "B_MBT_01_cannon_F", 35000, "vehicle"],
	["M2A4 Slammer HMG", "B_MBT_01_TUSK_F", 38000, "vehicle"], // Commander gun variant
	["T-100 Varsuk", "O_MBT_02_cannon_F", 40000, "vehicle"],
	["MBT-52 Kuma", "I_MBT_03_cannon_F", 50000, "vehicle"]
];


helicoptersArray = compileFinal str
[
	["M-900 Civilian", "C_Heli_Light_01_civil_F", 1000, "vehicle"], // MH-6, no flares
	["MH-9 Hummingbird", "B_Heli_Light_01_F", 4000, "vehicle"], // MH-6
	["PO-30 Orca (Black)", "O_Heli_Light_02_unarmed_F", 4800, "vehicle"], // Ka-60
	["WY-55 Hellcat (Green)", "I_Heli_light_03_unarmed_F", 4850, "vehicle"], // AW159
	["CH-49 Mohawk", "I_Heli_Transport_02_F", 5000, "vehicle"], // AW101
	["CH-67 Huron (Black) [DLC]", "B_Heli_Transport_03_unarmed_F", 6000, "vehicle"], // CH-47
	["CH-67 Huron (Armed) [DLC]", "B_Heli_Transport_03_F", 9000, "vehicle"], // CH-47 with 2 side miniguns
	["Mi-290 Taru (Crane) [DLC]", "O_Heli_Transport_04_F", 6100, "vehicle"], // CH-54
	["Mi-290 Taru (Bench) [DLC]", "O_Heli_Transport_04_bench_F", 6500, "vehicle"],
	["Mi-290 Taru (Transport) [DLC]", "O_Heli_Transport_04_covered_F", 7500, "vehicle"],
	["Mi-290 Taru (Box) [DLC]", "O_Heli_Transport_04_box_F", 8500, "vehicle"],
	["Mi-290 Taru (Fuel) [DLC]", "O_Heli_Transport_04_fuel_F", 8500, "vehicle"],
	["Mi-290 Taru (Ammo) [DLC]", "O_Heli_Transport_04_ammo_F", 1000, "vehicle"],
	["Mi-290 Taru (Medical) [DLC]", "O_Heli_Transport_04_medevac_F",11000, "vehicle"],
	["Mi-290 Taru (Repair) [DLC]", "O_Heli_Transport_04_repair_F", 12000, "vehicle"],
	["UH-80 Ghost Hawk (Black)", "B_Heli_Transport_01_F", 12500, "vehicle"], // UH-60 Stealth with 2 side miniguns
	["UH-80 Ghost Hawk (Green)", "B_Heli_Transport_01_camo_F", 13000, "vehicle"], // UH-60 Stealth with 2 side miniguns (green camo)
	["AH-9 Pawnee", "B_Heli_Light_01_armed_F", 20000, "vehicle"], // Armed AH-6
	["PO-30 Orca (Armed, Black)", "O_Heli_Light_02_v2_F", 25000, "vehicle"], // Armed Ka-60 with orca paintjob
	["PO-30 Orca (Armed, Hex)", "O_Heli_Light_02_F", 26000, "vehicle"], // Armed Ka-60
	["WY-55 Hellcat (Armed)", "I_Heli_light_03_F", 30000, "vehicle"], // Armed AW159
	["AH-99 Blackfoot", "B_Heli_Attack_01_F", 35000, "vehicle"], // RAH-66 with gunner
	["Mi-48 Kajman (Hex)", "O_Heli_Attack_02_F", 40000, "vehicle"], // Mi-28 with gunner
	["Mi-48 Kajman (Black)", "O_Heli_Attack_02_black_F", 50000, "vehicle"] // Mi-28 with gunner (black camo)
];

planesArray = compileFinal str
[
	["A-143 Buzzard AA", "I_Plane_Fighter_03_AA_F", 40000, "vehicle"],
	["A-143 Buzzard CAS", "I_Plane_Fighter_03_CAS_F", 45000, "vehicle"],
	["A-164 Wipeout CAS", "B_Plane_CAS_01_F", 60000, "vehicle"],
	["To-199 Neophron CAS", "O_Plane_CAS_02_F", 60000, "vehicle"],
	["MQ4A Greyhawk ATGM UAV", "B_UAV_02_F", 15000, "vehicle"],
	["MQ4A Greyhawk Bomber UAV", "B_UAV_02_CAS_F", 10000, "vehicle"], // Bomber UAVs are a lot harder to use, hence why they are cheaper than ATGMs
	["K40 Ababil-3 ATGM UAV (CSAT)", "O_UAV_02_F", 15000, "vehicle"],
	["K40 Ababil-3 Bomber UAV (CSAT)", "O_UAV_02_CAS_F", 10000, "vehicle"],
	["K40 Ababil-3 ATGM UAV (AAF)", "I_UAV_02_F", 15000, "vehicle"],
	["K40 Ababil-3 Bomber UAV (AAF)", "I_UAV_02_CAS_F", 10000, "vehicle"]
];

boatsArray = compileFinal str
[
	["Rescue Boat", "C_Rubberboat", 500, "boat"],
	["Rescue Boat (NATO)", "B_Lifeboat", 500, "boat"],
	["Rescue Boat (CSAT)", "O_Lifeboat", 500, "boat"],
	["Assault Boat (NATO)", "B_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (CSAT)", "O_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (AAF)", "I_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (FIA)", "B_G_Boat_Transport_01_F", 600, "boat"],
	["Motorboat", "C_Boat_Civil_01_F", 1000, "boat"],
	["Motorboat Rescue", "C_Boat_Civil_rescue_01_F", 900, "boat"],
	["Motorboat Police", "C_Boat_Civil_police_01_F", 1250, "boat"],
	["Speedboat HMG (CSAT)", "O_Boat_Armed_01_hmg_F", 4000, "boat"],
	["Speedboat Minigun (NATO)", "B_Boat_Armed_01_minigun_F", 4000, "boat"],
	["Speedboat Minigun (AAF)", "I_Boat_Armed_01_minigun_F", 4000, "boat"],
	["SDV Submarine (NATO)", "B_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (CSAT)", "O_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (AAF)", "I_SDV_01_F", 1000, "submarine"]
];

allVehStoreVehicles = compileFinal str (call landArray + call armoredArray + call tanksArray + call helicoptersArray + call planesArray + call boatsArray);

uavArray = compileFinal str
[
	"UAV_02_base_F",
	"UGV_01_base_F"
];

noColorVehicles = compileFinal str
[
	// Deprecated
];

rgbOnlyVehicles = compileFinal str
[
	// Deprecated
];

_color = "#(rgb,1,1,1)color";
_texDir = "client\images\vehicleTextures\";
_kartDir = "\A3\soft_f_kart\Kart_01\Data\";
_mh9Dir = "\A3\air_f\Heli_Light_01\Data\";
_mohawkDir = "\A3\air_f_beta\Heli_Transport_02\Data\";
_taruDir = "\A3\air_f_heli\Heli_Transport_04\Data\";

colorsArray = compileFinal str
[
	[ // Main colors
		"All",
		[
			["Black", _color + "(0.01,0.01,0.01,1)"], // #(argb,8,8,3)color(0.1,0.1,0.1,0.1)
			["Grey", _color + "(0.15,0.151,0.152,1)"], // #(argb,8,8,3)color(0.5,0.51,0.512,0.3)
			["White", _color + "(0.75,0.75,0.75,1)"], // #(argb,8,8,3)color(1,1,1,0.5)
			["Dark Blue", _color + "(0,0.05,0.15,1)"], // #(argb,8,8,3)color(0,0.3,0.6,0.05)
			["Blue", _color + "(0,0.03,0.5,1)"], // #(argb,8,8,3)color(0,0.2,1,0.75)
			["Teal", _color + "(0,0.3,0.3,1)"], // #(argb,8,8,3)color(0,1,1,0.15)
			["Green", _color + "(0,0.5,0,1)"], // #(argb,8,8,3)color(0,1,0,0.15)
			["Yellow", _color + "(0.5,0.4,0,1)"], // #(argb,8,8,3)color(1,0.8,0,0.4)
			["Orange", _color + "(0.4,0.09,0,1)"], // #(argb,8,8,3)color(1,0.5,0,0.4)
			["Red", _color + "(0.45,0.005,0,1)"], // #(argb,8,8,3)color(1,0.1,0,0.3)
			["Pink", _color + "(0.5,0.03,0.3,1)"], // #(argb,8,8,3)color(1,0.06,0.6,0.5)
			["Purple", _color + "(0.1,0,0.3,1)"], // #(argb,8,8,3)color(0.8,0,1,0.1)
			["NATO Tan", _texDir + "nato.jpg"], // #(argb,8,8,3)color(0.584,0.565,0.515,0.3)
			["CSAT Brown", _texDir + "csat.jpg"], // #(argb,8,8,3)color(0.624,0.512,0.368,0.3)
			["AAF Green", _texDir + "aaf.jpg"], // #(argb,8,8,3)color(0.546,0.59,0.363,0.2)
			["Trippy", _texDir + "rainbow.jpg"],
			["Carbon", _texDir + "carbon.jpg"],
			["Rusty", _texDir + "rusty.jpg"],
			["Denim", _texDir + "denim.jpg"],
			["Psych", _texDir + "psych.jpg"],
			["Leopard", _texDir + "leopard.jpg"],
			["Weed", _texDir + "weed.jpg"],
			["'Murica", _texDir + "murica.jpg"],
			["Confederate", _texDir + "confederate.jpg"],
			["Union Jack", _texDir + "unionjack.jpg"],
			["Spain", _texDir + "spain.jpg"],
			["Yellow Camo", _texDir + "camo_fuel.jpg"],
			["Orange Camo", _texDir + "camo_fack.jpg"],
			["Red Camo", _texDir + "camo_deser.jpg"],
			["Pink Camo", _texDir + "camo_pank.jpg"]
		]
	],
	[ // Kart colors
		"Kart_01_Base_F",
		[
			["Black (Kart)", [[0, _kartDir + "kart_01_base_black_co.paa"]]],
			["White (Kart)", [[0, _kartDir + "kart_01_base_white_co.paa"]]],
			["Blue (Kart)", [[0, _kartDir + "kart_01_base_blue_co.paa"]]],
			["Green (Kart)", [[0, _kartDir + "kart_01_base_green_co.paa"]]],
			["Yellow (Kart)", [[0, _kartDir + "kart_01_base_yellow_co.paa"]]],
			["Orange (Kart)", [[0, _kartDir + "kart_01_base_orange_co.paa"]]],
			["Red (Kart)", [[0, _kartDir + "kart_01_base_red_co.paa"]]]
		]
	],
	[ // MH-9 colors
		"Heli_Light_01_base_F",
		[
			["AAF Camo (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_indp_co.paa"]]],
			["Blue 'n White (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_blue_co.paa"]]],
			["Blueline (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_blueline_co.paa"]]],
			["Cream Gravy (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_co.paa"]]],
			["Digital (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_digital_co.paa"]]],
			["Elliptical (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_elliptical_co.paa"]]],
			["Furious (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_furious_co.paa"]]],
			["Graywatcher (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_graywatcher_co.paa"]]],
			["ION (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_ion_co.paa"]]],
			["Jeans (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_jeans_co.paa"]]],
			["Light (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_light_co.paa"]]],
			["Shadow (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_shadow_co.paa"]]],
			["Sheriff (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sheriff_co.paa"]]],
			["Speedy (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_speedy_co.paa"]]],
			["Sunset (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sunset_co.paa"]]],
			["Vrana (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_vrana_co.paa"]]],
			["Wasp (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wasp_co.paa"]]],
			["Wave (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wave_co.paa"]]]
		]
	],
	[ // Mohawk colors
		"Heli_Transport_02_base_F",
		[
			["Dahoman (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_dahoman_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_dahoman_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_dahoman_co.paa"]
			]],
			["ION (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_ion_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_ion_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_ion_co.paa"]
			]]
		]
	],
	[ // Taru base colors
		"Heli_Transport_04_base_F",
		[
			["Black (Taru)", [
				[0, _taruDir + "heli_transport_04_base_01_black_co.paa"],
				[1, _taruDir + "heli_transport_04_base_02_black_co.paa"],
				[2, _taruDir + "heli_transport_04_pod_ext01_black_co.paa"],
				[3, _taruDir + "heli_transport_04_pod_ext02_black_co.paa"]
			]]
		]
	],
	[ // Taru bench colors
		"O_Heli_Transport_04_bench_F",
		[
			["Black (Taru)", [[2, _taruDir + "heli_transport_04_bench_black_co.paa"]]]
		]
	],
	[ // Taru fuel colors
		"O_Heli_Transport_04_fuel_F",
		[
			["Black (Taru)", [[2, _taruDir + "heli_transport_04_fuel_black_co.paa"]]]
		]
	]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
// ["Medical Kit", "medkits", localize "STR_WL_ShopDescriptions_MedKit", "client\icons\medkit.paa", 400, 200],  // not needed since there are First Ait Kits
customPlayerItems = compileFinal str
[
	["Water Bottle", "water", localize "STR_WL_ShopDescriptions_Water", "client\icons\waterbottle.paa", 30, 15],
	["Canned Food", "cannedfood", localize "STR_WL_ShopDescriptions_CanFood", "client\icons\cannedfood.paa", 30, 15],
	["Repair Kit", "repairkit", localize "STR_WL_ShopDescriptions_RepairKit", "client\icons\briefcase.paa", 500, 250],
	["Jerry Can (Full)", "jerrycanfull", localize "STR_WL_ShopDescriptions_fuelFull", "client\icons\jerrycan.paa", 150, 75],
	["Jerry Can (Empty)", "jerrycanempty", localize "STR_WL_ShopDescriptions_fuelEmpty", "client\icons\jerrycan.paa", 50, 25],
	["Spawn Beacon", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\spawnbeacon.paa", 1500, 750],
	["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\camonet.paa", 200, 100],
	["Syphon Hose", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\syphonhose.paa", 200, 100],
	["Energy Drink", "energydrink", localize "STR_WL_ShopDescriptions_Energy_Drink", "client\icons\energydrink.paa", 100, 50],
	["Warchest", "warchest", localize "STR_WL_ShopDescriptions_Warchest", "client\icons\warchest.paa", 1000, 500]
];

call compile preprocessFileLineNumbers "mapConfig\storeOwners.sqf";

storeConfigDone = compileFinal "true";
