data modify storage kohara:temp item_nbt set from entity @s

execute if data storage kohara:temp item_nbt.Item{id:"minecraft:structure_void"} if data storage kohara:temp item_nbt.Item.components."minecraft:custom_data"."kohara:mob_death_sound" as @s run function kohara:items_tick_once/mob_death_sounds
function #kohara:item_tick_once

tag @s add kohara.ticked
