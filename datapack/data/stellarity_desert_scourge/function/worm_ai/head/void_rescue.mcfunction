# Void rescue: teleports the boss head back onto the End island under the target player
execute at @a[tag=id,tag=target,limit=1] positioned over motion_blocking run tp @s ~ ~-4 ~
scoreboard players set @s wormRotation.X -450
scoreboard players operation #X bdlib.quaternion = @s wormRotation.X
scoreboard players operation #X bdlib.quaternion /= #10 bdlib.const
tag @s add digged
execute store result score *y1 math run data get entity @s Pos[1] 10
