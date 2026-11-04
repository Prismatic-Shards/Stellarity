data merge entity @s {billboard:"fixed",Tags:["worm","worm.ai.body"],item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":{floats:[2385704f]}}},teleport_duration:2,interpolation_duration:3,transformation:{scale:[2.5f,2.5f,2.5f],translation:[-0.5625f,0f,0f]},brightness:{block:0,sky:15},CustomName:'{"fallback":"Desert Scourge","translate":"mob.desert_scourge.id"}'}
summon pig ~ ~ ~ {Silent:1b,DeathLootTable:"",NoAI:1b,Health:1024f,Tags:["worm.hitbox","set.scores"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:fall_damage_multiplier",base:0},{id:"minecraft:follow_range",base:0},{id:"minecraft:gravity",base:0},{id:"minecraft:jump_strength",base:0},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:1024},{id:"minecraft:movement_speed",base:0},{id:"minecraft:scale",base:4},{id:"minecraft:step_height",base:0}],Team:"noCol"}
scoreboard players operation @s mobID = *cloud mobID
scoreboard players operation @s wormPart = *part math
scoreboard players operation @e[type=vex,tag=worm.hitbox,tag=set.scores,limit=1] mobID = *cloud mobID
scoreboard players operation @e[type=vex,tag=worm.hitbox,tag=set.scores,limit=1] wormPart = *part math
tag @e[type=vex,tag=worm.hitbox,tag=set.scores,limit=1] remove set.scores
scoreboard players operation @s wormZRot = *part math
scoreboard players operation @s wormZRot *= *20 const
scoreboard players operation @s wormZRot %= *720 const
scoreboard players operation @s wormDeathTimer = *part math
scoreboard players add *part math 1