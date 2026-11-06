scoreboard players reset @s stellarity.dot.holy_flames.time
scoreboard players reset @s stellarity.dot.holy_flames.damage
scoreboard players reset @s stellarity.dot.holy_flames.delay
scoreboard players reset @s stellarity.dot.holy_flames.progress

data modify entity @s[scores={stellarity.dot.holy_flames.had_visual_fire=0}] HasVisualFire set value 0b
scoreboard players reset @s stellarity.dot.holy_flames.had_visual_fire

tag @s remove stellarity.holy_flames.burning

function kohara:status_effect/stop_ticking
