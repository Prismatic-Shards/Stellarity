execute rotated as @p[predicate=stellarity:item/holding/starless_scythe] run tp @s ~ ~ ~ ~ ~

# execute store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]

data merge entity @s {transformation:{translation:[0f,-0.3f,0f],left_rotation:[0f,-0.95f,-0.75f,0f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]},teleport_duration:1,interpolation_duration:20,item:{components:{"minecraft:custom_model_data":{colors:[16777215,16777132]}}},brightness:{block:15,sky:15}}
