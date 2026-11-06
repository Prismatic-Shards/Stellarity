# ste_cos:fresh_visual/heart_level_up

scoreboard players add #heart_stage ste_cos.flags 1

scoreboard players set #heart_cd ste_cos.timer 60
scoreboard players set #heart_tick ste_cos.timer 0

execute as @e[type=marker,tag=ste_cos.respawn_heart,limit=1] at @s run particle flash{color:[0.90,0.20,1.0,1.0]} ~ ~ ~ 0 0 0 0 1 force @a
execute as @e[type=marker,tag=ste_cos.respawn_heart,limit=1] at @s run particle electric_spark ~ ~ ~ 1.5 1.5 1.5 0.1 35 force @a
execute as @e[type=marker,tag=ste_cos.respawn_heart,limit=1] at @s run particle dust_color_transition{from_color:[0.9,0.2,1.0],scale:2.5,to_color:[0.2,0.0,0.5]} ~ ~ ~ 1.0 1.0 1.0 0.1 30 force @a
execute as @e[type=marker,tag=ste_cos.respawn_heart,limit=1] at @s run particle reverse_portal ~ ~ ~ 1.5 1.5 1.5 0.1 40 force @a
