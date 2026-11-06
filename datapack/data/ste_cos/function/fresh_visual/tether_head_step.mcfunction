# ste_cos:fresh_visual/tether_head_step

execute facing 0 98 0 run tp @s ^ ^ ^3.5

particle electric_spark ~ ~ ~ 0.25 0.25 0.25 0.08 10 force @a[distance=..256]
particle dust{color:[0.85,0.2,1.0],scale:1.4} ~ ~ ~ 0.1 0.1 0.1 0 2 force @a[distance=..256]
particle witch ~ ~ ~ 0.15 0.15 0.15 0 2 force @a[distance=..256]

execute positioned 0 98 0 if entity @s[distance=..4.5] run function ste_cos:fresh_visual/tether_head_arrive
