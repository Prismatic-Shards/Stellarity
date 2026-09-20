execute if entity @s[tag=!stellarity.area_effect_cloud,tag=!stellarity.aware] \
unless predicate {"condition": "minecraft:location_check","predicate":{"structures": "#stellarity:prevents_lingering_potion_buff"}} \
if data entity @s potion_contents.potion \
if data entity @s {custom_particle:{"type":"minecraft:entity_effect"}} \
run function stellarity:mechanic/lingering_potion_buff

execute if entity @s[tag=stellarity.area_effect_cloud] run function stellarity:util/as_area_effect_cloud_stellarity_specific
