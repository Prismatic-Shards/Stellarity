scoreboard players reset @s stellarity.dot.prismatic_inferno.time
scoreboard players reset @s stellarity.dot.prismatic_inferno.damage
scoreboard players reset @s stellarity.dot.prismatic_inferno.delay
scoreboard players reset @s stellarity.dot.prismatic_inferno.progress

data modify entity @s[scores={stellarity.dot.prismatic_inferno.had_visual_fire=0}] HasVisualFire set value 0b
scoreboard players reset @s stellarity.dot.prismatic_inferno.had_visual_fire

tag @s remove stellarity.prismatic_inferno.burning

function kohara:status_effect/stop_ticking
