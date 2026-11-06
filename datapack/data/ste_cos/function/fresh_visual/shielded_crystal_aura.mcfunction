# ste_cos:fresh_visual/shielded_crystal_aura

particle flash{color:[0.40,0.85,1.0,1.0]} ~ ~1.2 ~ 0 0 0 0 1 force @a[distance=..128]

playsound block.beacon.ambient block @a[distance=..16] ~ ~ ~ 1.0 1.4
playsound block.amethyst_block.resonate block @a[distance=..16] ~ ~ ~ 1.0 1.2
playsound entity.illusioner.cast_spell block @a[distance=..16] ~ ~ ~ 1.0 1.1

particle electric_spark ~ ~1.2 ~ 1.2 1.2 1.2 0.08 24 force @a[distance=..128]
particle dust_color_transition{from_color:[0.25,0.9,1.0],scale:2.2,to_color:[0.75,0.1,1.0]} ~ ~1.2 ~ 1.3 1.3 1.3 0.04 35 force @a[distance=..128]
particle end_rod ~ ~1.2 ~ 1.0 1.0 1.0 0.04 12 force @a[distance=..128]
particle reverse_portal ~ ~1.2 ~ 1.2 1.2 1.2 0.1 20 force @a[distance=..128]
