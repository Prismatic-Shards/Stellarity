# ste_cos:fresh_visual/crystal_aura

particle flash{color:[0.75,0.20,1.0,1.0]} ~ ~1 ~ 0 0 0 0 1 force @a[distance=..128]

playsound block.amethyst_block.resonate block @a[distance=..16] ~ ~ ~ 1.0 0.60
playsound entity.illusioner.cast_spell block @a[distance=..16] ~ ~ ~ 1.0 0.65

particle dragon_breath ~ ~1.2 ~ 0.35 0.8 0.35 0.06 18 force @a[distance=..128]
particle end_rod ~ ~1.2 ~ 0.25 0.5 0.25 0.06 10 force @a[distance=..128]

particle dust_color_transition{from_color:[0.3,0.9,1.0],scale:1.8,to_color:[0.65,0.05,0.95]} ~ ~1.2 ~ 0.6 0.5 0.6 0.08 22 force @a[distance=..128]
particle reverse_portal ~ ~1 ~ 0.6 0.6 0.6 0.12 25 force @a[distance=..128]
particle electric_spark ~ ~1 ~ 0.4 0.4 0.4 0.06 10 force @a[distance=..128]
