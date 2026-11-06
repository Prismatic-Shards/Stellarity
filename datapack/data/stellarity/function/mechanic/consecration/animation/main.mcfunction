
scoreboard players add @s stellarity.mechanics.consecration.time 1

execute if score @s stellarity.mechanics.consecration.time matches 1 run function stellarity:mechanic/consecration/animation/1

execute if score @s stellarity.mechanics.consecration.time matches ..20 run particle end_rod ~ ~0.35 ~ .2 .2 .2 0.011 1 force @a[distance=..32]
execute if score @s stellarity.mechanics.consecration.time matches 21..40 run particle end_rod ~ ~0.35 ~ .2 .2 .2 0.011 2 force @a[distance=..32]
execute if score @s stellarity.mechanics.consecration.time matches 41.. run particle end_rod ~ ~0.35 ~ .2 .2 .2 0.011 3 force @a[distance=..32]

execute if score @s stellarity.mechanics.consecration.time matches 40 run function stellarity:mechanic/consecration/animation/1_5
execute if score @s stellarity.mechanics.consecration.time matches 60.. run function stellarity:mechanic/consecration/animation/2
