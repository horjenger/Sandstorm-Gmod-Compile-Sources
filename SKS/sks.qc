// Created by Crowbar 0.55

$include "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\unreal_scale.qci"

$modelname "weapons\c_sr_sks.mdl"

$bodygroup "Weapon"
{
	studio "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\sks\SKM_1P_SKS.smd"
}

$bodygroup "Belt"
{
	studio "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\sks\SKM_1P_SKS_Bullets_0.smd"
	studio "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\sks\SKM_1P_SKS_Bullets_1.smd"
	studio "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\sks\SKM_1P_SKS_Bullets_2.smd"
	studio "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\sks\SKM_1P_SKS_Bullets_3.smd"
}

$bodygroup "mag"
{
	studio "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\upgrades\magazine\SKM_1P_SKS_Magazine_20.smd"
	studio "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\upgrades\magazine\SKM_1P_SKS_Magazine_30.smd"
}

$bodygroup "mag2_bullets"
{
	studio "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\sks\SKM_1P_SKS_Bullets_Mag2_3.smd"
}

$surfaceprop "default"
$contents "solid"

$cdmaterials "models\weapons\sandstorm_reloaded\"

$attachment "muzzle" "b_wpn_muzzle" 0 0 0 rotate 0 0 0
$attachment "shell" "b_wpn_eject" 0 0 0 rotate 0 0 0
$attachment "camera" "b_camera" 0 0 0 rotate 0 -90 0

$include "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\SKS\v_SKS_bones.qci"

// IK - inverse kinematics - needed for all sort of anims - makes the hands follow the gun
$include "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\sandstorm_hand_ik.qci"

$weightlist "weights_boltback" {
	"b_root" 0
	"b_wpn" 0
	"b_wpn_bolt" 1
}

$weightlist "weights_trigger" {
	"b_root" 0
	"b_wpn" 0
	"b_wpn_trigger" 0.5
	"b_ch_r_finger_11" 0
}

$weightlist "weights_wpnonly" {
	"b_root" 0
	"b_wpn" 1
	"b_wpn_bolt" 0
	"b_wpn_eject" 0
	"b_wpn_magrelease" 0
	"b_wpn_trigger" 0
	"ik_hand_wpn_l" 0
	"ik_hand_wpn_r" 0
	"b_wpn_mag" 0
	"b_wpn_mag_b1" 0
	"b_wpn_optic" 0
	"b_wpn_foregrip" 0
	"b_wpn_suppressor" 0
	"b_camera" 1
}

$weightlist "weights_delta_wpn_arms" {
	"b_root" 1
	"b_wpn" 1
	"b_ch_l_finger_00" 0
	"b_ch_l_finger_10" 0
	"b_ch_l_finger_20" 0
	"b_ch_l_finger_30" 0
	"b_ch_l_finger_40" 0
	"b_ch_r_finger_00" 0
	"b_ch_r_finger_10" 1
	"b_ch_r_finger_11" 1
	"b_ch_r_finger_12" 1
	"b_ch_r_finger_20" 0
	"b_ch_r_finger_30" 0
	"b_ch_r_finger_40" 0
	"b_camera" 1
}

// sequences

$definemacro macro_idlesequence \\
"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\SKS\anims\orig\AN_1P_SKS_B_Idle.smd"

$definemacro macro_fire_trigger \\
blendlayer "delta_trigger" 0 1 10 10

$definemacro macro_fire_bolt \\
blendlayer "delta_boltback" 1 1 10 10

$definemacro macro_fire_last \\
blendlayer "delta_empty" 1 2 100 100

$definemacro macro_empty_bolt \\
addlayer "delta_empty"

$sequence "idle" {
	$macro_idlesequence
}

$sequence "base_idle" {
	$macro_idlesequence
	activity "ACT_VM_IDLE" 1
	loop
	ikrule rhand touch "b_wpn" usesource
	// dont blend left hand, otherwise foregrip/gl deltas act strange when transitioning to idle
}

$sequence "empty_idle" {
	$macro_idlesequence
	$macro_empty_bolt
	activity "ACT_VM_IDLE_EMPTY" 1
	loop
	ikrule rhand touch "b_wpn" usesource
	// dont blend left hand, otherwise foregrip/gl deltas act strange when transitioning to idle
}

$sequence "base_draw" {
	$macro_idlesequence
	activity "ACT_VM_DRAW" 1
	addlayer "delta_ik_draw"
	frames 0 41
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "empty_draw" {
	$macro_idlesequence
	$macro_empty_bolt
	activity "ACT_VM_DRAW_EMPTY" 1
	addlayer "delta_ik_draw"
	frames 0 41
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}


$sequence "base_holster" {
	$macro_idlesequence
	activity "ACT_VM_HOLSTER" 1
	addlayer "delta_ik_holster"
	frames 0 20
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "empty_holster" {
	$macro_idlesequence
	$macro_empty_bolt
	activity "ACT_VM_HOLSTER_EMPTY" 1
	addlayer "delta_ik_holster"
	frames 0 20
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_fire_1" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK" 1
	$macro_fire_trigger
	$macro_fire_bolt
	snap
	addlayer "delta_ik_fire_1"
	frames 0 41
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_fire_2" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK" 1
	$macro_fire_trigger
	$macro_fire_bolt
	snap
	addlayer "delta_ik_fire_2"
	frames 0 41
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_fire_3" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK" 1
	$macro_fire_trigger
	$macro_fire_bolt
	snap
	addlayer "delta_ik_fire_3"
	frames 0 41
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_fire_last" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK_EMPTY" 1
	$macro_fire_trigger
	$macro_fire_last
	snap
	addlayer "delta_ik_fire_3"
	frames 0 41
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_dryfire" {
	$macro_idlesequence
	$macro_empty_bolt
	activity "ACT_VM_DRYFIRE" 1
	$macro_fire_trigger
	snap
	addlayer "delta_ik_dryfire"
	frames 0 21
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_reload" {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\SKS\anims\orig\an_1p_SKS_b_reload.smd"
	activity "ACT_VM_RELOAD" 1
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_reloadempty" {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\SKS\anims\orig\an_1p_SKS_b_reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_reload_speed" {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\SKS\anims\orig\an_1p_SKS_b_reload_speed.smd"
	activity "ACT_VM_RELOAD_SPEED" 1
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_reloadempty_speed" {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\SKS\anims\orig\an_1p_SKS_b_reload_empty_speed.smd"
	activity "ACT_VM_RELOAD_EMPTY_SPEED" 1
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_sprint" {
	$macro_idlesequence
	activity "ACT_VM_SPRINT" 1
	addlayer "delta_ik_sprint"
	loop
	frames 0 69
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "empty_sprint" {
	$macro_idlesequence
	$macro_empty_bolt
	activity "ACT_VM_SPRINT_EMPTY" 1
	addlayer "delta_ik_sprint"
	loop
	frames 0 69
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_inspect" {
	$macro_idlesequence
	activity "ACT_VM_FIDGET" 1
	addlayer "delta_ik_inspect"
	frames 0 121
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "empty_inspect" {
	$macro_idlesequence
	$macro_empty_bolt
	activity "ACT_CROSSBOW_FIDGET_UNLOADED" 1
	addlayer "delta_ik_inspect"
	frames 0 121
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_melee" {
	$macro_idlesequence
	activity "ACT_VM_HITCENTER" 1
	addlayer "delta_ik_melee"
	snap
	frames 0 46
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "empty_melee" {
	$macro_idlesequence
	$macro_empty_bolt
	activity "ACT_VM_MISSCENTER" 1
	addlayer "delta_ik_melee"
	snap
	frames 0 46
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "iron_fire_1" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK_1" 1
	$macro_fire_trigger
	$macro_fire_bolt
	snap
	addlayer "delta_ik_iron_fire_1"
	frames 0 41
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "iron_fire_2" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK_1" 1
	$macro_fire_trigger
	$macro_fire_bolt
	snap
	addlayer "delta_ik_iron_fire_2"
	frames 0 41
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "iron_fire_3" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK_1" 1
	$macro_fire_trigger
	$macro_fire_bolt
	snap
	addlayer "delta_ik_iron_fire_3"
	frames 0 41
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "iron_fire_last" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK_2" 1
	$macro_fire_trigger
	$macro_fire_last
	snap
	addlayer "delta_ik_iron_fire_3"
	frames 0 41
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_ready" {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\SKS\anims\an_1p_SKS_b_ready.smd"
	activity "ACT_VM_DRAW_DEPLOYED" 1
	fps 30
	snap
	ikrule rhand touch "b_wpn" usesource
}

// nonoriginal

$sequence "delta_boltback" delta {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\SKS\anims\orig\AN_1P_SKS_B_Fire_Bolt.smd"
	frames 0 10
	weightlist "weights_boltback"
}

$sequence "delta_empty" delta {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\SKS\anims\orig\AN_1P_SKS_B_Idle_Empty.smd"
	frames 0 1
	weightlist "weights_boltback"
}

$sequence delta_trigger delta {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\SKS\anims\orig\AN_1P_SKS_B_Fire_Trigger.smd"
	frames 0 10
	weightlist "weights_trigger"
}

// generic idle sequence
$sequence "seq_idle" "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\SKS\anims\orig\AN_1P_SKS_B_Idle.smd"

// draw
$animation a_ik_draw "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_Draw.smd"
$sequence "delta_ik_draw" delta a_ik_draw weightlist "weights_wpnonly"

// holster
$animation a_ik_holster "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_Holster.smd"
$sequence "delta_ik_holster" delta a_ik_holster weightlist "weights_wpnonly"

// sprint
$animation a_ik_sprint "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_Sprint_Alt.smd" subtract "seq_idle" 0
$sequence "delta_ik_sprint" delta a_ik_sprint weightlist "weights_delta_wpn_arms" loop fixuploop -1 1

//inspect
$animation a_ik_inspect "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\an_1p_gen_rif_b_fidget.smd"
$sequence "delta_ik_inspect" delta a_ik_inspect weightlist "weights_wpnonly"

//melee
$animation a_ik_melee "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_Melee_Muzzle.smd"
$sequence "delta_ik_melee" delta a_ik_melee weightlist "weights_wpnonly"

// fire
$animation a_ik_fire_1 "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_Fire.smd"
$sequence "delta_ik_fire_1" delta a_ik_fire_1 weightlist "weights_wpnonly"

$animation a_ik_fire_2 "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_Fire2.smd"
$sequence "delta_ik_fire_2" delta a_ik_fire_2 weightlist "weights_wpnonly"

$animation a_ik_fire_3 "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_Fire3.smd"
$sequence "delta_ik_fire_3" delta a_ik_fire_3 weightlist "weights_wpnonly"

$animation a_ik_dryfire "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_Dryfire.smd"
$sequence "delta_ik_dryfire" delta a_ik_dryfire weightlist "weights_wpnonly"

// iron fire
$animation a_ik_iron_fire_1 "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_Iron_Fire.smd"
$sequence "delta_ik_iron_fire_1" delta a_ik_iron_fire_1 weightlist "weights_wpnonly"

$animation a_ik_iron_fire_2 "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_Iron_Fire2.smd"
$sequence "delta_ik_iron_fire_2" delta a_ik_iron_fire_2 weightlist "weights_wpnonly"

$animation a_ik_iron_fire_3 "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_Iron_Fire3.smd"
$sequence "delta_ik_iron_fire_3" delta a_ik_iron_fire_3 weightlist "weights_wpnonly"

$animation a_ik_iron_dryfire "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_IRON_Dryfire.smd"
$sequence "delta_ik_iron_dryfire" delta a_ik_iron_dryfire weightlist "weights_wpnonly"

$include "C:\Users\herjenger\Desktop\Sandstorm Reloaded compile sources\Sandstorm-Gmod-Compile-Sources\gmod_bones_follow_sandstorm.qci"