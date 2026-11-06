# ste_cos:fresh_visual/heart_tick

function ste_cos:fresh_visual/shards/tick

execute if score #heart_cd ste_cos.timer matches 1.. run scoreboard players remove #heart_cd ste_cos.timer 1

scoreboard players add #heart_tick ste_cos.timer 1
execute if score #heart_tick ste_cos.timer matches 1 as @e[tag=project] run data merge entity @s {Glowing:1b}
execute if score #heart_tick ste_cos.timer matches 20 as @e[tag=project] run data merge entity @s {Glowing:1b}
execute if score #heart_tick ste_cos.timer matches 40 as @e[tag=project] run data merge entity @s {Glowing:1b}
execute if score #heart_tick ste_cos.timer matches 60 as @e[tag=project] run data merge entity @s {Glowing:1b}
execute if score #heart_tick ste_cos.timer matches 80 as @e[tag=project] run data merge entity @s {Glowing:1b}

particle reverse_portal 0 98 0 0.4 0.4 0.4 0.05 4 force @a
particle dragon_breath 0 98 0 0.25 0.25 0.25 0.01 2 force @a
particle dust_color_transition{from_color:[0.5,0.0,0.8],scale:1.4,to_color:[0.1,0.0,0.2]} 0 98 0 0.25 0.25 0.25 0 2 force @a

execute if score #heart_cd ste_cos.timer matches 0 if score #heart_tick ste_cos.timer >= #heart_next_beat ste_cos.timer as @e[type=marker,tag=ste_cos.respawn_heart,limit=1] at @s run function ste_cos:fresh_visual/heart_beat

execute if score #heart_cd ste_cos.timer matches 0 if score #heart_tick ste_cos.timer >= #heart_next_beat ste_cos.timer run scoreboard players operation #heart_next_beat ste_cos.timer = #rng_ticker ste_cos.flags
execute if score #heart_cd ste_cos.timer matches 0 if score #heart_tick ste_cos.timer >= #heart_next_beat ste_cos.timer run scoreboard players add #heart_next_beat ste_cos.timer 70
execute if score #heart_cd ste_cos.timer matches 0 if score #heart_tick ste_cos.timer >= #heart_next_beat ste_cos.timer run scoreboard players set #heart_tick ste_cos.timer 0
