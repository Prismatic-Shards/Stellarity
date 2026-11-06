# Stop surface ambience so tracks do not overlap
execute unless entity @s[tag=stellarity.ambient.warped_marsh.underground] run stopsound @s ambient stellarity:ambient.warped_marsh.atmos
execute unless entity @s[tag=stellarity.ambient.warped_marsh.underground] run playsound stellarity:ambient.warped_marsh.underground ambient @s ~ ~ ~ 0.8 1.0
execute unless entity @s[tag=stellarity.ambient.warped_marsh.underground] run scoreboard players set @s stellarity.ambient.loop_timer 0
tag @s add stellarity.ambient.warped_marsh.underground

# Loop underground track (31s)
scoreboard players add @s stellarity.ambient.loop_timer 1
execute if score @s stellarity.ambient.loop_timer matches 31.. run playsound stellarity:ambient.warped_marsh.underground ambient @s ~ ~ ~ 0.8 1.0
execute if score @s stellarity.ambient.loop_timer matches 31.. run scoreboard players set @s stellarity.ambient.loop_timer 0
