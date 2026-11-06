# ste_cos:fresh_visual/shockwave_step

scoreboard players add @s trueEnding_count 1

tp @s ^ ^ ^1.5

particle dust_color_transition{from_color:[0.85,0.15,1.0],scale:1.8,to_color:[0.25,0.0,0.5]} ~ ~ ~ 0.05 0.05 0.05 0 2 force @a[distance=..256]
particle dust{color:[0.9,0.2,1.0],scale:1.3} ~ ~ ~ 0.08 0.05 0.08 0 2 force @a[distance=..256]

execute if predicate stellarity:chance/20_percent run particle electric_spark ~ ~ ~ 0.1 0.1 0.1 0.02 1 force @a[distance=..256]
execute if predicate stellarity:chance/20_percent run particle end_rod ~ ~ ~ 0.05 0.05 0.05 0.01 1 force @a[distance=..256]
execute if predicate stellarity:chance/10_percent run particle witch ~ ~ ~ 0.05 0.05 0.05 0 1 force @a[distance=..256]

execute if score @s trueEnding_count matches 40.. run kill @s
