data modify storage stellarity:temp altar_of_the_accursed.item set from entity @n[type=item,tag=stellarity.altar_of_the_accursed.stellarity.hallowed_chestplate,distance=..2.5] Item.components
data modify storage stellarity:temp altar_of_the_accursed.enchants set from storage stellarity:temp altar_of_the_accursed.item."minecraft:enchantments"
data modify storage stellarity:temp altar_of_the_accursed.trim set from storage stellarity:temp altar_of_the_accursed.item."minecraft:trim"

# Read Elytra enchantments and merge
data modify storage stellarity:temp altar_of_the_accursed.elytra_enchants set from entity @n[type=item,tag=stellarity.altar_of_the_accursed.minecraft.elytra,distance=..2.5] Item.components."minecraft:enchantments"
data modify storage stellarity:temp altar_of_the_accursed.enchants merge from storage stellarity:temp altar_of_the_accursed.elytra_enchants
data modify storage stellarity:temp altar_of_the_accursed.enchants.levels merge from storage stellarity:temp altar_of_the_accursed.elytra_enchants.levels

# If chestplate didn't have a trim, preserve trim from the Elytra
execute unless data storage stellarity:temp altar_of_the_accursed.trim run data modify storage stellarity:temp altar_of_the_accursed.trim set from entity @n[type=item,tag=stellarity.altar_of_the_accursed.minecraft.elytra,distance=..2.5] Item.components."minecraft:trim"

# Check elytra variant
data modify storage stellarity:temp altar_of_the_accursed.elytra_type set from entity @n[type=item,tag=stellarity.altar_of_the_accursed.minecraft.elytra,distance=..2.5] Item.components."minecraft:custom_data"."stellarity:item"

data modify storage stellarity:temp altar.craft set value {type:"hallowed_elytra",loot:"stellarity:item/armor/hallowed/elytra"}
execute if data storage stellarity:temp {altar_of_the_accursed:{elytra_type:"dragon_wings"}} run data modify storage stellarity:temp altar.craft.loot set value "stellarity:item/armor/hallowed/dragon_wings"
execute if data storage stellarity:temp {altar_of_the_accursed:{elytra_type:"empress_wings"}} run data modify storage stellarity:temp altar.craft.loot set value "stellarity:item/armor/hallowed/empress_wings"
execute if data storage stellarity:temp {altar_of_the_accursed:{elytra_type:"phantom_wings"}} run data modify storage stellarity:temp altar.craft.loot set value "stellarity:item/armor/hallowed/phantom_wings"

function stellarity:mechanic/altar_common/start_craft
