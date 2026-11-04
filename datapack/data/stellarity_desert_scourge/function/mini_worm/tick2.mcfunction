execute store result storage stellarity_desert_scourge:temp tp.y float 0.001 run scoreboard players remove @s wormTarget 20
function stellarity_desert_scourge:mini_worm/tp with storage stellarity_desert_scourge:temp tp
data remove storage stellarity_desert_scourge:temp tp

tag @s add save.mob
execute as @a[distance=..1] unless score @s wormAttackCD matches 1.. run function stellarity_desert_scourge:mini_worm/attack with storage stellarity_desert_scourge:const difficulty
tag @s remove save.mob