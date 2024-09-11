$include "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\unreal_scale.qci"

$modelname "weapons\v_beretta.mdl"

$bodygroup "Weapon"
{
	studio "SKM_1P_P226_GMOD.smd"
}
$bodygroup "mag"
{
	studio "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\upgrades\magazine\SKM_1P_L105_Magazine_15.smd"
}
$bodygroup "Belt"
{
	blank
	studio "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\p226\SKM_1P_P226_Bullets_1.smd"
	studio "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\p226\SKM_1P_P226_Bullets_2.smd"
	studio "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\p226\SKM_1P_P226_Bullets_3.smd"
}

$surfaceprop "default"
$contents "solid"

$attachment "muzzle" "b_wpn_muzzle" 0 0 0 rotate 0 0 0
$attachment "shell" "b_wpn_eject" 0 0 0 rotate 0 0 0
$attachment "camera" "b_camera" 0 0 0 rotate 0 -90 0

$cdmaterials "models\weapons\sandstorm_reloaded\"

$include "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\p226\v_p226_bones.qci"

$bonemerge "b_root"
$bonemerge "b_ch_middle"
$bonemerge "b_ch_spine1"
$bonemerge "b_ch_spine2"
$bonemerge "b_ch_l_clavical"
$bonemerge "b_ch_l_upperarm"
$bonemerge "b_ch_l_forearm"
$bonemerge "b_ch_l_forearm_twist1"
$bonemerge "b_ch_l_forearm_twist2"
$bonemerge "b_ch_l_forearm_twist3"
$bonemerge "b_ch_l_forearm_twist4"
$bonemerge "b_ch_l_forearm_twist5"
$bonemerge "b_ch_l_forearm_twist6"
$bonemerge "b_ch_l_forearm_twist7"
$bonemerge "b_ch_l_hand"
$bonemerge "b_ch_l_finger_00"
$bonemerge "b_ch_l_finger_01"
$bonemerge "b_ch_l_finger_02"
$bonemerge "b_ch_l_finger_40"
$bonemerge "b_ch_l_finger_41"
$bonemerge "b_ch_l_finger_42"
$bonemerge "b_ch_l_finger_20"
$bonemerge "b_ch_l_finger_21"
$bonemerge "b_ch_l_finger_22"
$bonemerge "b_ch_l_finger_30"
$bonemerge "b_ch_l_finger_31"
$bonemerge "b_ch_l_finger_32"
$bonemerge "b_ch_l_finger_10"
$bonemerge "b_ch_l_finger_11"
$bonemerge "b_ch_l_finger_12"
$bonemerge "b_ch_r_clavical"
$bonemerge "b_ch_r_upperarm"
$bonemerge "b_ch_r_forearm"
$bonemerge "b_ch_r_forearm_twist1"
$bonemerge "b_ch_r_forearm_twist2"
$bonemerge "b_ch_r_forearm_twist3"
$bonemerge "b_ch_r_forearm_twist4"
$bonemerge "b_ch_r_forearm_twist5"
$bonemerge "b_ch_r_forearm_twist6"
$bonemerge "b_ch_r_forearm_twist7"
$bonemerge "b_ch_r_hand"
$bonemerge "b_ch_r_finger_00"
$bonemerge "b_ch_r_finger_01"
$bonemerge "b_ch_r_finger_02"
$bonemerge "b_ch_r_finger_10"
$bonemerge "b_ch_r_finger_11"
$bonemerge "b_ch_r_finger_12"
$bonemerge "b_ch_r_finger_20"
$bonemerge "b_ch_r_finger_21"
$bonemerge "b_ch_r_finger_22"
$bonemerge "b_ch_r_finger_30"
$bonemerge "b_ch_r_finger_31"
$bonemerge "b_ch_r_finger_32"
$bonemerge "b_ch_r_finger_40"
$bonemerge "b_ch_r_finger_41"
$bonemerge "b_ch_r_finger_42"
$bonemerge "b_wpn_laser"
$bonemerge "b_wpn_flash"
$bonemerge "b_wpn_suppressor"

$cbox 0 0 0 0 0 0
$bbox -20.432 -2.695 -25.946 11.584 8.836 2.803

$include "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\sandstorm_deltas_macros.qci"

$include "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\sandstorm_hand_ik.qci"

$weightlist "weights_empty" {
	"b_root" 0
	"b_wpn" 0
	"b_wpn_barrel" 1
	"b_wpn_slide" 1
	"b_wpn_sliderelease" 1
	"b_wpn_mag_b1" 0
	"b_wpn_mag_b2" 0
}

$weightlist "weights_wpnonly" {
	"b_root" 0
	"b_wpn" 1
	"b_wpn_eject" 0
	"b_wpn_muzzle" 0
	"b_wpn_trigger" 0
	"b_wpn_mag" 0
	"b_wpn_mag_b1" 0
	"b_wpn_mag_b2" 0
	"b_wpn_barrel" 0
	"b_wpn_slide" 0
	"b_wpn_sliderelease" 0
	"b_wpn_hammer" 0
}

$weightlist "weights_slideback" {
	"b_root" 0
	"b_wpn" 0
	"b_wpn_barrel" 1
	"b_wpn_slide" 1
	"b_wpn_hammer" 0
}

$weightlist "weights_trigger" {
	"b_root" 0
	"b_wpn" 0
	"b_wpn_trigger" 0.6
	"b_ch_r_finger_11" 0.6
	"b_wpn_hammer" 0
}

$weightlist "weights_sprint" {
	"b_root" 0
	"b_wpn" 1
	"b_wpn_eject" 0
	"b_wpn_muzzle" 0
	"b_wpn_trigger" 0
	"b_wpn_mag" 0
	"b_wpn_mag_b1" 0
	"b_wpn_mag_b2" 0
	"b_ch_r_clavical" 1
	"b_ch_l_clavical" 1
	"b_ch_r_upperarm" 1
	"b_ch_l_upperarm" 1
	"b_ch_r_forearm" 1
	"b_ch_l_forearm" 1
	"b_ch_r_hand" 1
	"b_ch_l_hand" 1
	"b_wpn_barrel" 0
	"b_wpn_slide" 0
	"b_wpn_sliderelease" 0
	"b_wpn_hammer" 0
}

$weightlist "weights_dryfire" {
	"b_root" 0
	"b_ch_middle" 0
	"b_ch_spine1" 0
	"b_ch_spine2" 0
	"b_ch_l_clavical" 0
	"b_ch_l_upperarm" 1
	"b_ch_l_forearm" 1
	"b_ch_l_forearm_twist1" 0
	"b_ch_l_forearm_twist2" 0
	"b_ch_l_hand" 0.5
	"b_ch_l_finger_00" 0
	"b_ch_l_finger_01" 0
	"b_ch_l_finger_02" 0
	"b_ch_l_finger_40" 0
	"b_ch_l_finger_41" 0
	"b_ch_l_finger_42" 0
	"b_ch_l_finger_20" 0
	"b_ch_l_finger_21" 0
	"b_ch_l_finger_22" 0
	"b_ch_l_finger_30" 0
	"b_ch_l_finger_31" 0
	"b_ch_l_finger_32" 0
	"b_ch_l_finger_10" 0
	"b_ch_l_finger_11" 0
	"b_ch_l_finger_12" 0
	"b_ch_r_clavical" 0
	"b_ch_r_upperarm" 1
	"b_ch_r_forearm" 1
	"b_ch_r_forearm_twist1" 0
	"b_ch_r_forearm_twist2" 0
	"b_ch_r_hand" 0.5
	"b_ch_r_finger_00" 0
	"b_ch_r_finger_01" 0
	"b_ch_r_finger_02" 0
	"b_ch_r_finger_10" 0
	"b_ch_r_finger_11" 0
	"b_ch_r_finger_12" 0
	"b_ch_r_finger_20" 0
	"b_ch_r_finger_21" 0
	"b_ch_r_finger_22" 0
	"b_ch_r_finger_30" 0
	"b_ch_r_finger_31" 0
	"b_ch_r_finger_32" 0
	"b_ch_r_finger_40" 0
	"b_ch_r_finger_41" 0
	"b_ch_r_finger_42" 0
	"b_wpn" 0.5
	"b_wpn_eject" 0
	"b_wpn_mag" 0
	"b_wpn_mag_b2" 0
	"b_wpn_mag_follow" 0
	"b_wpn_mag_b1" 0
	"b_wpn_muzzle" 0
	"b_wpn_trigger" 0
	"b_wpn_barrel" 0
	"b_wpn_slide" 0
	"b_wpn_sliderelease" 0
	"b_wpn_hammer" 0
}

$weightlist "weights_draw" {
	"b_root" 0
	"b_ch_middle" 0
	"b_ch_spine1" 0
	"b_ch_spine2" 0
	"b_ch_l_clavical" 0
	"b_ch_l_upperarm" 1
	"b_ch_l_forearm" 1
	"b_ch_l_hand" 1
	"b_ch_r_clavical" 0
	"b_ch_r_upperarm" 1
	"b_ch_r_forearm" 1
	"b_ch_r_hand" 0
	"b_ch_r_finger_10" 0
	"b_ch_r_finger_11" 0
	"b_ch_r_finger_12" 0
	"b_ch_r_finger_20" 0
	"b_ch_r_finger_21" 0
	"b_ch_r_finger_22" 0
	"b_ch_r_finger_30" 0
	"b_ch_r_finger_31" 0
	"b_ch_r_finger_32" 0
	"b_ch_r_finger_40" 0
	"b_ch_r_finger_41" 0
	"b_ch_r_finger_42" 0
	"b_wpn" 1
	"b_camera" 1
	"b_wpn_eject" 0
	"b_wpn_mag" 0
	"b_wpn_mag_b2" 0
	"b_wpn_mag_follow" 0
	"b_wpn_mag_b1" 0
	"b_wpn_muzzle" 0
	"b_wpn_trigger" 0
	"b_wpn_barrel" 0
	"b_wpn_slide" 0
	"b_wpn_sliderelease" 0
	"b_wpn_hammer" 0
}

$weightlist "weights_melee" {
	"b_root" 0
	"b_wpn" 1
	"b_wpn_eject" 0
	"b_wpn_muzzle" 0
	"b_wpn_trigger" 0
	"b_wpn_mag" 0
	"b_wpn_mag_b1" 0
	"b_wpn_mag_b2" 0
	"b_ch_r_clavical" 1
	"b_ch_l_clavical" 1
	"b_ch_r_upperarm" 1
	"b_ch_l_upperarm" 1
	"b_ch_r_forearm" 1
	"b_ch_l_forearm" 1
	"b_ch_r_finger_10" 0
	"b_ch_r_finger_11" 0
	"b_ch_r_finger_12" 0
	"b_ch_r_finger_20" 0
	"b_ch_r_finger_21" 0
	"b_ch_r_finger_22" 0
	"b_ch_r_finger_30" 0
	"b_ch_r_finger_31" 0
	"b_ch_r_finger_32" 0
	"b_ch_r_finger_40" 0
	"b_ch_r_finger_41" 0
	"b_ch_r_finger_42" 0
	"b_ch_r_hand" 0
	"b_ch_l_hand" 1
	"b_wpn_barrel" 0
	"b_wpn_slide" 0
	"b_wpn_sliderelease" 0
	"b_wpn_hammer" 0
	"b_camera" 1
}

$weightlist "weights_holster" {
	"b_root" 0
	"b_ch_middle" 0
	"b_ch_spine1" 0
	"b_ch_spine2" 0
	"b_ch_l_clavical" 0
	"b_ch_l_upperarm" 1
	"b_ch_l_forearm" 1
	"b_ch_l_hand" 1
	"b_ch_r_clavical" 0
	"b_ch_r_upperarm" 1
	"b_ch_r_forearm" 1
	"b_ch_r_hand" 0
	"b_ch_r_finger_10" 0
	"b_ch_r_finger_11" 0
	"b_ch_r_finger_12" 0
	"b_ch_r_finger_20" 0
	"b_ch_r_finger_21" 0
	"b_ch_r_finger_22" 0
	"b_ch_r_finger_30" 0
	"b_ch_r_finger_31" 0
	"b_ch_r_finger_32" 0
	"b_ch_r_finger_40" 0
	"b_ch_r_finger_41" 0
	"b_ch_r_finger_42" 0
	"b_wpn" 1
	"b_wpn_eject" 0
	"b_wpn_mag" 0
	"b_wpn_mag_b2" 0
	"b_wpn_mag_follow" 0
	"b_wpn_mag_b1" 0
	"b_wpn_muzzle" 0
	"b_wpn_trigger" 0
	"b_wpn_barrel" 0
	"b_wpn_slide" 0
	"b_wpn_sliderelease" 0
	"b_wpn_hammer" 0
	"b_camera" 1
}

$weightlist "weights_hammer_fire" {
	"b_root" 0
	"b_wpn" 0
	"b_wpn_hammer" 1
}

//IDLE MACRO
$definemacro macro_idlesequence \\
"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\p226\anims\an_1p_226_b_idle.smd"

$sequence "idle" {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\p226\anims\an_1p_226_b_idle.smd"
}

$sequence "seq_gen_idle" "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_pist\anims\an_1p_gen_pist_b_idle.smd"

//FIRE
$animation a_ik_fire_1 "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_pist\anims\AN_1P_GEN_PIST_B_Fire.smd"
$sequence "delta_ik_fire_1" delta a_ik_fire_1 weightlist "weights_wpnonly"

$animation a_ik_fire_2 "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_pist\anims\AN_1P_GEN_PIST_B_Fire_2.smd"
$sequence "delta_ik_fire_2" delta a_ik_fire_2 weightlist "weights_wpnonly"

$animation a_ik_fire_3 "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_pist\anims\AN_1P_GEN_PIST_B_Fire_3.smd"
$sequence "delta_ik_fire_3" delta a_ik_fire_3 weightlist "weights_wpnonly"

$animation a_ik_dryfire "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_pist\anims\AN_1P_GEN_PIST_B_Dryfire.smd"
$sequence "delta_ik_dryfire" delta a_ik_dryfire weightlist "weights_wpnonly"

//FIRE IRON
$animation a_ik_fire_1_iron "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_pist\anims\an_1p_gen_pist_b_iron_fire_alt.smd"
$sequence "delta_ik_fire_1_iron" delta a_ik_fire_1_iron weightlist "weights_wpnonly"

$animation a_ik_fire_2_iron "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_pist\anims\an_1p_gen_pist_b_iron_fire_alt2.smd"
$sequence "delta_ik_fire_2_iron" delta a_ik_fire_2_iron weightlist "weights_wpnonly"

$animation a_ik_fire_3_iron "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_pist\anims\an_1p_gen_pist_b_iron_fire_alt3.smd"
$sequence "delta_ik_fire_3_iron" delta a_ik_fire_3_iron weightlist "weights_wpnonly"

//SPRINT
$animation a_ik_sprint "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_pist\anims\AN_1P_GEN_PIST_M_Sprint.smd" subtract "idle" 0
$sequence "delta_ik_sprint" delta a_ik_sprint weightlist "weights_sprint" loop fixuploop -1 1

//DRAW
$sequence "delta_draw" predelta {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_pist\anims\AN_1P_GEN_PIST_B_Draw.smd"
	weightlist "weights_draw"
	hidden
}

//HOLSTER
$sequence "delta_holster" predelta {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_pist\anims\AN_1P_GEN_PIST_B_Holster.smd"
	weightlist "weights_holster"
	hidden
}

//MELEE
$sequence "delta_melee" predelta {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_pist\anims\an_1p_gen_pist_b_melee.smd"
	weightlist "weights_melee"
	hidden
}

//OTHER
$sequence delta_slideback delta {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\p226\anims\an_1p_226_b_fire_slide.smd"
	weightlist "weights_slideback"
}

$sequence delta_trigger delta {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\p226\anims\an_1p_226_b_fire_trigger.smd"
	weightlist "weights_trigger"
}

$animation "a_delta_hammer_fire" "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\p226\anims\an_1p_226_b_ready.smd" frames 0 0 subtract "idle" 0

$sequence "delta_hammer_fire" delta {
	a_delta_hammer_fire
	weightlist "weights_hammer_fire"
}

$animation "a_idle_empty" "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\p226\anims\an_1p_226_b_idle_empty.smd" frames 0 1

$sequence "empty_layer" delta {
	a_idle_empty
	weightlist "weights_empty"
}

//ANIMS
$sequence "base_idle" {
	$macro_idlesequence
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	loop
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "empty_idle" {
	$macro_idlesequence
	activity "ACT_VM_IDLE_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	addlayer "empty_layer"
	loop
	fps 30
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
	frames 0 30
	fps 30
	ikrule rhand touch "b_wpn" usesource
	// ikrule lhand touch "b_wpn" usesource
}

$sequence "empty_sprint" {
	$macro_idlesequence
	activity "ACT_VM_SPRINT_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	addlayer "delta_ik_sprint"
	addlayer "empty_layer"
	loop
	frames 0 26
	fps 30
	ikrule rhand touch "b_wpn" usesource
	// ikrule lhand touch "b_wpn" usesource
}

$sequence "base_draw" {
	$macro_idlesequence
	frames 0 35
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	addlayer "delta_draw"
	fps 30
	ikrule rhand touch "b_wpn" usesource
}

$sequence "empty_draw" {
	$macro_idlesequence
	frames 0 35
	activity "ACT_VM_DRAW_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	addlayer "delta_draw"
	addlayer "empty_layer"
	fps 30
	ikrule rhand touch "b_wpn" usesource
}

$sequence "base_holster" {
	$macro_idlesequence
	frames 0 19
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	addlayer "delta_holster"
	fps 30
	ikrule rhand touch "b_wpn" usesource
}

$sequence "empty_holster" {
	$macro_idlesequence
	frames 0 19
	activity "ACT_VM_HOLSTER_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	addlayer "delta_holster"
	addlayer "empty_layer"
	fps 30
	ikrule rhand touch "b_wpn" usesource
}

$sequence "base_melee" {
	$macro_idlesequence
	frames 0 46
	activity "ACT_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	addlayer "delta_melee"
	fps 30
	ikrule rhand touch "b_wpn" usesource
}

$sequence "empty_melee" {
	$macro_idlesequence
	frames 0 46
	activity "ACT_VM_MISSCENTER" 1
	fadein 0.2
	fadeout 0.2
	addlayer "delta_melee"
	addlayer "empty_layer"
	fps 30
	ikrule rhand touch "b_wpn" usesource
}

$sequence "base_fire_1" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	addlayer "delta_ik_fire_1"
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_slideback" 1 2 3 4
	blendlayer "delta_hammer_fire" -1 0.75 1 1.5
	snap
	frames 0 40
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_fire_2" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	addlayer "delta_ik_fire_2"
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_slideback" 1 2 3 4
	blendlayer "delta_hammer_fire" -1 0.75 1 1.5
	snap
	frames 0 40
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_fire_3" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	addlayer "delta_ik_fire_3"
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_slideback" 1 2 3 4
	blendlayer "delta_hammer_fire" -1 0.75 1 1.5
	snap
	frames 0 40
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "iron_fire_1" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK_1" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_slideback" 1 2 3 4
	blendlayer "delta_hammer_fire" -1 0.75 1 1.5
	snap
	addlayer "delta_ik_fire_1_iron"
	frames 0 30
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "iron_fire_2" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK_1" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_slideback" 1 2 3 4
	blendlayer "delta_hammer_fire" -1 0.75 1 1.5
	snap
	addlayer "delta_ik_fire_2_iron"
	frames 0 30
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "iron_fire_3" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK_1" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_slideback" 1 2 3 4
	blendlayer "delta_hammer_fire" -1 0.75 1 1.5
	snap
	addlayer "delta_ik_fire_3_iron"
	frames 0 30
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_dryfire" {
	$macro_idlesequence
	activity "ACT_VM_DRYFIRE" 1
	fadein 0.2
	fadeout 0.2
	addlayer "delta_ik_dryfire"
	blendlayer "delta_trigger" 0 1 10 10
	addlayer "empty_layer"
	snap
	frames 0 20
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_fire_last" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "empty_layer" 1 2 100 100
	snap
	addlayer "delta_ik_fire_3"
	frames 0 40
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "iron_fire_last" {
	$macro_idlesequence
	activity "ACT_VM_PRIMARYATTACK_2" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "empty_layer" 1 2 100 100
	snap
	addlayer "delta_ik_fire_3_iron"
	frames 0 40
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "base_reload" {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\p226\anims\an_1p_226_b_reload.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule rhand touch "b_wpn" usesource
}

$sequence "base_reloadempty" {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\p226\anims\an_1p_226_b_reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule rhand touch "b_wpn" usesource
}

$sequence "base_reload_speed" {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\p226\anims\an_1p_226_b_reload_speed.smd"
	activity "ACT_VM_RELOAD_SPEED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule rhand touch "b_wpn" usesource
}

$sequence "base_reloadempty_speed" {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\p226\anims\an_1p_226_b_reload_empty_speed.smd"
	activity "ACT_VM_RELOAD_EMPTY_SPEED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule rhand touch "b_wpn" usesource
}

$sequence "base_ready" {
	"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\p226\anims\an_1p_226_b_ready.smd"
	activity "ACT_VM_DRAW_DEPLOYED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	snap
	ikrule rhand touch "b_wpn" usesource
}

//DO NOT USE

//$include "C:\Users\herjenger\Desktop\Sandstorm Reloaded compile sources\Sandstorm-Gmod-Compile-Sources\Pistol universal compile\gmod_bones_follow_sandstorm.qci"