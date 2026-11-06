scoreboard players set #stellarity.ice_collapse stellarity.weather.active 25
scoreboard players set #stellarity.ice_collapse stellarity.weather.cooldown 240
execute as @a[predicate=stellarity:location/in_biome/in_frosted_caves] at @s run function stellarity:mechanic/ice_collapse/strike
