# ste_cos:fresh_visual/shockwave_spawn_markers

scoreboard players add #shockwave_count ste_cos.timer 1

execute rotated ~10 0 run summon marker ~ ~ ~ {Tags:["ste_cos.shockwave","ste_cos.visual_marker","ste_cos.temp_shockwave"]}
execute rotated ~10 0 as @e[type=marker,tag=ste_cos.temp_shockwave,limit=1] run tp @s ~ ~ ~ ~ 0
tag @e[type=marker,tag=ste_cos.temp_shockwave] remove ste_cos.temp_shockwave

execute unless score #shockwave_count ste_cos.timer matches 36.. rotated ~10 0 run function ste_cos:fresh_visual/shockwave_spawn_markers
execute if score #shockwave_count ste_cos.timer matches 36.. run scoreboard players reset #shockwave_count ste_cos.timer
