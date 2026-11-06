tag @s add stellarity.checked_bobber

execute align y positioned ~ ~-0.1 ~ run summon area_effect_cloud ~ ~ ~ {Radius:0,Tags:["stellarity.void_fishing.area_effect_cloud","stellarity.area_effect_cloud"],Duration:2147483647,custom_particle:{type:"block",block_state:"air"}}

execute align y positioned ~ ~-0.1 ~ as @n[type=area_effect_cloud,distance=..1.5] run function stellarity:mechanic/void_fishing/as_bobber/biome_area_effect_cloud
function stellarity:mechanic/void_fishing/as_area_effect_cloud/wave

# ride @s mount @n[type=area_effect_cloud,tag=stellarity.void_fishing.area_effect_cloud]

advancement grant @p only stellarity:void_fishing/void_reels
