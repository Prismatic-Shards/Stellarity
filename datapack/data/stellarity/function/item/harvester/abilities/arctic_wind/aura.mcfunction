# Aura gets stronger in the middle
effect give @e[type=!#kohara:invalid_targets,distance=0.01..4] slowness 1 1 false
effect give @e[type=!#kohara:invalid_targets,distance=2.51..9] slowness 1 0 false

execute if predicate kohara:player/is_sneaking run function stellarity:item/harvester/abilities/arctic_wind/projection
execute if predicate kohara:chance/10percent run playsound entity.breeze.idle_ground player @a[distance=0..] ~ ~ ~ 0.4 0.5
