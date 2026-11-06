# ste_cos:fresh_visual/heart_absorb_step

execute if entity @e[type=ender_dragon,tag=stellarity.ender_dragon,limit=1] facing entity @e[type=ender_dragon,tag=stellarity.ender_dragon,limit=1] eyes run tp @s ^ ^ ^2.4

execute if entity @s[tag=ste_cos.heart_absorbing] run tp @e[type=block_display,tag=project_root] @s

execute if entity @s[tag=ste_cos.heart_absorbing] if entity @e[type=ender_dragon,tag=stellarity.ender_dragon,distance=..12.0,limit=1] run function ste_cos:fresh_visual/heart_shrink
execute if entity @s[tag=ste_cos.heart_absorbing] if score #absorb_time ste_cos.timer matches 15.. run function ste_cos:fresh_visual/heart_shrink

execute if entity @s[tag=ste_cos.heart_absorbing] run function ste_cos:fresh_visual/shards/tick

particle dust_color_transition{from_color:[0.9,0.2,1.0],scale:2.4,to_color:[0.15,0.0,0.4]} ~ ~ ~ 0.25 0.25 0.25 0.05 10 force @a
particle reverse_portal ~ ~ ~ 0.4 0.4 0.4 0.15 12 force @a
particle electric_spark ~ ~ ~ 0.2 0.2 0.2 0.08 5 force @a

execute if entity @s[tag=ste_cos.heart_absorbing] if entity @e[type=ender_dragon,tag=stellarity.ender_dragon,distance=..4.0,limit=1] run function ste_cos:fresh_visual/heart_absorb_arrive

execute if score #absorb_time ste_cos.timer matches 80.. run function ste_cos:fresh_visual/heart_absorb_arrive
