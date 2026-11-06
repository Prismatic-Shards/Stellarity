playsound minecraft:block.glass.break ambient @s ~ ~ ~ 2.0 0.6
playsound minecraft:block.heavy_core.fall ambient @s ~ ~ ~ 1.8 0.6
playsound minecraft:block.packed_ice.break ambient @s ~ ~ ~ 2.2 0.7
playsound minecraft:entity.generic.explode ambient @s ~ ~ ~ 1.5 0.7

particle minecraft:snowflake ~ ~3 ~ 3 1.5 3 0.1 70
particle minecraft:block{block_state:"minecraft:packed_ice"} ~ ~3 ~ 3 1.5 3 0.2 50
particle minecraft:poof ~ ~2 ~ 2 1 2 0.1 25

execute positioned ~-3 ~1 ~-1 run function stellarity:mechanic/ice_collapse/raycast/drop_packed_ice
execute positioned ~3 ~1 ~-1 run function stellarity:mechanic/ice_collapse/raycast/drop_icicle
execute positioned ~-1 ~1 ~3 run function stellarity:mechanic/ice_collapse/raycast/drop_blue_ice
execute positioned ~2 ~1 ~2 run function stellarity:mechanic/ice_collapse/raycast/drop_packed_ice
execute positioned ~-2 ~1 ~-3 run function stellarity:mechanic/ice_collapse/raycast/drop_icicle
execute positioned ~4 ~1 ~1 run function stellarity:mechanic/ice_collapse/raycast/drop_ice_chunk
