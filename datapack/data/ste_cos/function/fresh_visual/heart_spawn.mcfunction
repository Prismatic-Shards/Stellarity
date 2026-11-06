# ste_cos:fresh_visual/heart_spawn

kill @e[type=marker,tag=ste_cos.respawn_heart]
function project:_/delete

summon marker 0 98 0 {Tags:["ste_cos.respawn_heart","ste_cos.visual_marker"]}

execute positioned 0 98 0 run function project:_/create
execute as @e[tag=project] run data merge entity @s {Glowing:1b}
function project:a/default/play_anim

scoreboard players set #ste_cos_totem_used ste_cos.flags 0

function ste_cos:fresh_visual/shards/init

scoreboard players set #heart_stage ste_cos.flags 0
scoreboard players set #heart_tick ste_cos.timer 0
scoreboard players set #heart_cd ste_cos.timer 0
scoreboard players set #heart_absorbed ste_cos.flags 0
scoreboard players set #heart_shrunk ste_cos.flags 0
scoreboard players set #absorb_time ste_cos.timer 0

scoreboard players operation #heart_next_beat ste_cos.timer = #rng_ticker ste_cos.flags
scoreboard players add #heart_next_beat ste_cos.timer 70

particle dust_color_transition{from_color:[0.65,0.05,0.95],scale:2.5,to_color:[0.15,0.0,0.35]} 0 98 0 0.8 0.8 0.8 0.05 30 force @a
particle dragon_breath 0 98 0 0.5 0.5 0.5 0.02 18 force @a
particle reverse_portal 0 98 0 1.2 1.2 1.2 0.08 30 force @a
particle end_rod 0 98 0 0.6 0.6 0.6 0.03 10 force @a

playsound entity.warden.heartbeat hostile @a[distance=..96] 0 98 0 4.0 0.55
playsound block.amethyst_block.resonate hostile @a[distance=..96] 0 98 0 4.0 0.50
