scoreboard players add @s stellarity.acid_rain.sound_loop 3
execute if score @s stellarity.acid_rain.sound_loop matches ..3 run playsound stellarity:ambient.acid_rain.loop ambient @s ~ ~ ~ 1.0 1.0
execute if score @s stellarity.acid_rain.sound_loop matches ..3 run posteffect add @s stellarity:acid_rain
execute if score @s stellarity.acid_rain.sound_loop matches 70.. run scoreboard players set @s stellarity.acid_rain.sound_loop 0
