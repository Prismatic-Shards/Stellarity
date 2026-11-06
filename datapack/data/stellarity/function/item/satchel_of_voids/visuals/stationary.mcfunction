tp @s ~ ~ ~ ~-4 ~

# particle smoke ~ ~-0.3 ~ 0.05 0.3 0.05 0 1 force @a[distance=..32]

particle minecraft:dust_color_transition{from_color: [0.824, 0.145, 0.86], scale: 1.33, to_color: [0.322, 0.055, 0.38]} ^ ^-1.35 ^1.25 0 0 0 0 1 normal
particle minecraft:dust_color_transition{from_color: [0.824, 0.145, 0.86], scale: 1.33, to_color: [0.322, 0.055, 0.38]} ^ ^-1.35 ^-1.25 0 0 0 0 1 normal

particle smoke ~ ~-0.3 ~ 0.05 0.3 0.05 0 1 force @a[distance=..32]

execute if predicate kohara:chance/33percent run particle enchant ~ ~ ~ 0 0 0 1 1 force @a[distance=..32]
execute if predicate kohara:chance/33percent run particle vault_connection ~ ~ ~ 0 0 0 1 1 force @a[distance=..32]
