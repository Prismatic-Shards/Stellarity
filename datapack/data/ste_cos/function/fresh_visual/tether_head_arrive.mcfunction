# ste_cos:fresh_visual/tether_head_arrive

playsound block.amethyst_block.chime hostile @a 0 98 0 32.0 0.70
playsound entity.illusioner.mirror_move hostile @a 0 98 0 32.0 0.80

function ste_cos:fresh_visual/heart_level_up

particle flash{color:[0.85,0.30,1.0,1.0]} 0 98 0 0 0 0 0 1 force @a
particle dust_color_transition{from_color:[0.85,0.1,1.0],scale:2.4,to_color:[0.2,0.0,0.5]} 0 98 0 0.6 0.6 0.6 0.1 35 force @a
particle electric_spark 0 98 0 0.6 0.6 0.6 0.1 30 force @a
particle reverse_portal 0 98 0 1.2 1.2 1.2 0.1 40 force @a
particle dragon_breath 0 98 0 0.8 0.8 0.8 0.05 20 force @a

tag @e[type=end_crystal,tag=ste_cos.tether_crystal,tag=!ste_cos.tether_connected,limit=1,sort=nearest] add ste_cos.tether_connected

kill @s
