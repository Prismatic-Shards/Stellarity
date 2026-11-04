execute unless entity @e[type=marker,tag=worm.point] as @a[distance=..128] unless score @s musicTimer_stellarity_ds matches 0.. run scoreboard players set @s musicTimer_stellarity_ds 0

function stellarity_desert_scourge:worm_ai/head/attacks/tick

execute store result score *y1 math run data get entity @s Pos[1] 10
execute if score *y1 math matches ..350 run function stellarity_desert_scourge:worm_ai/head/void_rescue
summon marker ~ ~ ~ {Tags:["worm.temp_y"]}
execute as @e[type=marker,tag=worm.temp_y,limit=1] positioned over world_surface run tp @s ~ ~ ~
execute store result score *y2 math run data get entity @e[type=marker,tag=worm.temp_y,limit=1] Pos[1] 10
kill @e[type=marker,tag=worm.temp_y,limit=1]

execute if score *y1 math > *y2 math if entity @s[tag=digged] run function stellarity_desert_scourge:worm_ai/head/dig_up
execute if score *y1 math < *y2 math unless entity @s[tag=digged] run function stellarity_desert_scourge:worm_ai/head/dig_into

execute unless block ~ ~ ~ #stellarity_desert_scourge:cannot_dig run function stellarity_desert_scourge:worm_ai/head/dig_sound

execute if block ~ ~ ~ #stellarity_desert_scourge:cannot_dig run function stellarity_desert_scourge:worm_ai/head/movement_air
execute unless block ~ ~ ~ #stellarity_desert_scourge:cannot_dig run function stellarity_desert_scourge:worm_ai/head/movement_dig
execute at @s rotated as @s run tp @s ^ ^ ^1.45 0 0

scoreboard players add @s wormZRot 12
execute store result storage stellarity_desert_scourge:temp get_z_rot.index int 0.05 run scoreboard players operation @s wormZRot %= #720 bdlib.const
function stellarity_desert_scourge:worm_ai/body/macros_z_rot with storage stellarity_desert_scourge:temp get_z_rot

function stellarity_desert_scourge:bdlib/quaternion/xy/init
data modify entity @s transformation.left_rotation set from storage stellarity_desert_scourge:bdlib_temp quaternion.out

scoreboard players operation @s wormHealth > *0 const
execute if score @s wormHealth matches ..0 unless score @s wormDeathTimer matches 1.. run function stellarity_desert_scourge:worm_ai/head/death/start
execute store result storage stellarity_desert_scourge:temp get_bossbar.index int 1 run scoreboard players get @s mobID
execute store result storage stellarity_desert_scourge:temp get_bossbar.health int 0.1 run scoreboard players get @s wormHealth
execute unless entity @e[type=marker,tag=worm.point] run function stellarity_desert_scourge:worm_ai/head/display_bossbar with storage stellarity_desert_scourge:temp get_bossbar

execute if score @s wormDeathTimer matches 1.. run scoreboard players remove @s wormDeathTimer 1
execute if score @s wormDeathTimer matches 0 run function stellarity_desert_scourge:worm_ai/head/death/loot

data modify entity @s start_interpolation set value -1

execute store success entity @s Glowing byte 1 if score @s wormGlowing matches 1..
execute if score @s wormGlowing matches 1.. run scoreboard players remove @s wormGlowing 1