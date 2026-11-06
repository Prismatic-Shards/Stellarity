execute unless entity @s[scores={stellarity.status_effects.voided.time=1..}] run playsound stellarity:effect.voided.activate neutral @a ~ ~ ~ 0.75 1

scoreboard players operation @s stellarity.status_effects.voided.time = #effect.duration stellarity.misc
scoreboard players operation @s stellarity.status_effects.voided.level = #effect.level stellarity.misc

execute store result storage stellarity:temp status_effects.voided.value float 0.2 run scoreboard players get #effect.level stellarity.misc

function stellarity:util/status_effects/voided/attributes with storage stellarity:temp status_effects.voided

tag @s add kohara.status_effect.tick
