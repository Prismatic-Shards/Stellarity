execute at @a[tag=id,tag=target,limit=1] positioned over world_surface run summon marker ~ ~ ~ {Tags:["worm.player_target"]}
execute store result score *x math run data get entity @s Pos[0] 100
execute store result score *z math run data get entity @s Pos[2] 100

execute store result score #X bdlib.vector run data get entity @e[type=marker,tag=worm.player_target,limit=1] Pos[0] 100
execute store result score *y1 math run data get entity @e[type=marker,tag=worm.player_target,limit=1] Pos[1] 100
execute if score *y1 math matches ..3500 as @e[type=marker,tag=worm.player_target,limit=1] run tp @s ~ 60 ~
execute if score *y1 math matches ..3500 run scoreboard players set *y1 math 6000
execute store result score #Z bdlib.vector run data get entity @e[type=marker,tag=worm.player_target,limit=1] Pos[2] 100

scoreboard players operation #X bdlib.vector -= *x math
scoreboard players set #Y bdlib.vector 0
scoreboard players operation #Z bdlib.vector -= *z math
function stellarity_desert_scourge:bdlib/vector/get_distance/init
scoreboard players remove #OUT bdlib.vector 1000
scoreboard players operation #OUT bdlib.vector > #0 bdlib.const
scoreboard players operation #OUT bdlib.vector < *3000 const
scoreboard players operation #OUT bdlib.vector /= #5 bdlib.const

execute store result entity @e[type=marker,tag=worm.player_target,limit=1] Pos[1] double 0.01 run scoreboard players operation *y1 math -= #OUT bdlib.vector
execute facing entity @e[type=marker,tag=worm.player_target,limit=1] eyes run function stellarity_desert_scourge:worm_ai/head/get_target_rotation
kill @e[type=marker,tag=worm.player_target,limit=1]