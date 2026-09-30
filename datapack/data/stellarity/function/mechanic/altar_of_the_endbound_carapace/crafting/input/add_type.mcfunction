data modify storage stellarity:temp altar_carapace.item set from entity @s Item

# Template
execute if data storage stellarity:temp altar_carapace.item.components."minecraft:custom_data"{"stellarity:item":"enderite_smithing_template"} run tag @s add stellarity.altar_carapace.template

# Shulker Shell
execute if data storage stellarity:temp altar_carapace.item{id:"minecraft:shulker_shell"} run tag @s add stellarity.altar_carapace.shulker_shell

# Netherite Tools
execute if data storage stellarity:temp altar_carapace.item{id:"minecraft:netherite_pickaxe"} run tag @s add stellarity.altar_carapace.netherite_pickaxe
execute if data storage stellarity:temp altar_carapace.item{id:"minecraft:netherite_axe"} run tag @s add stellarity.altar_carapace.netherite_axe
execute if data storage stellarity:temp altar_carapace.item{id:"minecraft:netherite_sword"} run tag @s add stellarity.altar_carapace.netherite_sword
execute if data storage stellarity:temp altar_carapace.item{id:"minecraft:netherite_spear"} run tag @s add stellarity.altar_carapace.netherite_spear
execute if data storage stellarity:temp altar_carapace.item{id:"minecraft:netherite_shovel"} run tag @s add stellarity.altar_carapace.netherite_shovel
execute if data storage stellarity:temp altar_carapace.item{id:"minecraft:netherite_hoe"} run tag @s add stellarity.altar_carapace.netherite_hoe

tag @s add stellarity.altar_of_the_endbound_carapace.checked_type
particle minecraft:witch ~ ~0.5 ~ 0 0 0 10 4 normal
