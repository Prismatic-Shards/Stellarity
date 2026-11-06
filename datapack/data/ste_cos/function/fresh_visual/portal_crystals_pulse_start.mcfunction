# ste_cos:fresh_visual/portal_crystals_pulse_start

kill @e[type=marker,tag=ste_cos.pulse_wave_marker]
tag @e[tag=ste_cos.pulse_hit] remove ste_cos.pulse_hit

playsound entity.generic.explode master @a 0 65 0 64.0 0.55
playsound entity.warden.sonic_boom master @a 0 65 0 64.0 0.70
playsound block.respawn_anchor.deplete master @a 0 65 0 64.0 0.60

particle flash{color:[1.0,0.5,1.0,1.0]} 0 67 0 0 0 0 0 3 force @a
particle explosion_emitter 0 67 0 2 1 2 0.1 8 force @a

summon marker 0 65 0 {Rotation:[0.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[15.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[30.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[45.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[60.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[75.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[90.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[105.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[120.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[135.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[150.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[165.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[180.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[195.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[210.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[225.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[240.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[255.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[270.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[285.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[300.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[315.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[330.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
summon marker 0 65 0 {Rotation:[345.0f,0.0f],Tags:["ste_cos.pulse_wave_marker"]}
