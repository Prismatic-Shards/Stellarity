particle minecraft:end_rod ~ ~ ~ 0 0 0 0.06 25 force
particle explosion

playsound minecraft:entity.firework_rocket.blast player @a[distance=0..] ~ ~ ~ 1 1.5

execute unless entity @s[tag=stellarity.starstruck_shield.star.radiant] as @e[type=!#kohara:invalid_targets,distance=..2.5,predicate=!stellarity:item/holding/trinket/starstruck_shield] run function stellarity:item/starstruck_shield/damage

execute if entity @s[tag=stellarity.starstruck_shield.star.radiant] as @e[type=!#kohara:invalid_targets,distance=..2.5,predicate=!stellarity:item/holding/trinket/starstruck_shield] run function stellarity:item/starstruck_shield/radiant_damage

kill @s
