// Created by Crowbar 0.74

$modelname "weapons\c_ak74.mdl"

$bodygroup "weapon"
{
	studio "sandstorm_source_fil.smd"
}

$include "c_ak74_lod.qci"

$surfaceprop "default"

$contents "solid"

$illumposition -0.221 -8.281 -10.895

$cdmaterials "models\weapons\sandstorm_reloaded\"

$attachment "muzzle" "b_wpn_muzzle" 0 0 0 rotate 0 0 0
$attachment "shell" "b_wpn_eject" 0 0 0 rotate 0 0 0
$attachment "camera" "b_camera" 0 0 0 rotate 0 -90 0

// $include "c_ak74_box.qci"

$include "c_ak74_bone.qci"

$include "c_ak74_animation.qci"

$include "C:\Users\herjenger\Desktop\Sandstorm Reloaded compile sources\Sandstorm-Gmod-Compile-Sources\gmod_bones_follow_sandstorm.qci"

$include "C:\Users\herjenger\Desktop\Sandstorm Reloaded Compile Sources\Sandstorm-Gmod-Compile-Sources\test\2nd_stage_compile.qci"
