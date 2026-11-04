scoreboard players add @s math 1

execute if score @s math matches 100.. run particle block{block_state:"minecraft:sand"} ~ ~ ~ 1 0 1 1 10 force
execute if score @s math matches 161 run function stellarity_desert_scourge:worm_create/point/spawn_worm

execute if entity @e[type=item_display,tag=worm.ai.head,distance=..1] run kill @s
execute if score @s math matches 300.. run kill @s