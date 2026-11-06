execute as @p[predicate=stellarity:void_fishing/holding_fishing_rod/any] run function stellarity:mechanic/void_fishing/as_player/get_hand

execute if score #mainhand stellarity.misc matches 1 store result score @s stellarity.misc run data get entity @p[predicate=stellarity:void_fishing/holding_fishing_rod/any] SelectedItem.components."minecraft:enchantments"."minecraft:lure" 1
execute if score #offhand stellarity.misc matches 1 store result score @s stellarity.misc run data get entity @p[predicate=stellarity:void_fishing/holding_fishing_rod/any] equipment.offhand.components."minecraft:enchantments"."minecraft:lure" 1
