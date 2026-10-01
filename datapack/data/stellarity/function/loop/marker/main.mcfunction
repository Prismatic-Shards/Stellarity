function stellarity:item/main_marker
# Exit Portal loop
# Used for stuff like respawn checks, etc.
  execute if entity @s[tag=stellarity.exit_portal] run function stellarity:structure/exit_portal/main

execute if entity @s[tag=stellarity.empress_of_light.spawn_animation] run function stellarity:entity/empress_of_light/animations/spawn/loop

execute if entity @s[tag=stellarity.altar_of_the_sacred] run function stellarity:mechanic/altar_of_the_sacred/loop/marker

execute if entity @s[tag=stellarity.end_portal] run function stellarity:sfx/end_portal/marker_loop
execute if entity @s[tag=stellarity.end_portal_animation] run function stellarity:sfx/end_portal/open_animation/main
execute if entity @s[tag=stellarity.end_portal.beam_thingy] run function stellarity:sfx/end_portal/beam_thingy/move

execute if entity @s[tag=stellarity.spirit_dagger.spirit] run function stellarity:item/spirit_dagger/spirit/loop

# Dragon markers
  execute if entity @s[tag=stellarity.dragons_den_chest] run function stellarity:sfx/dragons_den_chest
  execute if entity @s[tag=stellarity.dragon_fireball] run function stellarity:entity/dragon/attacks/fireball/main
  execute if entity @s[tag=stellarity.dragon.shulkers] run function stellarity:entity/dragon/attacks/take_off/shulkers/main
  execute if entity @s[tag=stellarity.dragon.beam_thingy] run function stellarity:entity/dragon/beam_thingy/move
  execute if entity @s[tag=stellarity.ball_of_blight] run function stellarity:entity/dragon/attacks/ball_of_blight/main

execute if entity @s[tag=stellarity.end_gateway_anim] run function stellarity:sfx/end_gateway_anim/main

execute if entity @s[tag=stellarity.end_city.crystal] run function stellarity:structure/end_city/crystal/visuals
execute if entity @s[tag=stellarity.end_city.no_beacon] unless block ~ ~ ~ minecraft:beacon run function stellarity:structure/end_city/no_beacon
execute if entity @s[tag=stellarity.end_city.small_tower_crystal] run function stellarity:structure/end_city/crystal/small_tower

execute if entity @s[tag=stellarity.stellar_striker] run function stellarity:item/stellar_striker/marker/loop

execute if entity @s[tag=stellarity.shrapnel] run function stellarity:item/call_of_the_void/shrapnel/loop

execute if entity @s[tag=stellarity.waystone] run function stellarity:post_gen/waystone

execute if entity @s[tag=stellarity.cauldron] run function stellarity:mechanic/cauldron

execute if entity @s[tag=stellarity.trial_spawner] run function stellarity:structure/end_city/trial_spawner_marker_loop

scoreboard players add @s stellarity.misc.loop.1s 1
execute if entity @s[tag=stellarity.altar_of_the_accursed] run function stellarity:mechanic/altar_of_the_accursed/main
execute if entity @s[tag=stellarity.pixie_in_a_jar] run function stellarity:mechanic/pixie_in_a_jar/main
execute if entity @s[scores={stellarity.misc.loop.1s=20..}] run function stellarity:loop/marker/main_1s
