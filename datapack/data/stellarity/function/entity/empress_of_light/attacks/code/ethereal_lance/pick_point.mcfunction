# Spawning Pick Point area effect cloud with EoL time tag, bcs different patterns for different fights!
# Remember, EoL ENRAGES during daytime, so it is only natural she would use something a lot harder to dodge
# to make your fight go as miserable as possible
  execute if entity @s[tag=stellarity.empress_of_light.daytime] at @p run summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 200,RadiusPerTick:-0.03,Radius:5,Tags:["stellarity.empress_of_light.ethereal_lance.pick_point","stellarity.empress_of_light.daytime"],custom_particle:{type:"block","block_state":"air"}}
  execute if entity @s[tag=stellarity.empress_of_light.nighttime] at @p run summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 200,RadiusPerTick:-0.03,Radius:5,Tags:["stellarity.empress_of_light.ethereal_lance.pick_point","stellarity.empress_of_light.nighttime"],custom_particle:{type:"block","block_state":"air"}}
  execute if entity @s[tag=stellarity.empress_of_light.radiant] at @p run summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 200,RadiusPerTick:-0.03,Radius:5,Tags:["stellarity.empress_of_light.ethereal_lance.pick_point","stellarity.empress_of_light.radiant"],custom_particle:{type:"block","block_state":"air"}}

execute as @n[type=area_effect_cloud,tag=stellarity.empress_of_light.ethereal_lance.pick_point] at @s run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/as_area_effect_cloud
