playsound minecraft:block.packed_ice.break ambient @s ~ ~ ~ 1.8 0.5
playsound minecraft:block.anvil.land ambient @s ~ ~ ~ 1.0 0.6
playsound minecraft:block.pointed_dripstone.break ambient @s ~ ~ ~ 1.5 0.9

particle minecraft:snowflake ~ ~2 ~ 2 1 2 0.08 40
particle minecraft:block{block_state:"minecraft:blue_ice"} ~ ~3 ~ 2 1 2 0.15 30

execute positioned ~-2 ~1 ~2 run function stellarity:mechanic/ice_collapse/raycast/drop_blue_ice
execute positioned ~2 ~1 ~-2 run function stellarity:mechanic/ice_collapse/raycast/drop_packed_ice
execute positioned ~-3 ~1 ~-2 run function stellarity:mechanic/ice_collapse/raycast/drop_icicle
execute positioned ~3 ~1 ~3 run function stellarity:mechanic/ice_collapse/raycast/drop_icicle
