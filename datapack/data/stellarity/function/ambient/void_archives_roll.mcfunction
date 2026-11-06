execute store result score #random stellarity.misc run random value 1..3
execute if score #random stellarity.misc matches 1 run playsound stellarity:ambient.the_void.archives ambient @s ~ ~ ~ 0.85 1.0
execute if score #random stellarity.misc matches 1 run scoreboard players set @s stellarity.ambient.archives_timer 0

# Maximum wait failsafe: 180s
execute if score @s stellarity.ambient.archives_timer matches 180.. run playsound stellarity:ambient.the_void.archives ambient @s ~ ~ ~ 0.85 1.0
execute if score @s stellarity.ambient.archives_timer matches 180.. run scoreboard players set @s stellarity.ambient.archives_timer 0
