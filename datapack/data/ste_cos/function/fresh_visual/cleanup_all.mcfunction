# ste_cos:fresh_visual/cleanup_all


function project:_/delete

kill @e[type=marker,tag=ste_cos.respawn_heart]
kill @e[type=marker,tag=ste_cos.heart_absorbing]
kill @e[type=marker,tag=ste_cos.absorb_tendril]
kill @e[type=marker,tag=ste_cos.tornado_marker]
kill @e[type=marker,tag=ste_cos.shockwave]
kill @e[type=marker,tag=ste_cos.tether_head]
kill @e[type=marker,tag=ste_cos.visual_marker]
kill @e[type=marker,tag=ste_cos.pulse_wave_marker]
tag @e[tag=ste_cos.pulse_hit] remove ste_cos.pulse_hit
tag @e[tag=ste_cos.earthquake_shaken] remove ste_cos.earthquake_shaken
tag @a[tag=stellarity.dragon.screenshake] remove stellarity.dragon.screenshake

tag @e[type=end_crystal] remove ste_cos.tether_connected
tag @e[type=end_crystal] remove ste_cos.tether_crystal
