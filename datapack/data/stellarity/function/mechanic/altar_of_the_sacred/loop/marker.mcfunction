execute positioned ~ ~-1 ~ as @n[type=item_display,distance=..0.01,tag=!stellarity.altar_of_the_sacred] run tag @s add stellarity.altar_of_the_sacred
execute positioned ~ ~-1 ~ as @n[type=item_display,distance=..0.01,tag=stellarity.altar_of_the_sacred] at @s run function stellarity:mechanic/altar_of_the_sacred/loop/item_display

execute unless score #empress_of_light.is_alive stellarity.misc matches 1 run function stellarity:mechanic/altar_of_the_sacred/visuals

execute unless score #empress_of_light.is_alive stellarity.misc matches 1 run scoreboard players add @s stellarity.mechanics.altar_of_the_sacred.timer 1
execute if score @s stellarity.mechanics.altar_of_the_sacred.timer matches 300 run function stellarity:mechanic/altar_of_the_sacred/ambient_sounds

execute as @a[distance=..6.0] unless score @s stellarity.altar_approached matches 1.. at @s run function stellarity:mechanic/altar_common/on_first_approach

execute as @e[type=item,distance=..2.5,tag=!stellarity.checked,tag=!stellarity.altar_of_the_sacred.ascending] run function stellarity:mechanic/altar_of_the_sacred/as_item

function stellarity:mechanic/altar_common/orbit_loop

scoreboard players operation @a[distance=..5.5] stellarity.altar_items = @s stellarity.altar_items

execute unless entity @e[type=item,tag=stellarity.altar_of_the_sacred.ascending,distance=..6] if score @s stellarity.altar_items matches 0 as @a[distance=..5.5] run title @s actionbar {"translate":"actionbar.stellarity.altar_of_the_sacred.idle","color":"#FFE259"}
execute unless entity @e[type=item,tag=stellarity.altar_of_the_sacred.ascending,distance=..6] if score @s stellarity.altar_items matches 1.. as @a[distance=..5.5] run title @s actionbar {"translate":"actionbar.stellarity.altar_of_the_sacred.active","with":[{"score":{"name":"@s","objective":"stellarity.altar_items"},"color":"#FFF7C2","bold":true}],"color":"#FFE259"}
execute if entity @e[type=item,tag=stellarity.altar_of_the_sacred.ascending,distance=..6] as @a[distance=..12.0] run title @s actionbar {"translate":"actionbar.stellarity.altar_of_the_sacred.ascending","color":"#FFD700","bold":true}

execute as @e[type=item,tag=stellarity.altar_of_the_sacred.ascending,distance=..6] at @s run function stellarity:mechanic/altar_of_the_sacred/ascending_tick
