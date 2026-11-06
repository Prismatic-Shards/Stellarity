$execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["$(id)"]}} run function stellarity:mechanic/cauldron_crafting/list_insides/macro_prepare {id:"$(id)"}

$execute unless data storage stellarity:temp {cauldron_crafting:{ingredients:["$(id)"]}} run data modify storage stellarity:temp cauldron_crafting.ingredients append from storage stellarity:temp cauldron_crafting.item.id
