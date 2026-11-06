scoreboard players remove @s stellarity.status_effects.brittle.time 1

execute if predicate kohara:chance/20percent run particle minecraft:snowflake ~ ~1.2 ~ 0.25 0.5 0.25 0 1

execute if entity @s[nbt={HurtTime:10s}] run function stellarity:util/status_effects/brittle/damage

execute if score @s stellarity.status_effects.brittle.time matches 0 run function stellarity:util/status_effects/brittle/remove
