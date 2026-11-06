data modify storage stellarity:temp cauldron_crafting.item set from entity @s item

execute if data storage stellarity:temp cauldron_crafting.item.components."minecraft:custom_data"."stellarity:item" run \
data modify storage stellarity:temp cauldron_crafting.ingredients append from storage stellarity:temp cauldron_crafting.item.components."minecraft:custom_data"."stellarity:item"

execute unless data storage stellarity:temp cauldron_crafting.item.components."minecraft:custom_data"."stellarity:item" run \
function stellarity:mechanic/cauldron_crafting/list_insides/minecraft with storage stellarity:temp cauldron_crafting.item

execute store result storage stellarity:temp cauldron_crafting.amount int 1 run data get storage stellarity:temp cauldron_crafting.ingredients
