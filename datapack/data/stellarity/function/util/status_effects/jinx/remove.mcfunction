scoreboard players reset @s stellarity.status_effects.jinx.time
scoreboard players reset @s stellarity.status_effects.jinx.level
scoreboard players reset @s stellarity.status_effects.jinx.particle

attribute @s armor modifier remove stellarity:jinx
attribute @s armor_toughness modifier remove stellarity:jinx
attribute @s knockback_resistance modifier remove stellarity:jinx
attribute @s luck modifier remove stellarity:jinx

function kohara:status_effect/stop_ticking

tag @s remove stellarity.jinxed
