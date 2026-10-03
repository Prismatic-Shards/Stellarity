setblock ~ ~1 ~ air replace

execute if data storage stellarity:temp end_city.vault_direction run data modify storage stellarity:temp end_city.post_gen.direction set from storage stellarity:temp end_city.vault_direction
data remove storage stellarity:temp end_city.vault_direction

execute if block ~ ~ ~ command_block[facing=east] run data modify storage stellarity:temp end_city.post_gen.direction set value "west"
execute if block ~ ~ ~ command_block[facing=west] run data modify storage stellarity:temp end_city.post_gen.direction set value "east"
execute if block ~ ~ ~ command_block[facing=south] run data modify storage stellarity:temp end_city.post_gen.direction set value "north"
execute if block ~ ~ ~ command_block[facing=north] run data modify storage stellarity:temp end_city.post_gen.direction set value "south"

execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=east] run data modify storage stellarity:temp end_city.post_gen.direction set value "west"
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=west] run data modify storage stellarity:temp end_city.post_gen.direction set value "east"
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=south] run data modify storage stellarity:temp end_city.post_gen.direction set value "north"
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=north] run data modify storage stellarity:temp end_city.post_gen.direction set value "south"

function stellarity:structure/end_city/vault_macro with storage stellarity:temp end_city.post_gen
