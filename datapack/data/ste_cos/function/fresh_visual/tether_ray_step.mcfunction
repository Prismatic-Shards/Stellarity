# ste_cos:fresh_visual/tether_ray_step

particle dust{color:[0.85,0.15,1.0],scale:1.2} ~ ~ ~ 0 0 0 0 1 force @a[distance=..256]
particle dust_color_transition{from_color:[0.9,0.2,1.0],scale:1.3,to_color:[0.25,0.0,0.5]} ~ ~ ~ 0 0 0 0 1 force @a[distance=..256]

execute if predicate stellarity:chance/20_percent run particle electric_spark ~ ~ ~ 0.1 0.1 0.1 0.04 1 force @a[distance=..256]

scoreboard players add #ray_step ste_cos.timer 1
execute if score #ray_step ste_cos.timer matches ..15 facing 0 98 0 positioned ^ ^ ^3.5 run function ste_cos:fresh_visual/tether_ray_step
