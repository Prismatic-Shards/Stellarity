execute store result score *loot_y math run data get entity @s Pos[1] 100
execute positioned over motion_blocking run tp @s ~ ~ ~
execute store result score *loot_y2 math run data get entity @s Pos[1] 100
execute if score *loot_y2 math matches ..3000 at @a[sort=nearest,limit=1] positioned over motion_blocking run tp @s ~ ~ ~
execute if score *loot_y2 math matches ..3000 store result score *loot_y math run data get entity @s Pos[1] 100
execute if score *loot_y2 math matches ..3000 store result score *loot_y2 math run data get entity @s Pos[1] 100
execute store result storage stellarity_desert_scourge:temp loot.y float 0.01 run scoreboard players operation *loot_y math > *loot_y2 math
function stellarity_desert_scourge:worm_ai/loot/macros_head with storage stellarity_desert_scourge:temp loot

kill @s