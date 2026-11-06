execute unless score #stellarity.ice_collapse stellarity.weather.cooldown matches 1.. unless score #stellarity.ice_collapse stellarity.weather.active matches 1.. run scoreboard players set #stellarity.ice_collapse stellarity.weather.cooldown 180
execute if score #stellarity.ice_collapse stellarity.weather.active matches 1.. run scoreboard players remove #stellarity.ice_collapse stellarity.weather.active 1
execute unless score #stellarity.ice_collapse stellarity.weather.active matches 1.. run scoreboard players remove #stellarity.ice_collapse stellarity.weather.cooldown 1
execute unless score #stellarity.ice_collapse stellarity.weather.active matches 1.. if score #stellarity.ice_collapse stellarity.weather.cooldown matches ..0 if entity @a[predicate=stellarity:location/in_biome/in_frosted_caves] run function stellarity:mechanic/ice_collapse/trigger

execute if score #stellarity.ice_collapse stellarity.weather.active matches 1.. as @a[predicate=stellarity:location/in_biome/in_frosted_caves] at @s run function stellarity:mechanic/ice_collapse/active_tick
