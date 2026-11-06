scoreboard players add @s stellarity.misc 1

execute if score @s stellarity.misc matches 1 run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 1f
execute if score @s stellarity.misc matches 2 run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 2f
execute if score @s stellarity.misc matches 3 run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 3f
execute if score @s stellarity.misc matches 4 run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 4f
execute if score @s stellarity.misc matches 5 run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 5f
execute if score @s stellarity.misc matches 6 run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 6f
execute if score @s stellarity.misc matches 7 run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 7f
execute if score @s stellarity.misc matches 8 run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 8f

execute if score @s stellarity.misc matches 9 run kill @s
