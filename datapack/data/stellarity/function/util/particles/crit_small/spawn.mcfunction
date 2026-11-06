data merge entity @s {brightness:{block:15,sky:15},item:{components:{"minecraft:custom_model_data":{floats:[]}}}}
execute store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run random value 0..3
