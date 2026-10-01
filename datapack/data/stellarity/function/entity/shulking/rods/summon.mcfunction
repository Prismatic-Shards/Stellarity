data modify entity @s data."stellarity:shulking_rods" append value {}
summon item_display ~ ~ ~ {Tags:["smithed.entity","smithed.strict","stellarity.shulking.rod"],Invulnerable:true,Passengers:[{\
id:"shulker",CustomName:{"color":"#FF00FF",translate:"entity.stellarity.shulking"},CustomNameVisible:false, Invulnerable:true,attributes:[{id:"minecraft:scale",base:0.35},{id:"follow_range",base:128}],Tags:["smithed.entity","smithed.strict","stellarity.shulking.rod_shulker"]   \
}],\
teleport_duration:1, item:{id:"end_rod"},transformation:{translation:[0f,-0.5,0f],left_rotation:[1f,0f,0f,0f],scale:[1,1,1],right_rotation:[0f,0f,0f,1f]},brightness:{block:15,sky:15}}

data modify entity @s data."stellarity:shulking_rods"[-1].UUID set from entity @n[type=item_display,tag=stellarity.shulking.rod,distance=..1] UUID
tp @n[type=item_display,tag=stellarity.shulking.rod,distance=..1] ~ ~5 ~

$data modify entity @s data."stellarity:shulking_rods"[-1].offset_rotation set value $(offset_rotation)
