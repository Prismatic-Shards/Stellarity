# Determine orientation from the magenta glazed terracotta indicator block underneath (~ ~-1 ~)

# Standard End City post-gen direction (used by rooms, towers, ship, decorations):
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=east] run data modify storage stellarity:temp end_city.post_gen.direction set value "clockwise_90"
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=west] run data modify storage stellarity:temp end_city.post_gen.direction set value "counterclockwise_90"
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=south] run data modify storage stellarity:temp end_city.post_gen.direction set value "180"
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=north] run data modify storage stellarity:temp end_city.post_gen.direction set value "none"

# Vault post-gen direction (used by vault, vault_elytra, vault_ominous with inverted mapping):
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=east] run data modify storage stellarity:temp end_city.vault_direction set value "west"
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=west] run data modify storage stellarity:temp end_city.vault_direction set value "east"
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=south] run data modify storage stellarity:temp end_city.vault_direction set value "north"
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=north] run data modify storage stellarity:temp end_city.vault_direction set value "south"
