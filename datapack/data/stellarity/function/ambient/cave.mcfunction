# Cave ambience loop for players underground in The End
execute if predicate stellarity:location/in_cave run scoreboard players add @s stellarity.ambient.cave_timer 1
execute unless predicate stellarity:location/in_cave run scoreboard players set @s stellarity.ambient.cave_timer 0

execute if score @s stellarity.ambient.cave_timer matches 45.. if predicate stellarity:location/in_cave run function stellarity:ambient/cave_roll
