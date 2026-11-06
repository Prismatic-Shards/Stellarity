# If center sound was playing, stop it immediately
execute if entity @s[tag=stellarity.ambient.main_island.center] run stopsound @s ambient stellarity:ambient.main_island.pre_dragon_center
tag @s remove stellarity.ambient.main_island.center

# Play outer loop sound on entry or every 64s
execute unless entity @s[tag=stellarity.ambient.main_island.looping] run playsound stellarity:ambient.main_island.pre_dragon_loop ambient @s ~ ~ ~ 1.0 1.0
execute unless entity @s[tag=stellarity.ambient.main_island.looping] run scoreboard players set @s stellarity.ambient.loop_timer 0
tag @s add stellarity.ambient.main_island.looping

scoreboard players add @s stellarity.ambient.loop_timer 1
execute if score @s stellarity.ambient.loop_timer matches 1280.. run playsound stellarity:ambient.main_island.pre_dragon_loop ambient @s ~ ~ ~ 1.0 1.0
execute if score @s stellarity.ambient.loop_timer matches 1280.. run scoreboard players set @s stellarity.ambient.loop_timer 0
