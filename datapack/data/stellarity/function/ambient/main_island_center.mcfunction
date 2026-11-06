# If outer loop was playing, stop it immediately
execute if entity @s[tag=stellarity.ambient.main_island.looping] run stopsound @s ambient stellarity:ambient.main_island.pre_dragon_loop
tag @s remove stellarity.ambient.main_island.looping

# Play center sound on entry or every 63s
execute unless entity @s[tag=stellarity.ambient.main_island.center] run playsound stellarity:ambient.main_island.pre_dragon_center ambient @s ~ ~ ~ 1.0 1.0
execute unless entity @s[tag=stellarity.ambient.main_island.center] run scoreboard players set @s stellarity.ambient.loop_timer 0
tag @s add stellarity.ambient.main_island.center

scoreboard players add @s stellarity.ambient.loop_timer 1
execute if score @s stellarity.ambient.loop_timer matches 1260.. run playsound stellarity:ambient.main_island.pre_dragon_center ambient @s ~ ~ ~ 1.0 1.0
execute if score @s stellarity.ambient.loop_timer matches 1260.. run scoreboard players set @s stellarity.ambient.loop_timer 0
