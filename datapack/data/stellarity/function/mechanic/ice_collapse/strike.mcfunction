playsound minecraft:entity.warden.roar ambient @s ~ ~25 ~ 2.5 0.5
playsound minecraft:entity.generic.explode ambient @s ~ ~5 ~ 2.5 0.6
playsound minecraft:block.heavy_core.fall ambient @s ~ ~-1 ~ 2.0 0.5
playsound minecraft:block.packed_ice.break ambient @s ~ ~1 ~ 3.0 0.6
playsound minecraft:block.glass.break ambient @s ~ ~1 ~ 2.5 0.7
playsound minecraft:block.pointed_dripstone.break ambient @s ~ ~7 ~ 2.0 0.8
playsound minecraft:block.anvil.land ambient @s ~ ~7 ~ 1.2 0.5

effect give @s minecraft:slowness 6 2 true
effect give @s minecraft:blindness 3 0 true
data modify entity @s TicksFrozen set value 240

particle minecraft:explosion ~ ~3 ~ 2 1 2 0.1 5
particle minecraft:snowflake ~ ~3 ~ 4 2 4 0.15 120
particle minecraft:block{block_state:"minecraft:packed_ice"} ~ ~3 ~ 4 2 4 0.25 90
particle minecraft:block{block_state:"minecraft:blue_ice"} ~ ~3 ~ 4 2 4 0.25 70
particle minecraft:poof ~ ~2 ~ 3 1.5 3 0.1 40
particle minecraft:small_gust ~ ~2 ~ 3 1.5 3 0.2 40

execute positioned ~ ~1 ~ run function stellarity:mechanic/ice_collapse/raycast/drop_icicle
execute positioned ~-2 ~1 ~1 run function stellarity:mechanic/ice_collapse/raycast/drop_packed_ice
execute positioned ~2 ~1 ~-2 run function stellarity:mechanic/ice_collapse/raycast/drop_blue_ice
execute positioned ~-3 ~1 ~-2 run function stellarity:mechanic/ice_collapse/raycast/drop_icicle
execute positioned ~3 ~1 ~2 run function stellarity:mechanic/ice_collapse/raycast/drop_packed_ice
execute positioned ~-1 ~1 ~3 run function stellarity:mechanic/ice_collapse/raycast/drop_ice_chunk
execute positioned ~4 ~1 ~-1 run function stellarity:mechanic/ice_collapse/raycast/drop_icicle
execute positioned ~-4 ~1 ~-1 run function stellarity:mechanic/ice_collapse/raycast/drop_blue_ice
execute positioned ~1 ~1 ~-3 run function stellarity:mechanic/ice_collapse/raycast/drop_packed_ice

schedule function stellarity:mechanic/ice_collapse/wave_2 8t replace
schedule function stellarity:mechanic/ice_collapse/wave_3 16t replace
