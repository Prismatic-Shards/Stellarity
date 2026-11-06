scoreboard players operation @s stellarity.status_effects.creative_shock.time = #effect.duration stellarity.misc

attribute @s minecraft:block_break_speed modifier add stellarity:creative_shock -1 add_multiplied_total

playsound minecraft:entity.elder_guardian.curse player @s[tag=!stellarity.creative_shock] ~ ~ ~ 1 0.9
particle minecraft:elder_guardian ~ ~ ~ 0 0 0 0 1 force @s[tag=!stellarity.creative_shock]

tag @s add kohara.status_effect.tick
tag @s add stellarity.creative_shock
