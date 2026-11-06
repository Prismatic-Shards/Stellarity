# Village Chapel Ambient Loop (66s duration)
execute if predicate stellarity:location/in_structure/end_village run function stellarity:ambient/village_play
execute unless predicate stellarity:location/in_structure/end_village if entity @s[tag=stellarity.ambient.village.playing] run function stellarity:ambient/village_stop
