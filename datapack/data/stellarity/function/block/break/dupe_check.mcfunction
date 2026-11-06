# -1 is dont break
# 0 is kill
# 1 is transform into grass
# 2 is transform into dirt
# 3 is transform into dirt path
# 4 is transform into rooted dirt

scoreboard players set @s stellarity.misc -1
$execute unless block ~ ~ ~ $(block) run scoreboard players set @s stellarity.misc 0

execute if block ~ ~ ~ grass_block if predicate stellarity:block/grass_convertable run scoreboard players set @s stellarity.misc 1
execute if block ~ ~ ~ dirt if predicate stellarity:block/dirt_convertable run scoreboard players set @s stellarity.misc 2
execute if block ~ ~ ~ dirt_path if predicate stellarity:block/dirt_path_convertable run scoreboard players set @s stellarity.misc 3
execute if block ~ ~ ~ rooted_dirt if predicate stellarity:block/rooted_dirt_convertable run scoreboard players set @s stellarity.misc 4


execute if score @s stellarity.misc matches 0 run kill @s
execute if score @s stellarity.misc matches 1 run function stellarity:block/replace {"loot_table":"stellarity:block/ender_grass_block"}
execute if score @s stellarity.misc matches 2 run function stellarity:block/replace {"loot_table":"stellarity:block/ender_dirt"}
execute if score @s stellarity.misc matches 3 run function stellarity:block/replace {"loot_table":"stellarity:block/ender_dirt_path"}
execute if score @s stellarity.misc matches 4 run function stellarity:block/replace {"loot_table":"stellarity:block/rooted_ender_dirt"}
