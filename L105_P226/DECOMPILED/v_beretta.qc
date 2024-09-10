// Created by Crowbar 0.74

$modelname "weapons\v_beretta.mdl"

$bodygroup "Weapon"
{
	studio "SKM_1P_P226_GMOD.smd"
}
$bodygroup "mag"
{
	studio "sandstorm_source_fil.smd"
}
$bodygroup "Belt"
{
	blank
	studio "sandstorm_source_fil_2.smd"
	studio "sandstorm_source_fil_3.smd"
	studio "sandstorm_source_fil_4.smd"
}

$include "v_beretta_lod.qci"

$surfaceprop "default"

$contents "solid"

$illumposition -0.177 -9.605 -10.34

$cdmaterials "models\weapons\sandstorm_reloaded\"

$attachment "muzzle" "b_wpn_muzzle" 0 0 0 rotate 0 0 0
$attachment "shell" "b_wpn_eject" 0 0 0 rotate 0 0 0
$attachment "camera" "b_camera" 0 0 0 rotate 0 -90 0

// $include "v_beretta_box.qci"

$include "v_beretta_bone.qci"

$include "v_beretta_animation.qci"

$include "C:\Users\herjenger\Desktop\Sandstorm Reloaded compile sources\Pistol universal compile\gmod_bones_follow_sandstorm.qci"

$include "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\unreal_scale.qci"

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
	"b_camera" 1
}

$definemacro macro_idlesequence \\
"C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\weapons\p226\anims\an_1p_226_b_idle.smd"

$animation a_ik_inspect "C:\Users\herjenger\AppData\Documents\GitHub\sandstorm_source_files\release\animations\gen_pist\anims\an_1p_gen_pist_b_fidget.smd"
$sequence "delta_ik_inspect" delta a_ik_inspect weightlist "weights_wpnonly"

$sequence "macro" {
	$macro_idlesequence
}

$sequence "base_inspect" {
	$macro_idlesequence
	activity "ACT_VM_FIDGET" 1
	addlayer "delta_ik_inspect"
	fadein 0.2
	fadeout 0.2
	frames 0 121
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}

$sequence "empty_inspect" {
	$macro_idlesequence
	activity "ACT_CROSSBOW_FIDGET_UNLOADED" 1
	addlayer "delta_ik_inspect"
	addlayer "empty_layer"
	fadein 0.2
	fadeout 0.2
	frames 0 121
	fps 30
	ikrule rhand touch "b_wpn" usesource
	ikrule lhand touch "b_wpn" usesource
}
