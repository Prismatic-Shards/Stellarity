# Pixies
  execute as @e[type=vex,tag=!stellarity.pixie,tag=!smithed.entity,tag=!stellarity.aware,predicate=stellarity:entity/pixie_can_spawn_in] at @s run function stellarity:entity/pixie/check

# Slay Queen ✨✨✨✨✨
# (Empress of Light)
  execute if score #empress_of_light.is_alive stellarity.misc matches 1 as @e[type=vindicator,tag=stellarity.empress_of_light] at @s run function stellarity:entity/empress_of_light/main
  execute if score #empress_of_light.is_alive stellarity.misc matches 1 as @e[type=marker,tag=stellarity.empress_of_light.tracker] at @s run function stellarity:entity/empress_of_light/animations/death/check_death with entity @s data."stellarity:owner"
  execute if score #empress_of_light.is_alive stellarity.misc matches 1 unless entity @e[type=vindicator,tag=stellarity.empress_of_light] unless entity @e[type=marker,tag=stellarity.empress_of_light.spawn_animation] as @e[type=item_display,tag=stellarity.empress_of_light.ethereal_lance] at @s run function stellarity:entity/empress_of_light/attacks/clear_all
  execute if score #empress_of_light.is_alive stellarity.misc matches 1 unless entity @e[type=vindicator,tag=stellarity.empress_of_light] unless entity @e[type=marker,tag=stellarity.empress_of_light.spawn_animation] run scoreboard players set #empress_of_light.is_alive stellarity.misc 0

# Dragon stuff
  execute as @e[type=ender_dragon,tag=stellarity.ender_dragon] at @s run function stellarity:entity/dragon/main

# execute as @e[type=husk,tag=stellarity.enderling] at @s run function stellarity:entity/enderlings/main
# execute as @e[type=evoker,tag=stellarity.warlock] at @s run function stellarity:entity/warlock/main

execute as @e[type=zombified_piglin,tag=stellarity.flesh_piglin] at @s run function stellarity:entity/flesh_piglin/main

# execute as @e[type=slime,predicate=stellarity:location/in_the_end,tag=!stellarity.voided_slime,tag=!stellarity.end_city] at @s run function stellarity:entity/voided_slime/abort_offsprings
  execute as @e[type=marker,tag=stellarity.spawn_egg] at @s run function stellarity:entity/handle_spawn_egg with entity @s data

execute if score #shulking.is_alive stellarity.misc matches 1 as @e[type=allay,tag=stellarity.shulking] at @s run function stellarity:entity/shulking/main
execute if score #shulking.is_alive stellarity.misc matches 1 as @e[type=shulker,tag=stellarity.shulking.body] at @s run function stellarity:entity/shulking/main_body
execute if score #shulking.is_alive stellarity.misc matches 1 as @e[type=item_display,tag=stellarity.shulking.spike] at @s run function stellarity:entity/shulking/attacks/spike/loop

execute as @e[type=#stellarity:end_variant_animals,predicate=stellarity:entity/end_variant_animals,tag=!smithed.entity] run function stellarity:entity/animal/convert
execute as @e[type=sheep,tag=!stellarity.invalid_animal,tag=!smithed.entity] at @s run function stellarity:entity/animal/convert_sheep

execute if score #shulking.is_alive stellarity.misc matches 1 as @e[tag=stellarity.shulking.body] at @s run bossbar set stellarity:shulking players @a[distance=..64]
execute if score #shulking.is_alive stellarity.misc matches 1 unless entity @e[tag=stellarity.shulking.body] run function stellarity:entity/shulking/death/clear_bossbar

execute if score #shulking.is_alive stellarity.misc matches 1 as @e[type=item_display,tag=stellarity.shulking.ray] at @s run function stellarity:entity/shulking/attacks/ray/loop with entity @s data."stellarity:owner"

