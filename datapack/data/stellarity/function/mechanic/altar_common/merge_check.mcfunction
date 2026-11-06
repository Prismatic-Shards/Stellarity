execute unless entity @s run return 0

execute unless entity @s[tag=stellarity.altar_of_the_accursed.checked_type] run function stellarity:mechanic/altar_of_the_accursed/crafting/input/add_type_tag/add

data modify storage stellarity:temp altar_of_the_accursed.item set from entity @s Item
scoreboard players set #is_stellarity stellarity.misc 0
execute if data storage stellarity:temp altar_of_the_accursed.item.components."minecraft:custom_data"."stellarity:item" run scoreboard players set #is_stellarity stellarity.misc 1
execute if data storage stellarity:temp altar_of_the_accursed.item.components."minecraft:custom_data"."stellarity.item" run scoreboard players set #is_stellarity stellarity.misc 1
execute if data storage stellarity:temp altar_of_the_accursed.item.components."minecraft:custom_data".stellarity.item run scoreboard players set #is_stellarity stellarity.misc 1
execute if score #is_stellarity stellarity.misc matches 0 run function stellarity:mechanic/altar_of_the_accursed/crafting/input/add_type_tag/if_not_stellarity_item
execute if score #is_stellarity stellarity.misc matches 1 run function stellarity:mechanic/altar_of_the_accursed/crafting/input/add_type_tag/if_stellarity_item

tag @s add stellarity.altar.merge_source

execute store result score #merge_src_count stellarity.misc run data get entity @s Item.count

execute if score #merge_src_count stellarity.misc matches 64.. run tag @s remove stellarity.altar.merge_source
execute if score #merge_src_count stellarity.misc matches 64.. run return 0

execute as @e[type=item,distance=0.01..2.5,tag=!stellarity.altar.skip,tag=!stellarity.altar_of_the_accursed.checked_type] run function stellarity:mechanic/altar_of_the_accursed/crafting/input/add_type_tag/add

execute as @e[type=item,distance=0.01..2.5,tag=!stellarity.altar.skip,tag=!stellarity.altar.merge_source,tag=!stellarity.altar.in_craft,limit=1] at @s run function stellarity:mechanic/altar_common/macro_merge_compare with storage stellarity:temp altar_of_the_accursed.macro

tag @s remove stellarity.altar.merge_source
