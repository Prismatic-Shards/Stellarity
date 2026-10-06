execute if score @s stellarity.dragon.times_killed matches 1.. run function stellarity:structure/exit_portal/activated/generate
execute unless score @s stellarity.dragon.times_killed matches 1.. run function stellarity:structure/exit_portal/deactivated/generate

execute in minecraft:the_end positioned 0 80 0 as @e[distance=..250,tag=!stellarity.end_city.crystal,type=end_crystal,nbt={ShowBottom:1b}] at @s run function stellarity:entity/dragon/spawn/crystal_transitions/cancel
execute as @e[type=end_crystal,tag=stellarity.respawn_crystal] at @s run function stellarity:entity/dragon/spawn/crystal_transitions/respawn

scoreboard players reset @s stellarity.dragon.respawn_animation_progress
tag @s remove stellarity.respawn_dragon

kill @e[type=marker,tag=stellarity.dragon_respawn.beam]

setblock 0 63 0 bedrock replace
