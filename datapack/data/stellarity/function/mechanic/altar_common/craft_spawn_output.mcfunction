# Generic craft
execute if data storage stellarity:temp {altar:{craft:{type:"generic"}}} run function stellarity:mechanic/altar_common/craft_output/loot_macro with storage stellarity:temp altar.craft

# Weapon craft
execute if data storage stellarity:temp {altar:{craft:{type:"weapon"}}} run function stellarity:mechanic/altar_common/craft_output/loot_macro with storage stellarity:temp altar.craft
execute if data storage stellarity:temp {altar:{craft:{type:"weapon"}}} run data modify entity @n[type=item,tag=!stellarity.altar_of_the_accursed.checked_type,distance=..1.5] Item.components."minecraft:enchantments" set from storage stellarity:temp altar_of_the_accursed.enchants
execute if data storage stellarity:temp {altar:{craft:{type:"weapon"}}} run data modify entity @n[type=item,tag=!stellarity.altar_of_the_accursed.checked_type,distance=..1.5] Item.components."minecraft:trim" set from storage stellarity:temp altar_of_the_accursed.item."minecraft:trim"
execute if data storage stellarity:temp {altar:{craft:{loot:"stellarity:item/weapon/radiant_kaleidoscope"}}} run data remove entity @n[type=item,tag=!stellarity.altar_of_the_accursed.checked_type,distance=..1.5] Item.components."minecraft:enchantments"."stellarity:_technical/daybroken"
execute if data storage stellarity:temp {altar:{craft:{loot:"stellarity:item/weapon/radiant_kaleidoscope"}}} run data modify entity @n[type=item,tag=!stellarity.altar_of_the_accursed.checked_type,distance=..1.5] Item.components."minecraft:enchantments"."stellarity:_technical/iridescence" set value 1
execute if data storage stellarity:temp {altar:{craft:{loot:"stellarity:item/weapon/radiant_kaleidoscope_ascended"}}} run data remove entity @n[type=item,tag=!stellarity.altar_of_the_accursed.checked_type,distance=..1.5] Item.components."minecraft:enchantments"."stellarity:_technical/daybroken"
execute if data storage stellarity:temp {altar:{craft:{loot:"stellarity:item/weapon/radiant_kaleidoscope_ascended"}}} run data modify entity @n[type=item,tag=!stellarity.altar_of_the_accursed.checked_type,distance=..1.5] Item.components."minecraft:enchantments"."stellarity:_technical/iridescence" set value 1

# Armor craft
execute if data storage stellarity:temp {altar:{craft:{type:"armor"}}} run function stellarity:mechanic/altar_common/craft_output/loot_macro with storage stellarity:temp altar.craft
execute if data storage stellarity:temp {altar:{craft:{type:"armor"}}} run data modify entity @n[type=item,tag=!stellarity.altar_of_the_accursed.checked_type,distance=..1.5] Item.components."minecraft:enchantments" set from storage stellarity:temp altar_of_the_accursed.enchants
execute if data storage stellarity:temp {altar:{craft:{type:"armor"}}} run data modify entity @n[type=item,tag=!stellarity.altar_of_the_accursed.checked_type,distance=..1.5] Item.components."minecraft:trim" set from storage stellarity:temp altar_of_the_accursed.trim

# Hallowed Elytra craft
execute if data storage stellarity:temp {altar:{craft:{type:"hallowed_elytra"}}} run function stellarity:mechanic/altar_common/craft_output/loot_macro with storage stellarity:temp altar.craft
execute if data storage stellarity:temp {altar:{craft:{type:"hallowed_elytra"}}} run data modify entity @n[type=item,tag=!stellarity.altar_of_the_accursed.checked_type,distance=..1.5] Item.components."minecraft:enchantments" set from storage stellarity:temp altar_of_the_accursed.enchants
execute if data storage stellarity:temp {altar:{craft:{type:"hallowed_elytra"}}} run data modify entity @n[type=item,tag=!stellarity.altar_of_the_accursed.checked_type,distance=..1.5] Item.components."minecraft:trim" set from storage stellarity:temp altar_of_the_accursed.trim

# Dye Elytra craft
execute if data storage stellarity:temp {altar:{craft:{type:"dye_elytra"}}} run function stellarity:mechanic/altar_of_the_accursed/crafting/dye_elytra/finish_color with storage stellarity:temp altar.craft

# Trim Elytra craft
execute if data storage stellarity:temp {altar:{craft:{type:"trim_elytra"}}} run function stellarity:mechanic/altar_common/craft_output/trim_elytra_macro with storage stellarity:temp altar.craft
execute if data storage stellarity:temp {altar:{craft:{type:"trim_elytra"}}} as @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.elytra,limit=1] run data merge entity @s {PickupDelay:0s,NoGravity:0b,Age:0s}
execute if data storage stellarity:temp {altar:{craft:{type:"trim_elytra"}}} run playsound minecraft:item.smithing_table.use block @a ~ ~0.5 ~ 1.0 1.0
execute if data storage stellarity:temp {altar:{craft:{type:"trim_elytra"}}} run particle minecraft:wax_on ~ ~0.5 ~ 0.2 0.2 0.2 0.05 16 normal

# Special crafts
execute if data storage stellarity:temp {altar:{craft:{type:"smithing_template"}}} run loot spawn ~ ~-.4 ~ loot stellarity:item/material/enderite_smithing_template
execute if data storage stellarity:temp {altar:{craft:{type:"smithing_template"}}} run loot spawn ~ ~-.4 ~ loot stellarity:item/material/enderite_smithing_template
execute if data storage stellarity:temp {altar:{craft:{type:"endonomicon"}}} run loot spawn ~ ~-.4 ~ loot stellarity:item/book/endonomicon
execute if data storage stellarity:temp {altar:{craft:{type:"call_of_the_void"}}} run loot spawn ~ ~-.4 ~ loot stellarity:item/weapon/call_of_the_void
execute if data storage stellarity:temp {altar:{craft:{type:"void_pendant"}}} run function stellarity:mechanic/altar_common/craft_output/loot_macro with storage stellarity:temp altar.craft

# Mark newly spawned items so they can be picked up freely
tag @e[type=item,distance=..2.5,tag=!stellarity.altar_of_the_accursed.checked_type] add stellarity.altar_of_the_accursed.skip
tag @e[type=item,distance=..2.5,tag=!stellarity.altar_of_the_accursed.checked_type] add stellarity.altar.skip
execute as @e[type=item,distance=..2.5,tag=stellarity.altar.skip] run data merge entity @s {PickupDelay:0s,NoGravity:0b}
tag @e[type=item,distance=..2.5] remove stellarity.altar.in_craft
tag @e[type=item,distance=..2.5] remove stellarity.altar.captured
