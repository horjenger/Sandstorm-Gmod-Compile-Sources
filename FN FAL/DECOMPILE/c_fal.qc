// Created by Crowbar 0.74

$modelname "weapons\c_FAL.mdl"

$bodygroup "weapon"
{
	studio "sandstorm_source_fil.smd"
}
$bodygroup "mag"
{
	studio "sandstorm_source_fil_2.smd"
}

$include "c_fal_lod.qci"

$surfaceprop "default"

$contents "solid"

$illumposition 0.595 13.598 -10.91

$cdmaterials "models\weapons\sandstorm_reloaded\"

$attachment "muzzle" "b_wpn_muzzle" 0 0 0 rotate 0 0 0
$attachment "shell" "b_wpn_eject" 0 0 0 rotate 0 0 0
$attachment "camera" "b_camera" 0 0 0 rotate 0 -90 0

// $include "c_fal_box.qci"

$include "c_fal_bone.qci"

$include "c_fal_animation.qci"

$include "C:\Users\herjenger\Desktop\Sandstorm Reloaded compile sources\Sandstorm-Gmod-Compile-Sources\gmod_bones_follow_sandstorm.qci"

$include "C:\Users\herjenger\Desktop\Sandstorm Reloaded compile sources\Sandstorm-Gmod-Compile-Sources\FN FAL\2nd_stage_compile.qci"