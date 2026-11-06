execute store result score #random stellarity.misc run random value 1..4

execute if score #random stellarity.misc matches 1 run \
item replace entity @s armor.feet with leather_boots[dyed_color=3698838]
execute if score #random stellarity.misc matches 2 run \
item replace entity @s armor.feet with leather_boots[dyed_color=90272]
execute if score #random stellarity.misc matches 3 run \
item replace entity @s armor.feet with leather_boots[dyed_color=1449354]
execute if score #random stellarity.misc matches 4 run \
item replace entity @s armor.feet with leather_boots[dyed_color=6134210]

execute if score #stellarity.config stellarity.config.enable_harvester_mb matches 1 if predicate kohara:chance/1percent run function stellarity:entity/voided_skeleton/harvester_miniboss
