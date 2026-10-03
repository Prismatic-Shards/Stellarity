summon marker ~ ~ ~ {Tags:["stellarity.marker","stellarity.end_city.small_tower_crystal","smithed.entity","smithed.strict"]}

setblock ~ ~1 ~ air
setblock ~ ~ ~ air

execute store result score #random stellarity.misc run random value 1..20

execute if score #random stellarity.misc matches 1..4 run setblock ~ ~-1 ~ iron_block
execute if score #random stellarity.misc matches 3..7 run setblock ~ ~-1 ~ gold_block
execute if score #random stellarity.misc matches 8 run setblock ~ ~-1 ~ diamond_block
execute if score #random stellarity.misc matches 9..11 run setblock ~ ~-1 ~ emerald_block
execute if score #random stellarity.misc matches 12..20 run setblock ~ ~-1 ~ purpur_block
