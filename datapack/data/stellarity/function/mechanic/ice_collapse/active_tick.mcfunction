playsound minecraft:block.packed_ice.step ambient @s ~ ~ ~ 1.2 0.6
playsound minecraft:ambient.cave ambient @s ~ ~ ~ 0.8 0.7

particle minecraft:snowflake ~ ~3 ~ 3 1 3 0.05 8
particle minecraft:falling_dust{block_state:"minecraft:packed_ice"} ~ ~4 ~ 2 0.5 2 0.1 12

execute if score #stellarity.ice_collapse stellarity.weather.active matches 18 run playsound minecraft:block.glass.break ambient @s ~ ~ ~ 1.2 0.8
execute if score #stellarity.ice_collapse stellarity.weather.active matches 18 positioned ~2 ~1 ~2 run function stellarity:mechanic/ice_collapse/raycast/drop_icicle

execute if score #stellarity.ice_collapse stellarity.weather.active matches 12 run playsound minecraft:block.packed_ice.break ambient @s ~ ~ ~ 1.2 0.7
execute if score #stellarity.ice_collapse stellarity.weather.active matches 12 positioned ~-2 ~1 ~1 run function stellarity:mechanic/ice_collapse/raycast/drop_packed_ice

execute if score #stellarity.ice_collapse stellarity.weather.active matches 6 run playsound minecraft:block.pointed_dripstone.break ambient @s ~ ~ ~ 1.2 0.9
execute if score #stellarity.ice_collapse stellarity.weather.active matches 6 positioned ~1 ~1 ~-3 run function stellarity:mechanic/ice_collapse/raycast/drop_icicle

execute if score #stellarity.ice_collapse stellarity.weather.active matches 1 run playsound minecraft:block.packed_ice.place ambient @s ~ ~ ~ 1.5 0.5
execute if score #stellarity.ice_collapse stellarity.weather.active matches 1 run playsound minecraft:block.copper.step ambient @s ~ ~ ~ 1.0 0.5
