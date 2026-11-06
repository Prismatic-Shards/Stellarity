# ste_cos:fresh_visual/heart_absorb_init

kill @e[type=marker,tag=ste_cos.tornado_marker]
kill @e[type=marker,tag=ste_cos.shockwave]
kill @e[type=marker,tag=ste_cos.tether_head]
tag @e[type=end_crystal] remove ste_cos.tether_connected

tag @e[type=marker,tag=ste_cos.respawn_heart] add ste_cos.heart_absorbing

execute as @e[type=marker,tag=ste_cos.respawn_heart,limit=1] at @s run summon marker ~1.5 ~ ~ {Tags:["ste_cos.absorb_tendril","ste_cos.visual_marker"]}
execute as @e[type=marker,tag=ste_cos.respawn_heart,limit=1] at @s run summon marker ~-1.5 ~ ~ {Tags:["ste_cos.absorb_tendril","ste_cos.visual_marker"]}
execute as @e[type=marker,tag=ste_cos.respawn_heart,limit=1] at @s run summon marker ~ ~ ~1.5 {Tags:["ste_cos.absorb_tendril","ste_cos.visual_marker"]}
execute as @e[type=marker,tag=ste_cos.respawn_heart,limit=1] at @s run summon marker ~ ~ ~-1.5 {Tags:["ste_cos.absorb_tendril","ste_cos.visual_marker"]}

scoreboard players set #absorb_time ste_cos.timer 0
