# ste_cos:fresh_visual/shockwave_init

kill @e[type=marker,tag=ste_cos.shockwave]

scoreboard players set #shockwave_count ste_cos.timer 0

execute positioned 0 99 0 run function ste_cos:fresh_visual/shockwave_spawn_markers

function ste_cos:fresh_visual/tornado_init

playsound entity.warden.sonic_boom hostile @a 0 99 0 64.0 0.60
playsound block.respawn_anchor.set_spawn hostile @a 0 99 0 64.0 0.65
