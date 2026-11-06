# ste_cos:fresh_visual/tower_tether_launch

tag @s add ste_cos.tether_crystal

summon marker ~ ~1.8 ~ {Tags:["ste_cos.tether_head","ste_cos.visual_marker","ste_cos.temp_head"]}

execute as @e[type=marker,tag=ste_cos.temp_head,limit=1] facing 0 98 0 run tp @s ~ ~ ~ ~ ~
tag @e[type=marker,tag=ste_cos.temp_head] remove ste_cos.temp_head

particle flash{color:[0.70,0.15,0.95,1.0]} ~ ~1.8 ~ 0 0 0 0 1 force @a
particle dust_color_transition{from_color:[0.3,0.85,1.0],scale:2.0,to_color:[0.7,0.1,0.9]} ~ ~1.8 ~ 0.5 0.5 0.5 0.05 20 force @a
particle dragon_breath ~ ~1.8 ~ 0.3 0.3 0.3 0.04 12 force @a

playsound block.respawn_anchor.charge block @a ~ ~ ~ 48.0 0.65
playsound entity.illusioner.cast_spell block @a ~ ~ ~ 48.0 0.70
