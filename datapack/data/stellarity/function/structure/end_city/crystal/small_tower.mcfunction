execute if entity @e[type=end_crystal,tag=stellarity.end_city.crystal,distance=..30] run tag @s add stellarity.nearby_crystal

execute unless entity @s[tag=stellarity.nearby_crystal] summon end_crystal at @s run function stellarity:structure/end_city/crystal/edit_data_small_tower

execute if entity @s[tag=stellarity.nearby_crystal] positioned ~ ~-1 ~ run function stellarity:structure/end_city/vault_macro {direction: "north"}

kill @s
