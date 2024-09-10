// Created by Crowbar 0.74

$modelname "weapons\c_sr_l105.mdl"

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

$include "C:\Users\herjenger\Desktop\Sandstorm Reloaded compile sources\Sandstorm-Gmod-Compile-Sources\gmod_bones_follow_sandstorm.qci"

$include "C:\Users\herjenger\Desktop\Sandstorm Reloaded compile sources\Sandstorm-Gmod-Compile-Sources\L105_P226\2nd_stage_compile.qci"
