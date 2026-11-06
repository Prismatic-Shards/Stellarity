advancement revoke @s only stellarity:event/item/food/eat_frozen_carpaccio

execute store result score #random stellarity.misc run random value 1..10

# 1 - 5 do nothing
# Essentially a 50% chance for a random effect for 30 seconds

execute if score #random stellarity.misc matches 5 run effect give @s absorption
execute if score #random stellarity.misc matches 6 run effect give @s strength
execute if score #random stellarity.misc matches 7 run effect give @s regeneration
execute if score #random stellarity.misc matches 8 run effect give @s resistance
execute if score #random stellarity.misc matches 9 run effect give @s jump_boost
execute if score #random stellarity.misc matches 10 run effect give @s speed
