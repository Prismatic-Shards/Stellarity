execute unless predicate stellarity_desert_scourge:biome/desert run scoreboard players reset @s sandTornadoSpawn
execute if predicate stellarity_desert_scourge:biome/desert run function stellarity_desert_scourge:sand_tornado/spawn_timer

execute anchored eyes if entity @e[type=item_display,tag=worm,distance=..6] run attribute @s minecraft:entity_interaction_range modifier add stellarity_desert_scourge:worm_reach 3 add_value
execute anchored eyes unless entity @e[type=item_display,tag=worm,distance=..6] run attribute @s minecraft:entity_interaction_range modifier remove stellarity_desert_scourge:worm_reach

execute if score @s sandTornadoTimer matches 1..6 run scoreboard players add @s sandTornadoTimer 1
execute if score @s sandTornadoTimer matches 7.. run scoreboard players reset @s sandTornadoTimer

execute if score @s sandTornadoAdvancementTimer matches 1.. run function stellarity_desert_scourge:advancements/how_to_get_down/tick

execute if score @s musicTimer_stellarity_ds matches 0.. run function stellarity_desert_scourge:music/tick

execute if score @s death matches 1.. run function stellarity_desert_scourge:player/death
execute if entity @s[tag=!dont.clear.death.count] run scoreboard players reset @s death
tag @s remove dont.clear.death.count

execute if entity @s[gamemode=creative] run function stellarity_desert_scourge:commands/tick

scoreboard players enable @s stellarity_desert_scourge.difficulty
execute if score @s stellarity_desert_scourge.difficulty matches 1 run function stellarity_desert_scourge:difficulty/easy
execute if score @s stellarity_desert_scourge.difficulty matches 2 run function stellarity_desert_scourge:difficulty/default
execute if score @s stellarity_desert_scourge.difficulty matches 3 run function stellarity_desert_scourge:difficulty/hard

scoreboard players remove @s[scores={wormAttackCD=1..}] wormAttackCD 1
scoreboard players reset @s damageBlocked
tag @s remove using.shield