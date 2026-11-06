playsound minecraft:block.conduit.ambient.short player @s ~ ~ ~ .5 0.7

# Particles for other players
execute anchored eyes rotated ~ 0 run particle minecraft:heart ^ ^0.3 ^ 0.2 0.2 0.2 0 3 force @a[distance=0.1..]

execute anchored eyes positioned ^ ^ ^2.5 run function stellarity:item/harvester/effects/anima_conduit/shatter
