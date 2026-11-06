scoreboard players add @s stellarity.dot.frostburn.progress 1

execute if score @s stellarity.dot.frostburn.progress matches 20 run function stellarity:util/status_effects/frostburn/damage

scoreboard players remove @s stellarity.dot.frostburn.time 1

#execute if predicate kohara:chance/33percent run particle trial_spawner_detection_ominous ~ ~ ~ .3 .5 .3 0.01 1 force @a[distance=..32]
execute if predicate kohara:chance/33percent run particle snowflake ~ ~1 ~ .3 .5 .3 0.02 1 normal
particle soul_fire_flame ~ ~1 ~ .35 .5 .35 0.02 2 normal

execute if score @s stellarity.dot.frostburn.time matches 0 run function stellarity:util/status_effects/frostburn/remove
