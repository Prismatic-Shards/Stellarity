scoreboard players add @s stellarity.misc 1

execute if score @s stellarity.misc matches 3 run data modify entity @s item.components."minecraft:custom_model_data" set value {floats:[1]}
execute if score @s stellarity.misc matches 4 run data modify entity @s item.components."minecraft:custom_model_data" set value {floats:[2]}
execute if score @s stellarity.misc matches 5 run data modify entity @s item.components."minecraft:custom_model_data" set value {floats:[3]}

execute if score @s stellarity.misc matches 6 run kill @s
