scoreboard players operation *tempID mobID = @s mobID
execute as @a[distance=..128] if score @s playerID = *tempID mobID run tag @s add target

scoreboard players add @s math 1

execute if score @s math matches 0..50 if entity @a[distance=..128,tag=target,limit=1] at @a[distance=..128,tag=target,limit=1] positioned over motion_blocking run tp @s ~ ~-3 ~
execute if score @s math matches 0..65 positioned over motion_blocking run particle block{block_state:"minecraft:sand"} ~ ~ ~ 0.375 0 0.375 0 5 normal

execute if score @s math matches 61 run scoreboard players set @s wormTarget 550
execute if score @s math matches 61.. run function stellarity_desert_scourge:mini_worm/tick2

execute unless entity @a[distance=..128,tag=target,limit=1] run kill @s
execute if score @s math matches 115.. run kill @s

tag @a[distance=..128,tag=target,limit=1] remove target