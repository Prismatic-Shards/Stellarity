$playsound $(place_sound) block @a[distance=..32] 
$setblock ~ ~ ~ $(block)
$summon minecraft:item_display ~ ~ ~ {Tags:["smithed.entity","smithed.strict","stellarity.block","stellarity.block.$(id)"],transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1.01f,1.01f,1.01f],right_rotation:[0f,0f,0f,1f]},item:{id:"minecraft:stone",components:{"minecraft:item_model":"$(model)"}},brightness:{sky:0,block:10}}

execute as @n[type=item_display,distance=..0.5] run function stellarity:block/update_light

data modify entity @n[type=item_display,distance=..0.5] data."stellarity:block" set from entity @s data."stellarity:block"


execute store result score @n[type=item_display,distance=..0.5] stellarity.misc2 run data get entity @s Facing

execute as @n[type=item_display,distance=..0.5] run function stellarity:block/rotation/determine

