setblock ~ ~1 ~ air replace

execute if block ~ ~ ~ command_block[facing=east] run data modify storage stellarity:temp end_city.post_gen.direction set value "west"
execute if block ~ ~ ~ command_block[facing=west] run data modify storage stellarity:temp end_city.post_gen.direction set value "east"
execute if block ~ ~ ~ command_block[facing=south] run data modify storage stellarity:temp end_city.post_gen.direction set value "north"
execute if block ~ ~ ~ command_block[facing=north] run data modify storage stellarity:temp end_city.post_gen.direction set value "south"

function stellarity:structure/end_city/vault_macro with storage stellarity:temp end_city.post_gen
