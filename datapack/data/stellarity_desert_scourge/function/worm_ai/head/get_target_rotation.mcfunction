tp @s ~ ~ ~ ~ ~
execute store result score *target wormRotation.Y run data get entity @s Rotation[0] 10
execute store result score *target wormRotation.X run data get entity @s Rotation[1] 10
kill @s