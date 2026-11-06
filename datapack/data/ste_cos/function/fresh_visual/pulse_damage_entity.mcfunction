# ste_cos:fresh_visual/pulse_damage_entity

damage @s 1.0 magic
tag @s add ste_cos.pulse_hit
particle flash{color:[1.0,0.2,1.0,1.0]} ~ ~1 ~ 0 0 0 0 1 force @a
playsound entity.generic.explode master @a ~ ~ ~ 0.8 1.4

