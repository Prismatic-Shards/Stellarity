# Called by a 1 second loop

effect give @s regeneration 3 0 false
effect give @s resistance 3 0 false

effect clear @s weakness
effect clear @s slowness

attribute @s minecraft:knockback_resistance modifier add stellarity:book_of_light 0.15 add_value
