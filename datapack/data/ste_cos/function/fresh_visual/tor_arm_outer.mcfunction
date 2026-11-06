execute positioned ~ ~-3 ~ positioned ^ ^ ^56 run particle end_rod ~ ~ ~ 0.5 0.6 0.5 0.02 2 force @a[distance=..256]
execute rotated ~22 0 positioned ~ ~-3.3 ~ positioned ^ ^ ^61 run particle dust_color_transition{from_color:[0.75,0.15,1.0],scale:3.0,to_color:[0.1,0.0,0.25]} ~ ~ ~ 0.6 0.7 0.6 0.02 2 force @a[distance=..256]
execute rotated ~46 0 positioned ~ ~-3.6 ~ positioned ^ ^ ^64 if predicate stellarity:chance/20_percent run particle electric_spark ~ ~ ~ 0.4 0.4 0.4 0.05 1 force @a[distance=..256]
