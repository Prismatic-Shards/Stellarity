data modify storage stellarity:temp end_crystal set from entity @s

execute if data storage stellarity:temp end_crystal.attack run function stellarity:mechanic/end_crystal/action/left_click
execute if data storage stellarity:temp end_crystal.interaction run function stellarity:mechanic/end_crystal/action/right_click

execute unless entity @e[type=end_crystal,tag=stellarity.end_crystal,distance=..0.0001] run kill @s

execute if predicate kohara:chance/25percent run particle minecraft:end_rod ^ ^1 ^ 0.5 0.5 0.5 0.023 1 normal @a
particle minecraft:portal ^ ^1 ^ 0 0 0 0.7 2 normal @a
