execute as @n[type=interaction,tag=stellarity.altar_of_the_accursed.sword_hitbox,distance=..2] run function stellarity:mechanic/altar_of_the_accursed/main_interaction

execute unless entity @s[tag=stellarity.satchel_of_voids] run function stellarity:mechanic/altar_of_the_accursed/sfx/loop
execute if entity @s[tag=stellarity.satchel_of_voids,tag=!stellarity.satchel_of_voids.stationary] run function stellarity:item/satchel_of_voids/visuals/sigil
execute if entity @s[tag=stellarity.satchel_of_voids,tag=stellarity.satchel_of_voids.stationary] run function stellarity:item/satchel_of_voids/visuals/stationary

execute if score @s stellarity.misc.loop.1s matches 20 run function stellarity:mechanic/altar_of_the_accursed/loop_1s

execute if entity @p[distance=..8,predicate=kohara:player/is_sneaking] as @e[type=item,distance=..3,nbt=!{PickupDelay:0s}] run data modify entity @s PickupDelay set value 0s
