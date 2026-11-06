# Duskberry
  execute if entity @s[tag=stellarity.duskberry_cloud] run function stellarity:item/duskberry/as_area_effect_cloud

# Starstruck Carcanet
  execute if entity @s[tag=stellarity.shield.area_effect_cloud] run function stellarity:item/starstruck_shield/area_effect_cloud_loop
  execute if entity @s[tag=stellarity.shield.area_effect_cloud.radiant] run function stellarity:item/starstruck_shield/radiant_area_effect_cloud_loop

# Crystal Heartfish
  execute if entity @s[tag=stellarity.item.fish.crystal_heartfish.area_effect_cloud] rotated as @s run function stellarity:item/food/fish/crystal_heartfish/animation

# Void Fishing
  execute if entity @s[tag=stellarity.void_fishing.area_effect_cloud] run function stellarity:mechanic/void_fishing/as_area_effect_cloud/tick

execute if entity @s[tag=stellarity.wind_tunnel,tag=!stellarity.wind_tunnel.end] run function stellarity:item/sandstorm_trident/wind_tunnel/area_effect_cloud_tick
