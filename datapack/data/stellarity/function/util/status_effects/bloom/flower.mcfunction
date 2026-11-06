# Petals
execute if score @s stellarity.status_effects.bloom.damage matches ..99 run particle minecraft:dust{color:[1.0, 0.475, 0.8], scale:1.0} ^ ^1.25 ^ 0.15 0.15 0.15 1 5 force @a[distance=..64]
execute if score @s stellarity.status_effects.bloom.damage matches 100..199 run particle minecraft:dust{color:[1.0, 0.475, 0.8], scale:1.15} ^ ^1.3 ^ 0.175 0.175 0.175 1 5 force @a[distance=..64]
execute if score @s stellarity.status_effects.bloom.damage matches 200..299 run particle minecraft:dust{color:[1.0, 0.475, 0.8], scale:1.3} ^ ^1.35 ^ 0.2 0.2 0.2 1 5 force @a[distance=..64]
execute if score @s stellarity.status_effects.bloom.damage matches 300.. run particle minecraft:dust{color:[1.0, 0.475, 0.8], scale:1.35} ^ ^1.4 ^ 0.225 0.225 0.225 1 5 force @a[distance=..64]

# Pollen
execute if score @s[predicate=kohara:chance/10percent] stellarity.status_effects.bloom.damage matches 100..199 run particle falling_nectar ^ ^1.3 ^ 0.175 0.175 0.175 1 1 normal
execute if score @s[predicate=kohara:chance/33percent] stellarity.status_effects.bloom.damage matches 200..299 run particle falling_nectar ^ ^1.35 ^ 0.2 0.2 0.2 1 1 normal
execute if score @s[predicate=kohara:chance/50percent] stellarity.status_effects.bloom.damage matches 300.. run particle falling_nectar ^ ^1.4 ^ 0.225 0.225 0.225 1 1 normal

particle minecraft:dust{color:[0.337, 0.867, 0.208], scale:0.8} ^ ^0.95 ^ 0.01 0.2 0.01 1 3 force @a[distance=..64]
