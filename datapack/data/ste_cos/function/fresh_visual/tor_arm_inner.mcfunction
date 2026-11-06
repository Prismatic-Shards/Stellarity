execute positioned ^ ^ ^16 run particle dust_color_transition{from_color:[0.35,0.85,1.0],scale:2.4,to_color:[0.7,0.1,0.9]} ~ ~ ~ 0.3 0.35 0.3 0.02 3 force @a[distance=..256]
execute rotated ~20 0 positioned ^ ^ ^19 run particle witch ~ ~ ~ 0.25 0.25 0.25 0 2 force @a[distance=..256]
execute rotated ~38 0 positioned ^ ^ ^22 run particle dust_color_transition{from_color:[0.4,0.8,1.0],scale:2.6,to_color:[0.65,0.05,0.95]} ~ ~ ~ 0.35 0.4 0.35 0.02 3 force @a[distance=..256]
execute rotated ~55 0 positioned ^ ^ ^26 if predicate stellarity:chance/25_percent run particle electric_spark ~ ~ ~ 0.3 0.3 0.3 0.04 1 force @a[distance=..256]
