data merge entity @s {Rotation:[0f,90f]}
execute at @s facing entity @p[distance=..20,predicate=stellarity:item/holding/trinket/starstruck_shield] eyes run tp @s ~ ~ ~ ~ ~-3

execute if entity @p[distance=..20,predicate=stellarity:item/holding/trinket/starstruck_shield,predicate=stellarity:item/holding/trinket/radiant_jewel] run tag @s add stellarity.starstruck_shield.star.radiant
tag @s add stellarity.starstruck_shield.star
tag @s add stellarity.marker
tag @s add smithed.entity
tag @s add smithed.strict

playsound stellarity:item.starstruck_shield.spawn_star player @a ~ ~ ~ 2.2 1

particle minecraft:cloud ~ ~.1 ~ 0 0 0 0.05 10
