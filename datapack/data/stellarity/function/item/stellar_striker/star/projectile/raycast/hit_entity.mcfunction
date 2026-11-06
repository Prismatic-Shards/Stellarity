#Mark the ray has having found an entity.

scoreboard players set #hit stellarity.misc 1

#Running custom commands since the entity was found.

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stellarity.target","smithed.entity","smithed.strict"],Duration:2,Age:1,custom_particle:{type:"block","block_state":"air"}}

tag @s add stellarity.stellar_striker.homing_target
