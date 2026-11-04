execute store result score *damage math run data get entity @s Health 10
scoreboard players remove *damage math 10240
execute as @e[type=item_display,tag=worm,predicate=stellarity_desert_scourge:id_system/head] run scoreboard players operation @s wormHealth += *damage math
scoreboard players reset *damage math