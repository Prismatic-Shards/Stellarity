# Detect current biome category
scoreboard players set @s stellarity.ambient.biome_id 0

# 1: Main Island
execute positioned 0.5 60.0 0.5 if entity @s[distance=..350] run scoreboard players set @s stellarity.ambient.biome_id 1

# 2: End Village structure
execute if predicate stellarity:location/in_structure/end_village run scoreboard players set @s stellarity.ambient.biome_id 2

# 3: Warped Marsh
execute if predicate stellarity:location/in_biome/warped_marsh run scoreboard players set @s stellarity.ambient.biome_id 3

# 4: The Void
execute if predicate stellarity:location/in_biome/the_void run scoreboard players set @s stellarity.ambient.biome_id 4

# Check if biome changed from last tick
execute unless score @s stellarity.ambient.biome_id = @s stellarity.ambient.last_biome_id run function stellarity:ambient/biome_transition_change
scoreboard players operation @s stellarity.ambient.last_biome_id = @s stellarity.ambient.biome_id
