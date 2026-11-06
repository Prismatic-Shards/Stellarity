scoreboard players add @s stellarity.sandstorm.sound_loop 3
execute if score @s stellarity.sandstorm.sound_loop matches ..3 run playsound stellarity:ambient.sandstorm.wind ambient @s ~ ~ ~ 1.0 1.0
execute if score @s stellarity.sandstorm.sound_loop matches ..3 run posteffect add @s stellarity:sandstorm
execute if score @s stellarity.sandstorm.sound_loop matches 95.. run scoreboard players set @s stellarity.sandstorm.sound_loop 0
