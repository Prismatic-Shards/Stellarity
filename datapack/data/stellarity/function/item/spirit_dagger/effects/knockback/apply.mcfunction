execute store result score @s stellarity.misc.motion.x1 run data get entity @s Pos.[0] 1000
execute store result score @s stellarity.misc.motion.y1 run data get entity @s Pos.[1] 1000
execute store result score @s stellarity.misc.motion.z1 run data get entity @s Pos.[2] 1000

scoreboard players reset #times stellarity.misc
execute facing entity @p[predicate=stellarity:item/holding/spirit_dagger/both] feet rotated ~180 0 run function stellarity:item/spirit_dagger/effects/knockback/get_distance

execute store result score @s stellarity.misc.motion.x2 run data get entity @s Pos.[0] 1000
execute store result score @s stellarity.misc.motion.y2 run data get entity @s Pos.[1] 1000
execute store result score @s stellarity.misc.motion.z2 run data get entity @s Pos.[2] 1000

scoreboard players operation @s stellarity.misc.motion.x2 -= @s stellarity.misc.motion.x1
scoreboard players operation @s stellarity.misc.motion.y2 -= @s stellarity.misc.motion.y1
scoreboard players operation @s stellarity.misc.motion.z2 -= @s stellarity.misc.motion.z1

execute store result entity @s Motion.[0] double 0.01 run scoreboard players get @s stellarity.misc.motion.x2
execute store result entity @s Motion.[1] double 0.01 run scoreboard players get @s stellarity.misc.motion.y2
execute store result entity @s Motion.[2] double 0.01 run scoreboard players get @s stellarity.misc.motion.z2
