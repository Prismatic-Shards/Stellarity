tag @s add stellarity.rotated

execute store result entity @s Rotation[0] float 0.1 run random value -1800..1800
data modify entity @s Rotation[1] set value 0f

scoreboard players reset @s stellarity.misc
