scoreboard players operation *temp mobID = @s mobID
scoreboard players operation *temp wormPart = @s wormPart
scoreboard players remove *temp wormPart 1

execute facing entity @e[type=item_display,tag=worm,predicate=stellarity_desert_scourge:id_system/part] feet positioned as @e[type=item_display,tag=worm,predicate=stellarity_desert_scourge:id_system/part] run tp @s ^ ^ ^-2.5 ~ ~
execute store result score #Y bdlib.quaternion run data get entity @s Rotation[0] -1
execute store result score #X bdlib.quaternion run data get entity @s Rotation[1] 1
function stellarity_desert_scourge:bdlib/quaternion/xy/init
data modify entity @s transformation.left_rotation set from storage stellarity_desert_scourge:bdlib_temp quaternion.out
data modify entity @s Rotation set value [0f, 0f]

scoreboard players add @s wormZRot 12
execute store result storage stellarity_desert_scourge:temp get_z_rot.index int 0.05 run scoreboard players operation @s wormZRot %= #720 bdlib.const
function stellarity_desert_scourge:worm_ai/body/macros_z_rot with storage stellarity_desert_scourge:temp get_z_rot

scoreboard players add *temp wormPart 1
execute at @s as @e[type=vex,tag=worm.hitbox,predicate=stellarity_desert_scourge:id_system/part] run function stellarity_desert_scourge:worm_ai/body/hitbox

tag @s add save.mob
execute as @a[distance=..1.5] unless score @s wormAttackCD matches 1.. run function stellarity_desert_scourge:worm_ai/body/worm_body_attack with storage stellarity_desert_scourge:const difficulty
tag @s remove save.mob

execute if score @e[type=item_display,tag=worm,predicate=stellarity_desert_scourge:id_system/head,limit=1] wormDeathTimer matches 0.. if score @e[type=item_display,tag=worm,predicate=stellarity_desert_scourge:id_system/head,limit=1] wormDeathTimer <= @s wormDeathTimer run function stellarity_desert_scourge:worm_ai/body/death
execute store success entity @s Glowing byte 1 run data get entity @e[type=item_display,tag=worm,predicate=stellarity_desert_scourge:id_system/head,limit=1] Glowing

data modify entity @s start_interpolation set value -1