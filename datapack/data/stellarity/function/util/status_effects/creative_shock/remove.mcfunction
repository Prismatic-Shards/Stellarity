scoreboard players reset @s stellarity.status_effects.creative_shock.time

gamemode survival @s[gamemode=adventure]
attribute @s minecraft:block_break_speed modifier remove stellarity:creative_shock

tag @s remove stellarity.creative_shock

function kohara:status_effect/stop_ticking
