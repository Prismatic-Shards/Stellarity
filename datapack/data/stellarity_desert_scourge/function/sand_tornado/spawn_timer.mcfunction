execute unless entity @e[type=interaction,tag=sand.tornado,distance=..256] unless entity @e[type=item_display,tag=worm,distance=..256] run scoreboard players add @s sandTornadoSpawn 1

execute if score @s sandTornadoSpawn matches 1200.. unless predicate stellarity_desert_scourge:weather/rain if predicate stellarity_desert_scourge:chance/02 summon interaction run function stellarity_desert_scourge:sand_tornado/spawn
execute if score @s sandTornadoSpawn matches 1200.. if predicate stellarity_desert_scourge:weather/rain if predicate stellarity_desert_scourge:chance/08 summon interaction run function stellarity_desert_scourge:sand_tornado/spawn

execute if score @s sandTornadoSpawn matches 1200.. run scoreboard players reset @s sandTornadoSpawn