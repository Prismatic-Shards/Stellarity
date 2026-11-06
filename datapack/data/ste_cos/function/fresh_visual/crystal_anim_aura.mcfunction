# ste_cos:fresh_visual/crystal_anim_aura

team join ste_cos.anim_crystal @s
data merge entity @s {Glowing:1b}

particle flash{color:[0.95,0.25,1.0,1.0]} ~ ~1 ~ 0 0 0 0 1 force @a
particle reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.08 8 force @a
particle dust_color_transition{from_color:[0.95,0.2,1.0],scale:1.8,to_color:[0.35,0.0,0.6]} ~ ~1.2 ~ 0.4 0.4 0.4 0.04 12 force @a
particle end_rod ~ ~1.2 ~ 0.3 0.3 0.3 0.03 5 force @a
