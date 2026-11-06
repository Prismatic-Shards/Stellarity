execute if score @s kohara.misc matches 2 run data merge entity @s {transformation:{scale:[3f,3f,3f]},start_interpolation:-1}

execute if score @s kohara.misc matches 2 run data modify entity @s item.components."minecraft:custom_model_data".floats set value [1]
execute if score @s kohara.misc matches 3 run data modify entity @s item.components."minecraft:custom_model_data".floats set value [2]
execute if score @s kohara.misc matches 4 run data modify entity @s item.components."minecraft:custom_model_data".floats set value [3]
execute if score @s kohara.misc matches 5 run data modify entity @s item.components."minecraft:custom_model_data".floats set value [4]
execute if score @s kohara.misc matches 6 run data modify entity @s item.components."minecraft:custom_model_data".floats set value [5]
execute if score @s kohara.misc matches 7 run data modify entity @s item.components."minecraft:custom_model_data".floats set value [6]
execute if score @s kohara.misc matches 8 run data modify entity @s item.components."minecraft:custom_model_data".floats set value [7]

tp @s ^ ^ ^0.2
