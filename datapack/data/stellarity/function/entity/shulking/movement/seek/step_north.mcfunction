execute unless block ~ ~ ~-2 #stellarity:shulking_immune_blocks run summon area_effect_cloud ~ ~ ~ {Duration:120,Tags:["stellarity.shulking.movement_trail","smithed.strict","smithed.entity"],custom_particle:{type:"block","block_state":"air"}}
execute unless block ~ ~ ~-2 #stellarity:shulking_immune_blocks run tp @s ~ ~ ~-1
execute unless block ~ ~ ~-2 #stellarity:shulking_immune_blocks if score #step stellarity.misc matches 1.. run scoreboard players remove #step stellarity.misc 1
execute unless block ~ ~ ~-2 #stellarity:shulking_immune_blocks if score #step stellarity.misc matches 1.. run function stellarity:entity/shulking/movement/seek/step_north
execute if block ~ ~ ~-2 #stellarity:shulking_immune_blocks run tag @s add stellarity.shulking.trail_end
