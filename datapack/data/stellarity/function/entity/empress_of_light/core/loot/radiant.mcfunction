loot spawn ~ ~ ~ loot stellarity:entity/empress_of_light/radiant_drops

execute as @e[type=item,distance=..1] run data modify entity @s Glowing set value 1b
execute as @e[type=item,distance=..1] run team join stellarity.empress_of_light.radiant_glow @s
execute as @e[type=item,distance=..1] run tag @s add stellarity.boss_drop
execute as @e[type=item,distance=..1] run tag @s add stellarity.item

summon experience_orb ~ ~ ~ {Value:3600s}
advancement grant @a[distance=..32] only stellarity:empress_of_light/fae_flayer
