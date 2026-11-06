execute unless entity @s[tag=stellarity.ambient.village.playing] run playsound stellarity:ambient.village.chapel ambient @s ~ ~ ~ 0.65 1.0
execute unless entity @s[tag=stellarity.ambient.village.playing] run scoreboard players set @s stellarity.ambient.chapel_timer 0
tag @s add stellarity.ambient.village.playing

scoreboard players add @s stellarity.ambient.chapel_timer 1
execute if score @s stellarity.ambient.chapel_timer matches 66.. run playsound stellarity:ambient.village.chapel ambient @s ~ ~ ~ 0.65 1.0
execute if score @s stellarity.ambient.chapel_timer matches 66.. run scoreboard players set @s stellarity.ambient.chapel_timer 0
