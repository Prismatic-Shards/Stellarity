execute store result storage stellarity_desert_scourge:temp spawn.rotation int 1 run random value 0..360
function stellarity_desert_scourge:sand_tornado/spawn_macros with storage stellarity_desert_scourge:temp spawn

execute store result score *tornado_y math run data get entity @s Pos[1] 10
execute if score *tornado_y math matches ..300 run kill @s
execute unless entity @s run return 0

data merge entity @s {width:1.5f,height:6f,response:1b,Tags:["sand.tornado"]}

execute at @s run summon item_display ~ ~ ~ {teleport_duration:2,Tags:["sand.tornado.vfx","set.ride","1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[ 0.087f,0f,0f,0.996f],translation:[0f,0f,0f],scale:[3f,3f,3f],translation:[0f,5.5f,0f]},item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":{floats:[2385706f]},"minecraft:firework_explosion":{shape:"small_ball"}}}}
execute at @s run summon item_display ~ ~ ~ {teleport_duration:2,Tags:["sand.tornado.vfx","set.ride","2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[ 0.087f,0f,0f,0.996f],translation:[0f,0f,0f],scale:[2.5f,3f,2.5f],translation:[0f,4.5f,0f]},item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":{floats:[2385706f]},"minecraft:firework_explosion":{shape:"small_ball"}}}}
execute at @s run summon item_display ~ ~ ~ {teleport_duration:2,Tags:["sand.tornado.vfx","set.ride","3"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[ 0.087f,0f,0f,0.996f],translation:[0f,0f,0f],scale:[2f,3f,2f],translation:[0f,3.5f,0f]},item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":{floats:[2385706f]},"minecraft:firework_explosion":{shape:"small_ball"}}}}
execute at @s run summon item_display ~ ~ ~ {teleport_duration:2,Tags:["sand.tornado.vfx","set.ride","4"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[ 0.087f,0f,0f,0.996f],translation:[0f,0f,0f],scale:[1.5f,3f,1.5f],translation:[0f,2.5f,0f]},item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":{floats:[2385706f]},"minecraft:firework_explosion":{shape:"small_ball"}}}}
execute at @s run summon item_display ~ ~ ~ {teleport_duration:2,Tags:["sand.tornado.vfx","set.ride","5"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[ 0.087f,0f,0f,0.996f],translation:[0f,0f,0f],scale:[1f,3f,1f],translation:[0f,1.5f,0f]},item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":{floats:[2385706f]},"minecraft:firework_explosion":{shape:"small_ball"}}}}
tag @s add save.vehicle
execute at @s as @e[type=item_display,tag=sand.tornado.vfx,tag=set.ride,distance=..0.1,limit=5] run ride @s mount @e[type=interaction,tag=save.vehicle,limit=1,distance=..0.1]
tag @s add save.vehicle
execute at @s run tag @e[type=item_display,tag=sand.tornado.vfx,tag=set.ride,distance=..0.1,limit=5] remove set.ride