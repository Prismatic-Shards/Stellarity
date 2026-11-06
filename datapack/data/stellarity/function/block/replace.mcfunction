$loot replace entity @s contents loot $(loot_table)

data modify entity @s data set from entity @s item.components."minecraft:entity_data".data
function stellarity:block/update_tags with entity @s data."stellarity:block"
