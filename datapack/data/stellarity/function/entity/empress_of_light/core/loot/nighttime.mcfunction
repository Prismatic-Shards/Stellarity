loot spawn ~ ~ ~ loot stellarity:entity/empress_of_light/loot
loot spawn ~ ~ ~ loot stellarity:entity/empress_of_light/extra_drops/night


execute as @e[type=item,distance=..1] run data modify entity @s Glowing set value 1b
execute as @e[type=item,distance=..1] run team join stellarity.empress_of_light.night_glow @s
execute as @e[type=item,distance=..1] run tag @s add stellarity.boss_drop
execute as @e[type=item,distance=..1] run tag @s add stellarity.item

summon experience_orb ~ ~ ~ {Value:600s}
