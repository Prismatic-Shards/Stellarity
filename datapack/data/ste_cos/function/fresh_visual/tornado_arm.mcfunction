# ste_cos:fresh_visual/tornado_arm

execute rotated ~0 0 positioned ~ ~1.5 ~ positioned ^ ^ ^10 run particle dragon_breath ~ ~ ~ 0.3 0.3 0.3 0.02 2 force @a[distance=..256]
execute rotated ~0 0 positioned ~ ~1.5 ~ positioned ^ ^ ^10 run particle reverse_portal ~ ~ ~ 0.35 0.35 0.35 0.05 2 force @a[distance=..256]
execute rotated ~0 0 positioned ~ ~1.5 ~ positioned ^ ^ ^10 run particle dust_color_transition{from_color:[0.9,0.2,1.0],scale:2.0,to_color:[0.2,0.0,0.4]} ~ ~ ~ 0.25 0.3 0.25 0.02 2 force @a[distance=..256]

execute rotated ~20 0 positioned ~ ~1.0 ~ positioned ^ ^ ^14 run particle dragon_breath ~ ~ ~ 0.35 0.35 0.35 0.02 2 force @a[distance=..256]
execute rotated ~20 0 positioned ~ ~1.0 ~ positioned ^ ^ ^14 run particle dust_color_transition{from_color:[0.85,0.15,1.0],scale:2.2,to_color:[0.2,0.0,0.4]} ~ ~ ~ 0.3 0.35 0.3 0.02 2 force @a[distance=..256]

execute rotated ~40 0 positioned ~ ~0.5 ~ positioned ^ ^ ^18 run particle reverse_portal ~ ~ ~ 0.4 0.4 0.4 0.06 3 force @a[distance=..256]
execute rotated ~40 0 positioned ~ ~0.5 ~ positioned ^ ^ ^18 run particle dust_color_transition{from_color:[0.7,0.2,1.0],scale:2.4,to_color:[0.15,0.0,0.35]} ~ ~ ~ 0.35 0.4 0.35 0.02 2 force @a[distance=..256]

execute rotated ~62 0 positioned ~ ~0 ~ positioned ^ ^ ^23 run particle dust_color_transition{from_color:[0.35,0.85,1.0],scale:2.5,to_color:[0.7,0.1,0.9]} ~ ~ ~ 0.4 0.5 0.4 0.02 3 force @a[distance=..256]
execute rotated ~62 0 positioned ~ ~0 ~ positioned ^ ^ ^23 run particle witch ~ ~ ~ 0.25 0.25 0.25 0 2 force @a[distance=..256]

execute rotated ~86 0 positioned ~ ~-0.5 ~ positioned ^ ^ ^28 run particle dust_color_transition{from_color:[0.35,0.85,1.0],scale:2.6,to_color:[0.7,0.1,0.9]} ~ ~ ~ 0.45 0.55 0.45 0.02 3 force @a[distance=..256]
execute rotated ~86 0 positioned ~ ~-0.5 ~ positioned ^ ^ ^28 run particle witch ~ ~ ~ 0.25 0.25 0.25 0 2 force @a[distance=..256]
execute rotated ~86 0 positioned ~ ~-0.5 ~ positioned ^ ^ ^28 if predicate stellarity:chance/20_percent run particle electric_spark ~ ~ ~ 0.3 0.3 0.3 0.04 1 force @a[distance=..256]

execute rotated ~112 0 positioned ~ ~-1.0 ~ positioned ^ ^ ^34 run particle dust_color_transition{from_color:[0.4,0.8,1.0],scale:2.6,to_color:[0.65,0.05,0.95]} ~ ~ ~ 0.5 0.6 0.5 0.02 3 force @a[distance=..256]
execute rotated ~112 0 positioned ~ ~-1.0 ~ positioned ^ ^ ^34 run particle end_rod ~ ~ ~ 0.3 0.4 0.3 0.02 1 force @a[distance=..256]

execute rotated ~140 0 positioned ~ ~-1.5 ~ positioned ^ ^ ^40 run particle dust_color_transition{from_color:[0.5,0.6,1.0],scale:2.8,to_color:[0.65,0.05,0.95]} ~ ~ ~ 0.55 0.65 0.55 0.02 3 force @a[distance=..256]
execute rotated ~140 0 positioned ~ ~-1.5 ~ positioned ^ ^ ^40 run particle witch ~ ~ ~ 0.3 0.3 0.3 0 2 force @a[distance=..256]
execute rotated ~140 0 positioned ~ ~-1.5 ~ positioned ^ ^ ^40 if predicate stellarity:chance/20_percent run particle electric_spark ~ ~ ~ 0.35 0.35 0.35 0.04 1 force @a[distance=..256]

execute rotated ~170 0 positioned ~ ~-2.0 ~ positioned ^ ^ ^46 run particle dust_color_transition{from_color:[0.6,0.3,1.0],scale:3.0,to_color:[0.15,0.0,0.35]} ~ ~ ~ 0.6 0.7 0.6 0.02 3 force @a[distance=..256]
execute rotated ~170 0 positioned ~ ~-2.0 ~ positioned ^ ^ ^46 run particle end_rod ~ ~ ~ 0.35 0.45 0.35 0.02 2 force @a[distance=..256]

execute rotated ~202 0 positioned ~ ~-2.5 ~ positioned ^ ^ ^52 run particle dust_color_transition{from_color:[0.7,0.2,1.0],scale:3.2,to_color:[0.1,0.0,0.3]} ~ ~ ~ 0.65 0.75 0.65 0.02 3 force @a[distance=..256]
execute rotated ~202 0 positioned ~ ~-2.5 ~ positioned ^ ^ ^52 run particle witch ~ ~ ~ 0.35 0.35 0.35 0 2 force @a[distance=..256]
execute rotated ~202 0 positioned ~ ~-2.5 ~ positioned ^ ^ ^52 if predicate stellarity:chance/20_percent run particle electric_spark ~ ~ ~ 0.4 0.4 0.4 0.04 1 force @a[distance=..256]

execute rotated ~236 0 positioned ~ ~-3.0 ~ positioned ^ ^ ^58 run particle dust_color_transition{from_color:[0.8,0.15,1.0],scale:3.2,to_color:[0.1,0.0,0.25]} ~ ~ ~ 0.7 0.8 0.7 0.02 3 force @a[distance=..256]
execute rotated ~236 0 positioned ~ ~-3.0 ~ positioned ^ ^ ^58 run particle end_rod ~ ~ ~ 0.4 0.5 0.4 0.02 2 force @a[distance=..256]

execute rotated ~272 0 positioned ~ ~-3.5 ~ positioned ^ ^ ^64 run particle dust_color_transition{from_color:[0.85,0.1,1.0],scale:3.4,to_color:[0.1,0.0,0.2]} ~ ~ ~ 0.75 0.85 0.75 0.02 3 force @a[distance=..256]
execute rotated ~272 0 positioned ~ ~-3.5 ~ positioned ^ ^ ^64 run particle end_rod ~ ~ ~ 0.45 0.55 0.45 0.02 2 force @a[distance=..256]
execute rotated ~272 0 positioned ~ ~-3.5 ~ positioned ^ ^ ^64 if predicate stellarity:chance/20_percent run particle electric_spark ~ ~ ~ 0.45 0.45 0.45 0.04 2 force @a[distance=..256]
