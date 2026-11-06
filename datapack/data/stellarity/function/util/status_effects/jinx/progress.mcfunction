scoreboard players add @s stellarity.status_effects.jinx.particle 1
scoreboard players remove @s stellarity.status_effects.jinx.time 1

execute if score @s stellarity.status_effects.jinx.particle matches 4 run function stellarity:util/status_effects/jinx/particle

execute if score @s stellarity.status_effects.jinx.time matches 0 run function stellarity:util/status_effects/jinx/remove

particle entity_effect{color:[0.7,0.7,0.7,1.0]} ~ ~1.2 ~ .3 .5 .3 0 1 normal
