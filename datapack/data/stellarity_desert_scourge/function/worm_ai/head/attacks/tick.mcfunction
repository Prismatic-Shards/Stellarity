tag @s add save.mob
execute as @a[distance=..1.5] unless score @s wormAttackCD matches 1.. run function stellarity_desert_scourge:worm_ai/head/attacks/attack with storage stellarity_desert_scourge:const difficulty
tag @s remove save.mob

scoreboard players add @s wormAttackTimer 1

execute if score @s wormAttackTimer matches 200 as @a[distance=..128,sort=random,limit=1] at @s positioned over motion_blocking run function stellarity_desert_scourge:worm_ai/head/attacks/mini_worm_spawn
execute if score @s wormAttackTimer matches 200.. run scoreboard players reset @s wormAttackTimer