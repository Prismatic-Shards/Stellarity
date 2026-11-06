scoreboard players add @s stellarity.abyss.sound_loop 3
execute if score @s stellarity.abyss.sound_loop matches ..3 run playsound stellarity:ambient.abyss.loop ambient @s ~ ~ ~ 1 1
execute if score @s stellarity.abyss.sound_loop matches 4600.. run scoreboard players set @s stellarity.abyss.sound_loop 0

