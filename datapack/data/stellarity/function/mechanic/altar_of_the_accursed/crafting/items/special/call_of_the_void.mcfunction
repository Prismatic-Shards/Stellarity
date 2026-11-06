data modify storage stellarity:temp altar_of_the_accursed.item set from entity @n[type=item,tag=stellarity.altar_of_the_accursed.bow,distance=..2.5] Item.components
data modify storage stellarity:temp altar_of_the_accursed.enchants set from storage stellarity:temp altar_of_the_accursed.item."minecraft:enchantments"
data modify storage stellarity:temp altar_of_the_accursed.enchants.levels."stellarity:void_shot" set value 1

data modify storage stellarity:temp altar.craft set value {type:"call_of_the_void"}
function stellarity:mechanic/altar_common/start_craft
