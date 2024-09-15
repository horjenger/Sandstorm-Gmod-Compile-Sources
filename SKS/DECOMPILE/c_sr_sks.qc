// Created by Crowbar 0.74

$modelname "weapons\c_sr_sks.mdl"

$bodygroup "Weapon"
{
	studio "sandstorm_source_fil.smd"
}
$bodygroup "Belt"
{
	studio "sandstorm_source_fil_2.smd"
	studio "sandstorm_source_fil_3.smd"
	studio "sandstorm_source_fil_4.smd"
	studio "sandstorm_source_fil_5.smd"
}
$bodygroup "mag"
{
	studio "sandstorm_source_fil_6.smd"
	studio "sandstorm_source_fil_7.smd"
}
$bodygroup "mag2_bullets"
{
	studio "sandstorm_source_fil_8.smd"
}

$include "c_sr_sks_lod.qci"

$surfaceprop "default"

$contents "solid"

$illumposition 0.552 13.267 -10.895

$cdmaterials "models\weapons\sandstorm_reloaded\"

$attachment "muzzle" "b_wpn_muzzle" 0 0 0 rotate 0 0 0
$attachment "shell" "b_wpn_eject" 0 0 0 rotate 0 0 0
$attachment "camera" "b_camera" 0 0 0 rotate 0 -90 0

// $include "c_sr_sks_box.qci"

$include "c_sr_sks_bone.qci"

$include "c_sr_sks_animation.qci"

$include "C:\Users\herjenger\Desktop\Sandstorm Reloaded compile sources\Sandstorm-Gmod-Compile-Sources\gmod_bones_follow_sandstorm.qci"

$include "C:\Users\herjenger\Desktop\Sandstorm Reloaded compile sources\Sandstorm-Gmod-Compile-Sources\SKS\2nd_stage_compile.qci"
