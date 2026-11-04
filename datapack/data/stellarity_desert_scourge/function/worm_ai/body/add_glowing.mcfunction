execute store result score *glowing wormGlowing run data get entity @s active_effects[{id:"minecraft:glowing"}].duration
scoreboard players operation @e[type=item_display,tag=worm,predicate=stellarity_desert_scourge:id_system/head,limit=1] wormGlowing > *glowing wormGlowing
effect clear @s glowing