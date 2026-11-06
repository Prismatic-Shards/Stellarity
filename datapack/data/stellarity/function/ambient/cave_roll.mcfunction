execute store result score #random stellarity.misc run random value 1..3
execute if score #random stellarity.misc matches 1 run playsound stellarity:ambient.cave.noises ambient @s ~ ~ ~ 0.8 1.0
execute if score #random stellarity.misc matches 2 run playsound stellarity:ambient.cave.machinery ambient @s ~ ~ ~ 0.7 1.0
execute if score #random stellarity.misc matches 1..2 run scoreboard players set @s stellarity.ambient.cave_timer 0

# Safety cap: play noise at 90s
execute if score @s stellarity.ambient.cave_timer matches 90.. run playsound stellarity:ambient.cave.noises ambient @s ~ ~ ~ 0.8 1.0
execute if score @s stellarity.ambient.cave_timer matches 90.. run scoreboard players set @s stellarity.ambient.cave_timer 0
