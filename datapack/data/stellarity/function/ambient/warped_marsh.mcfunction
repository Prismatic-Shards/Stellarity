# Warped Marsh underground (Y < 43) vs surface (Y >= 43)
execute if predicate stellarity:location/warped_marsh_underground run function stellarity:ambient/warped_marsh_underground
execute if predicate stellarity:location/warped_marsh_surface if entity @s[tag=stellarity.ambient.warped_marsh.underground] run function stellarity:ambient/warped_marsh_surface
