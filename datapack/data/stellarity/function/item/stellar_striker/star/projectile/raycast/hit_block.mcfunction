#Mark the ray as having found a block.

scoreboard players set #hit stellarity.misc 1

#Running custom commands since the block was found.

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stellarity.target","smithed.entity","smithed.strict"],Duration:2,Age:1,custom_particle:{type:"block","block_state":"air"}}
