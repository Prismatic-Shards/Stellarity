$data modify storage stellarity:temp altar_of_the_accursed.item set from entity @n[type=item,tag=stellarity.altar_of_the_accursed.$(parent),distance=..2.5] Item.components
data modify storage stellarity:temp altar_of_the_accursed.enchants set from storage stellarity:temp altar_of_the_accursed.item."minecraft:enchantments"

$data modify storage stellarity:temp altar.craft set value {type:"weapon",loot:"$(loot)"}
function stellarity:mechanic/altar_common/start_craft
