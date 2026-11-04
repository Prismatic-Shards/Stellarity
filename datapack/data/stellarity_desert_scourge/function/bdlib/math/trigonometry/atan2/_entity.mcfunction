execute store result entity @s Pos[0] double .01 run scoreboard players get #Y bdlib.math.atan2
execute store result entity @s Pos[2] double .01 run scoreboard players get #X bdlib.math.atan2
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
return run data get entity @s Rotation[0] -100