# Phantoms
  execute in minecraft:overworld as @e[type=phantom,tag=!stellarity.phantom.aware,distance=0..] at @s run function stellarity:entity/phantom/enlarge
  execute as @e[type=phantom] unless score @s stellarity.phantom.size matches 1.. run function stellarity:entity/phantom/score

# Dragon's Ashes tickdown
  execute if score #stellarity.dragon.ash_duration stellarity.misc matches 1.. run scoreboard players remove #stellarity.dragon.ash_duration stellarity.misc 1

# Makes Allays despawn naturally if they have spawned naturally in The Hallow
# removed
# execute as @e[type=allay,tag=stellarity.allay.natural_hallow_spawn] at @s run function stellarity:entity/the_hallow_allay_despawn

# Tridents return when in Void
  execute as @e[type=trident,predicate=stellarity:location/below_y_0,predicate=stellarity:location/in_the_end] run data merge entity @s {DealtDamage:1b}

# Villagers
  execute as @e[type=villager,tag=!stellarity.villager,predicate=stellarity:location/in_the_end] at @s run function stellarity:entity/villager/check

execute as @e[type=#stellarity:stat_buff,tag=!stellarity.aware,tag=!stellarity.buffed,predicate=stellarity:location/in_the_end,tag=!smithed.entity] run function stellarity:entity/convert_to_end_variants

# Lingering potion buff
  execute as @e[type=area_effect_cloud,tag=!stellarity.area_effect_cloud,tag=!stellarity.aware] \
  unless predicate {"type": "minecraft:location_check","predicate":{"structures": "#stellarity:prevents_lingering_potion_buff"}} \
  if data entity @s potion_contents.potion \
  if data entity @s {custom_particle:{"type":"minecraft:entity_effect"}} \
  run function stellarity:mechanic/lingering_potion_buff

execute as @e[type=#stellarity:entity_awareness_checks,tag=!stellarity.aware] run tag @s add stellarity.aware

execute as @e[type=#stellarity:end_variant_animals,tag=stellarity.animal] at @s run function stellarity:entity/animal/effects/aura

execute if score #shulking.is_alive stellarity.misc matches 1 as @e[type=allay,tag=stellarity.shulking] at @s run function stellarity:entity/shulking/main_1s

execute unless score #shulking.is_alive stellarity.misc matches 1 if entity @e[type=allay,tag=stellarity.shulking] run scoreboard players set #shulking.is_alive stellarity.misc 1
execute unless score #empress_of_light.is_alive stellarity.misc matches 1 if entity @e[type=vindicator,tag=stellarity.empress_of_light] run scoreboard players set #empress_of_light.is_alive stellarity.misc 1
execute unless score #empress_of_light.is_alive stellarity.misc matches 1 if entity @e[type=marker,tag=stellarity.empress_of_light.spawn_animation] run scoreboard players set #empress_of_light.is_alive stellarity.misc 1
execute unless score #empress_of_light.is_alive stellarity.misc matches 1 unless entity @e[type=vindicator,tag=stellarity.empress_of_light] unless entity @e[type=marker,tag=stellarity.empress_of_light.spawn_animation] as @e[type=item_display,tag=stellarity.empress_of_light.ethereal_lance] at @s run function stellarity:entity/empress_of_light/attacks/clear_all

schedule function stellarity:loop/timed/1_second 1s
