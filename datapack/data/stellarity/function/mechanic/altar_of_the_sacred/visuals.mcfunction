# Base sparkles and divine rays
particle firework ~ ~-0.2 ~ 0.25 0.25 0.25 0.01 1 force @a[distance=..48]
particle witch ~ ~ ~ 0.05 0.4 0.05 0 1 force @a[distance=..48]

# Holy golden and celestial dust
particle minecraft:dust{color:[0.98, 0.85, 0.35], scale:1.0} ~ ~-0.1 ~ 0.2 0.25 0.2 0 2 force @a[distance=..48]
particle minecraft:dust_color_transition{from_color:[1.0, 0.92, 0.4], to_color:[0.5, 0.9, 1.0], scale:0.8} ~ ~0.1 ~ 0.15 0.3 0.15 0 2 force @a[distance=..48]

# Divine aura column
execute if predicate kohara:chance/25percent run particle end_rod ~ ~0.2 ~ 0.08 0.3 0.08 0.02 1 force @a[distance=..48]
execute if predicate kohara:chance/33percent run particle enchant ~ ~ ~ 0 0 0 1 1 force @a[distance=..48]
execute if predicate kohara:chance/10percent run particle totem_of_undying ~ ~0.1 ~ 0.15 0.2 0.15 0.02 2 force @a[distance=..48]

# If items are present, emit active sanctified glow
execute if score @s stellarity.altar_items matches 1.. run particle wax_off ~ ~0.3 ~ 0.3 0.15 0.3 0.01 2 force @a[distance=..48]

