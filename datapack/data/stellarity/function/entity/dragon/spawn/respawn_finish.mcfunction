# Also moved from a function I do not remember at all
# I need to refactor the code from FE...
  particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force

kill @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal]
kill @e[type=marker,tag=stellarity.dragon_respawn.marker]
kill @e[type=marker,tag=stellarity.dragon_respawn.marker2]
kill @e[type=marker,tag=stellarity.dragon_respawn.beam]

advancement grant @a[distance=..100,advancements={end/kill_dragon=true,minecraft:end/respawn_dragon=true}] only stellarity:dragons_den/third_times_the_charm
advancement grant @a[distance=..100,advancements={end/kill_dragon=true}] only minecraft:end/respawn_dragon

tag @s add stellarity.portal_deactivated.spawn_dragon
tag @s remove stellarity.respawn_dragon

execute in minecraft:the_end positioned 0 80 0 as @e[type=minecraft:end_crystal,distance=..250,tag=!stellarity.end_city.crystal] at @s run function stellarity:entity/dragon/spawn/crystal_transitions/normal

execute in minecraft:the_end run setblock 0 63 0 bedrock

scoreboard players reset @s stellarity.dragon.respawn_animation_progress
scoreboard players reset #respawn_crystal_count stellarity.misc
