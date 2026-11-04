tag @s add worm.point
summon marker ~ ~ ~ {Tags:["worm.spawn_origin"]}
spreadplayers ~ ~ 4 8 true @s
execute at @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute store result score *spawn_y math run data get entity @s Pos[1] 10
execute if score *spawn_y math matches ..350 run tp @s @e[type=marker,tag=worm.spawn_origin,limit=1]
kill @e[type=marker,tag=worm.spawn_origin]