execute as @n[type=interaction,tag=stellarity.altar_of_the_accursed.sword_hitbox,distance=..2] run function stellarity:mechanic/altar_of_the_accursed/main_interaction
execute as @e[type=armor_stand,tag=stellarity.altar_of_the_accursed.sword_holder,distance=..3] run team join stellarity.purple_glow @s
execute as @e[type=armor_stand,tag=stellarity.altar_of_the_accursed.sword_holder,distance=..3] run data modify entity @s Glowing set value 1b

execute unless entity @s[tag=stellarity.satchel_of_voids] run function stellarity:mechanic/altar_of_the_accursed/sfx/loop
execute if entity @s[tag=stellarity.satchel_of_voids,tag=!stellarity.satchel_of_voids.stationary] run function stellarity:item/satchel_of_voids/visuals/sigil
execute if entity @s[tag=stellarity.satchel_of_voids,tag=stellarity.satchel_of_voids.stationary] run function stellarity:item/satchel_of_voids/visuals/stationary

execute unless score @s stellarity.altar.craft_progress matches 1.. if entity @e[type=item,distance=..2.5,tag=!stellarity.altar_of_the_accursed.skip] run function stellarity:mechanic/altar_of_the_accursed/loop_1s

function stellarity:mechanic/altar_common/orbit_loop
