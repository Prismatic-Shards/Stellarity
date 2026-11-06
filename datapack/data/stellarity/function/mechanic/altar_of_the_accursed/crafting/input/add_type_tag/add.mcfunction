data modify storage stellarity:temp altar_of_the_accursed.item set from entity @s Item

scoreboard players set #is_stellarity stellarity.misc 0
execute if data storage stellarity:temp altar_of_the_accursed.item.components."minecraft:custom_data"."stellarity:item" run scoreboard players set #is_stellarity stellarity.misc 1
execute if data storage stellarity:temp altar_of_the_accursed.item.components."minecraft:custom_data"."stellarity.item" run scoreboard players set #is_stellarity stellarity.misc 1
execute if data storage stellarity:temp altar_of_the_accursed.item.components."minecraft:custom_data".stellarity.item run scoreboard players set #is_stellarity stellarity.misc 1

execute if score #is_stellarity stellarity.misc matches 0 run function stellarity:mechanic/altar_of_the_accursed/crafting/input/add_type_tag/if_not_stellarity_item
execute if score #is_stellarity stellarity.misc matches 1 run function stellarity:mechanic/altar_of_the_accursed/crafting/input/add_type_tag/if_stellarity_item

execute store result score @s stellarity.altar_of_the_accursed.count run data get storage stellarity:temp altar_of_the_accursed.item.count

function stellarity:mechanic/altar_of_the_accursed/crafting/input/add_type_tag/macro with storage stellarity:temp altar_of_the_accursed.macro

tag @s add stellarity.altar_of_the_accursed.checked_type

execute if items entity @s contents minecraft:elytra run tag @s add stellarity.altar_of_the_accursed.minecraft.elytra
execute if data entity @s {Item:{id:"minecraft:elytra"}} run tag @s add stellarity.altar_of_the_accursed.minecraft.elytra

execute if items entity @s contents #minecraft:trim_templates run tag @s add stellarity.altar.trim_template
execute if items entity @s contents #minecraft:trim_materials run tag @s add stellarity.altar.trim_material
execute if entity @s[tag=stellarity.altar_of_the_accursed.stellarity.chorus_plating] run tag @s add stellarity.altar.trim_material
execute if entity @s[tag=stellarity.altar_of_the_accursed.stellarity.enderite_shard] run tag @s add stellarity.altar.trim_material
execute if entity @s[tag=stellarity.altar_of_the_accursed.stellarity.enderite_ingot] run tag @s add stellarity.altar.trim_material

execute if items entity @s contents *[custom_data~{"stellarity:item":"kaleidoscope"}] run tag @s add stellarity.altar_of_the_accursed.stellarity.kaleidoscope
execute if items entity @s contents *[custom_data~{"stellarity:item":"radiant_kaleidoscope"}] run tag @s add stellarity.altar_of_the_accursed.stellarity.radiant_kaleidoscope
execute if items entity @s contents *[custom_data~{"stellarity:item":"radiant_jewel"}] run tag @s add stellarity.altar_of_the_accursed.stellarity.radiant_jewel
execute if items entity @s contents *[custom_data~{"stellarity:item":"starlight_soot"}] run tag @s add stellarity.altar_of_the_accursed.stellarity.starlight_soot
execute if items entity @s contents *[custom_data~{"stellarity:item":"chorus_plating"}] run tag @s add stellarity.altar_of_the_accursed.stellarity.chorus_plating
execute if items entity @s contents *[custom_data~{"stellarity:item":"enderite_shard"}] run tag @s add stellarity.altar_of_the_accursed.stellarity.enderite_shard
execute if items entity @s contents *[custom_data~{"stellarity:item":"enderite_ingot"}] run tag @s add stellarity.altar_of_the_accursed.stellarity.enderite_ingot
execute if items entity @s contents *[custom_data~{"stellarity:item":"enderite_smithing_template"}] run tag @s add stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template
execute if items entity @s contents *[custom_data~{"stellarity:item":"hallowed_ingot"}] run tag @s add stellarity.altar_of_the_accursed.stellarity.hallowed_ingot
execute if items entity @s contents *[custom_data~{"stellarity:item":"hallowed_chestplate"}] run tag @s add stellarity.altar_of_the_accursed.stellarity.hallowed_chestplate
execute if items entity @s contents *[custom_data~{"stellarity:item":"sharanga"}] run tag @s add stellarity.altar_of_the_accursed.stellarity.sharanga
execute if items entity @s contents *[custom_data~{"stellarity:item":"sand_rune"}] run tag @s add stellarity.altar_of_the_accursed.stellarity.sand_rune
execute if items entity @s contents *[custom_data~{"stellarity:item":"void_pendant"}] run tag @s add stellarity.altar_of_the_accursed.stellarity.void_pendant

execute if items entity @s contents minecraft:enchanted_book run tag @s add stellarity.altar_of_the_accursed.minecraft.enchanted_book
execute if items entity @s contents minecraft:book run tag @s add stellarity.altar_of_the_accursed.minecraft.book
execute if items entity @s contents minecraft:iron_ingot run tag @s add stellarity.altar_of_the_accursed.minecraft.iron_ingot
execute if items entity @s contents minecraft:popped_chorus_fruit run tag @s add stellarity.altar_of_the_accursed.minecraft.popped_chorus_fruit
execute if items entity @s contents minecraft:purpur_block run tag @s add stellarity.altar_of_the_accursed.minecraft.purpur_block
execute if items entity @s contents minecraft:ender_pearl run tag @s add stellarity.altar_of_the_accursed.minecraft.ender_pearl
execute if items entity @s contents minecraft:shield run tag @s add stellarity.altar_of_the_accursed.minecraft.shield
execute if items entity @s contents minecraft:bundle run tag @s add stellarity.altar_of_the_accursed.minecraft.bundle
execute if items entity @s contents minecraft:nether_star run tag @s add stellarity.altar_of_the_accursed.minecraft.nether_star
execute if items entity @s contents minecraft:netherite_ingot run tag @s add stellarity.altar_of_the_accursed.minecraft.netherite_ingot
execute if items entity @s contents minecraft:diamond run tag @s add stellarity.altar_of_the_accursed.minecraft.diamond
execute if items entity @s contents minecraft:phantom_membrane run tag @s add stellarity.altar_of_the_accursed.minecraft.phantom_membrane
execute if items entity @s contents minecraft:trident run tag @s add stellarity.altar_of_the_accursed.minecraft.trident
execute if items entity @s contents minecraft:breeze_rod run tag @s add stellarity.altar_of_the_accursed.minecraft.breeze_rod
execute if items entity @s contents minecraft:wither_skeleton_skull run tag @s add stellarity.altar_of_the_accursed.minecraft.wither_skeleton_skull
execute if items entity @s contents minecraft:glowstone_dust run tag @s add stellarity.altar_of_the_accursed.minecraft.glowstone_dust
execute if items entity @s contents minecraft:shulker_shell run tag @s add stellarity.altar_of_the_accursed.minecraft.shulker_shell
execute if items entity @s contents minecraft:water_bucket run tag @s add stellarity.altar_of_the_accursed.minecraft.water_bucket
execute if items entity @s contents minecraft:cherry_leaves run tag @s add stellarity.altar_of_the_accursed.minecraft.cherry_leaves
execute if items entity @s contents minecraft:amethyst_shard run tag @s add stellarity.altar_of_the_accursed.minecraft.amethyst_shard
execute if items entity @s contents minecraft:copper_ingot run tag @s add stellarity.altar_of_the_accursed.minecraft.copper_ingot
execute if items entity @s contents minecraft:gold_ingot run tag @s add stellarity.altar_of_the_accursed.minecraft.gold_ingot
execute if items entity @s contents minecraft:emerald run tag @s add stellarity.altar_of_the_accursed.minecraft.emerald
execute if items entity @s contents minecraft:lapis_lazuli run tag @s add stellarity.altar_of_the_accursed.minecraft.lapis_lazuli
execute if items entity @s contents minecraft:quartz run tag @s add stellarity.altar_of_the_accursed.minecraft.quartz
execute if items entity @s contents minecraft:redstone run tag @s add stellarity.altar_of_the_accursed.minecraft.redstone
execute if items entity @s contents minecraft:resin_brick run tag @s add stellarity.altar_of_the_accursed.minecraft.resin_brick
execute if items entity @s contents minecraft:bow run tag @s add stellarity.altar_of_the_accursed.minecraft.bow
execute if items entity @s contents minecraft:bow run tag @s add stellarity.altar_of_the_accursed.bow

execute if items entity @s contents minecraft:netherite_helmet run tag @s add stellarity.altar_of_the_accursed.minecraft.netherite_helmet
execute if items entity @s contents minecraft:netherite_chestplate run tag @s add stellarity.altar_of_the_accursed.minecraft.netherite_chestplate
execute if items entity @s contents minecraft:netherite_leggings run tag @s add stellarity.altar_of_the_accursed.minecraft.netherite_leggings
execute if items entity @s contents minecraft:netherite_boots run tag @s add stellarity.altar_of_the_accursed.minecraft.netherite_boots
execute if items entity @s contents minecraft:netherite_sword run tag @s add stellarity.altar_of_the_accursed.minecraft.netherite_sword
execute if items entity @s contents minecraft:netherite_spear run tag @s add stellarity.altar_of_the_accursed.minecraft.netherite_spear
execute if items entity @s contents minecraft:netherite_pickaxe run tag @s add stellarity.altar_of_the_accursed.minecraft.netherite_pickaxe
execute if items entity @s contents minecraft:netherite_axe run tag @s add stellarity.altar_of_the_accursed.minecraft.netherite_axe
execute if items entity @s contents minecraft:netherite_shovel run tag @s add stellarity.altar_of_the_accursed.minecraft.netherite_shovel
execute if items entity @s contents minecraft:netherite_hoe run tag @s add stellarity.altar_of_the_accursed.minecraft.netherite_hoe

execute if items entity @s contents minecraft:white_dye run tag @s add stellarity.altar_of_the_accursed.minecraft.white_dye
execute if items entity @s contents minecraft:light_gray_dye run tag @s add stellarity.altar_of_the_accursed.minecraft.light_gray_dye
execute if items entity @s contents minecraft:gray_dye run tag @s add stellarity.altar_of_the_accursed.minecraft.gray_dye
execute if items entity @s contents minecraft:black_dye run tag @s add stellarity.altar_of_the_accursed.minecraft.black_dye
execute if items entity @s contents minecraft:brown_dye run tag @s add stellarity.altar_of_the_accursed.minecraft.brown_dye
execute if items entity @s contents minecraft:red_dye run tag @s add stellarity.altar_of_the_accursed.minecraft.red_dye
execute if items entity @s contents minecraft:orange_dye run tag @s add stellarity.altar_of_the_accursed.minecraft.orange_dye
execute if items entity @s contents minecraft:yellow_dye run tag @s add stellarity.altar_of_the_accursed.minecraft.yellow_dye
execute if items entity @s contents minecraft:lime_dye run tag @s add stellarity.altar_of_the_accursed.minecraft.lime_dye
execute if items entity @s contents minecraft:green_dye run tag @s add stellarity.altar_of_the_accursed.minecraft.green_dye
execute if items entity @s contents minecraft:cyan_dye run tag @s add stellarity.altar_of_the_accursed.minecraft.cyan_dye
execute if items entity @s contents minecraft:light_blue_dye run tag @s add stellarity.altar_of_the_accursed.minecraft.light_blue_dye
execute if items entity @s contents minecraft:blue_dye run tag @s add stellarity.altar_of_the_accursed.minecraft.blue_dye
execute if items entity @s contents minecraft:purple_dye run tag @s add stellarity.altar_of_the_accursed.minecraft.purple_dye
execute if items entity @s contents minecraft:magenta_dye run tag @s add stellarity.altar_of_the_accursed.minecraft.magenta_dye
execute if items entity @s contents minecraft:pink_dye run tag @s add stellarity.altar_of_the_accursed.minecraft.pink_dye

particle minecraft:witch ~ ~.5 ~ 0 0 0 10 6 normal
particle minecraft:smoke ~ ~.5 ~ 0 0 0 0.02 6 normal
