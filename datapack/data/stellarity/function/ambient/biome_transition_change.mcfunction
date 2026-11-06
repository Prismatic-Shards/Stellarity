# When switching biomes, stop previous active custom ambient loops to prevent overlapping
stopsound @s ambient stellarity:ambient.main_island.pre_dragon_loop
stopsound @s ambient stellarity:ambient.main_island.pre_dragon_center
stopsound @s ambient stellarity:ambient.village.chapel
stopsound @s ambient stellarity:ambient.warped_marsh.underground

tag @s remove stellarity.ambient.main_island.looping
tag @s remove stellarity.ambient.main_island.center
tag @s remove stellarity.ambient.village.playing
tag @s remove stellarity.ambient.warped_marsh.underground

scoreboard players set @s stellarity.ambient.loop_timer 0
scoreboard players set @s stellarity.ambient.chapel_timer 0
