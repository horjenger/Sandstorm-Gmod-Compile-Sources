$include "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\unreal_scale.qci"

$modelname "weapons\c_FAL.mdl"

$bodygroup "weapon"
{
	studio "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\fal\SKM_1P_Fal.smd"
}

$bodygroup "mag"
{
	studio "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\upgrades\magazine\SKM_1P_Fal_Magazine_20.smd"
}

$surfaceprop "default"
$contents "solid"

$attachment "muzzle" "b_wpn_muzzle" 0 0 0 rotate 0 0 0
$attachment "shell" "b_wpn_eject" 0 0 0 rotate 0 0 0
$attachment "camera" "b_camera" 0 0 0 rotate 0 -90 0

$cdmaterials "models\weapons\sandstorm_reloaded\"

$bonemerge "b_wpn_optic"
$bonemerge "b_wpn_suppressor"

$cbox 0 0 0 0 0 0
$bbox -20.432 -2.695 -25.946 11.584 8.836 2.803

$include "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\fal\v_fal_bones.qci"

$include "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\ins2_attachment_bones.qci"

$include "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\sandstorm_deltas_macros.qci"

$include "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\sandstorm_hand_ik.qci"

$weightlist "weights_boltback" {
	"b_root" 0
	"b_wpn" 0
	"b_wpn_bolt" 1
}

$weightlist "weights_trigger" {
	"b_root" 0
	"b_wpn" 0
	"b_wpn_trigger" 1
	"b_ch_r_finger_11" 1
}

$weightlist "weights_wpnonly" {
	"b_root" 0
	"b_wpn" 1
	"b_wpn_bolt" 0
	"b_wpn_eject" 0
	"b_wpn_fireselect" 0
	"b_wpn_magrelease" 0
	"b_wpn_spec_2" 0
	"b_wpn_trigger" 0
	"ik_hand_wpn_l" 0
	"ik_hand_wpn_r" 0
	"b_wpn_chargehandle" 0
	"b_wpn_mag" 0
	"b_wpn_mag_b1" 0
	"b_wpn_mag_b2" 0
	"b_wpn_ring_1" 0
	"b_wpn_ring_2" 0
	"b_wpn_optic" 0
	"b_camera" 1
}

$weightlist "weights_sprint" {
	"b_root" 0
	"b_wpn" 1
	"b_wpn_bolt" 0
	"b_wpn_eject" 0
	"b_wpn_fireselect" 0
	"b_wpn_magrelease" 0
	"b_wpn_spec_2" 0
	"b_wpn_trigger" 0
	"b_ch_r_clavical" 1
	"b_ch_l_clavical" 1
	"b_ch_r_upperarm" 1
	"b_ch_l_upperarm" 1
	"b_ch_r_forearm" 1
	"b_ch_l_forearm" 1
	"b_ch_r_hand" 1
	"b_ch_l_hand" 1
	"b_wpn_chargehandle" 0
	"b_wpn_mag" 0
	"b_wpn_mag_b1" 0
	"b_wpn_mag_b2" 0
	"b_wpn_ring_1" 0
	"b_wpn_ring_2" 0
	"b_wpn_optic" 0
	"b_camera" 1
}

//IDLE MACRO
$definemacro macro_idlesequence \\
"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\fal\anims\an_1p_fal_b_idle.smd"

$sequence "idle" {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\fal\anims\an_1p_fal_b_idle.smd"
}

//$sequence "seq_gen_idle" "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_Idle.smd"

//FIRE
$animation a_ik_fire_1 "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_Fire.smd"
$sequence "delta_ik_fire_1" delta a_ik_fire_1 weightlist "weights_wpnonly"

$animation a_ik_fire_2 "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_Fire2.smd"
$sequence "delta_ik_fire_2" delta a_ik_fire_2 weightlist "weights_wpnonly"

$animation a_ik_fire_3 "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_Fire3.smd"
$sequence "delta_ik_fire_3" delta a_ik_fire_3 weightlist "weights_wpnonly"

$animation a_ik_dryfire "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_Dryfire.smd"
$sequence "delta_ik_dryfire" delta a_ik_dryfire weightlist "weights_wpnonly"

//FIRE IRON
$animation a_ik_fire_1_iron "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_IRON_Fire.smd"
$sequence "delta_ik_fire_1_iron" delta a_ik_fire_1_iron weightlist "weights_wpnonly"

$animation a_ik_fire_2_iron "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_IRON_Fire2.smd"
$sequence "delta_ik_fire_2_iron" delta a_ik_fire_2_iron weightlist "weights_wpnonly"

$animation a_ik_fire_3_iron "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_IRON_Fire3.smd"
$sequence "delta_ik_fire_3_iron" delta a_ik_fire_3_iron weightlist "weights_wpnonly"

//SPRINT
$animation a_ik_sprint "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_Sprint_Alt.smd" subtract "idle" 0
$sequence "delta_ik_sprint" delta a_ik_sprint weightlist "weights_sprint" loop fixuploop -1 1

$animation a_ik_hrd "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_Sprint_Hardcore.smd" subtract "idle" 0
$sequence "delta_ik_hrd" delta a_ik_hrd weightlist "weights_sprint" loop fixuploop -1 1

//DRAW
$animation a_ik_draw "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_Draw.smd"
$sequence "delta_ik_draw" delta a_ik_draw weightlist "weights_wpnonly"

//HOLSTER
$animation a_ik_holster "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_rif\anims\AN_1P_GEN_RIF_B_Holster.smd"
$sequence "delta_ik_holster" delta a_ik_holster weightlist "weights_wpnonly"	

//OTHER
$sequence delta_boltback delta {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\FAL\anims\AN_1P_Fal_B_Fire_Bolt.smd"
	weightlist "weights_boltback"
}

$sequence delta_trigger delta {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\FAL\anims\AN_1P_Fal_B_Fire_Trigger.smd"
	weightlist "weights_trigger"
}

//EMPTY LAYER --USE THIS IF WEAPON HAVE SLIDE/BOLT STOP (also blendlayer "empty_layer")

$animation "a_idle_empty" "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\m4a1\anims\AN_1P_M4A1_B_Idle_Empty.smd" frames 0 1

$sequence "empty_layer" delta {
	a_idle_empty
	weightlist "weights_boltback"
}

//ANIMS
$sequence "base_idle" {
	$macro_idlesequence
	activity "ACT_VM_IDLE" 1
	loop
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "empty_idle" {
	$macro_idlesequence
	activity "ACT_VM_IDLE_EMPTY" 1
	addlayer "empty_layer"
	loop
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_sprint" {
	$macro_idlesequence
	activity "ACT_VM_SPRINT" 1
	fadein 0.2
	fadeout 0.2
	addlayer "delta_ik_sprint"
	loop
	frames 0 69
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "empty_sprint" {
	$macro_idlesequence
	activity "ACT_VM_SPRINT_EMPTY" 1
	addlayer "delta_ik_sprint"
	addlayer "empty_layer"
	loop
	frames 0 69
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_sprint_hrd" {
	$macro_idlesequence
	activity "ACT_VM_SPRINT_HRD" 1
	fadein 0.2
	fadeout 0.2
	addlayer "delta_ik_hrd"
	loop
	frames 0 88
	fps 30
	ikrule rhand touch "b_wpn" usesource
//	ikrule lhand touch "b_wpn" usesource
}

$sequence "empty_sprint_hrd" {
	$macro_idlesequence
	activity "ACT_VM_SPRINT_HRD_EMPTY" 1
	addlayer "delta_ik_hrd"
	addlayer "empty_layer"
	loop
	frames 0 88
	fps 30
	ikrule rhand touch "b_wpn" usesource
//	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_draw" {
	$macro_idlesequence
	frames 0 41
	activity "ACT_VM_DRAW" 1
	addlayer "delta_ik_draw"
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "empty_draw" {
	$macro_idlesequence
	frames 0 41
	activity "ACT_VM_DRAW_EMPTY" 1
	addlayer "delta_ik_draw"
	addlayer "empty_layer"
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
	frames 0 20
	activity "ACT_VM_HOLSTER_EMPTY" 1
	addlayer "delta_ik_holster"
	addlayer "empty_layer"
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_fire_1" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK" 1
	addlayer "delta_ik_fire_1"
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_boltback" 1 2 3 4
	snap
	frames 0 41
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_fire_2" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK" 1
	addlayer "delta_ik_fire_2"
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_boltback" 1 2 3 4
	snap
	frames 0 41
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_fire_3" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK" 1
	addlayer "delta_ik_fire_3"
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_boltback" 1 2 3 4
	snap
	frames 0 41
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "iron_fire_1" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK_1" 1
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_boltback" 1 2 3 4
	snap
	addlayer "delta_ik_fire_1_iron"
	frames 0 41
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "iron_fire_2" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK_1" 1
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_boltback" 1 2 3 4
	snap
	addlayer "delta_ik_fire_2_iron"
	frames 0 41
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "iron_fire_3" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK_1" 1
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_boltback" 1 2 3 4
	snap
	addlayer "delta_ik_fire_3_iron"
	frames 0 41
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_dryfire" {
	$macro_idlesequence
	activity "ACT_VM_DRYFIRE" 1
	addlayer "delta_ik_dryfire"
	blendlayer "delta_trigger" 0 1 10 10
	addlayer "empty_layer"
	snap
	frames 0 21
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_fire_last" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK_EMPTY" 1
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_boltback" 1 2 3 4
	blendlayer "empty_layer" 1 2 100 100
	snap
	addlayer "delta_ik_fire_3"
	frames 0 41
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "iron_fire_last" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK_2" 1
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_boltback" 1 2 3 4
	blendlayer "empty_layer" 1 2 100 100
	snap
	addlayer "delta_ik_fire_3_iron"
	frames 0 41
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_reload" {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\fal\anims\an_1p_fal_b_reload.smd"
	activity "ACT_VM_RELOAD" 1
	fps 30
	ikrule rhand touch "b_wpn" usesource
}

$sequence "base_reloadempty" {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\fal\anims\an_1p_fal_b_reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	fps 30
	ikrule rhand touch "b_wpn" usesource
}

$sequence "base_reload_speed" {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\fal\anims\an_1p_fal_b_reload_speed.smd"
	activity "ACT_VM_RELOAD_SPEED" 1
	fps 30
	ikrule rhand touch "b_wpn" usesource
}

$sequence "base_reloadempty_speed" {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\fal\anims\an_1p_fal_b_reload_empty_speed.smd"
	activity "ACT_VM_RELOAD_EMPTY_SPEED" 1
	fps 30
	ikrule rhand touch "b_wpn" usesource
}

$sequence "base_ready" {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\fal\anims\an_1p_fal_b_ready.smd"
	activity "ACT_VM_DRAW_DEPLOYED" 1
	fps 30
	snap
	ikrule rhand touch "b_wpn" usesource
}

//DO NOT USE

//$include "C:\Users\herjenger\Desktop\Sandstorm Reloaded compile sources\Sandstorm-Gmod-Compile-Sources\gmod_bones_follow_sandstorm.qci"