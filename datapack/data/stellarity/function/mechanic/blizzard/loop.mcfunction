scoreboard players add @s stellarity.blizzard.sound_loop 3
execute if score @s stellarity.blizzard.sound_loop matches ..3 run playsound stellarity:ambient.blizzard.wind ambient @s
execute if score @s stellarity.blizzard.sound_loop matches ..3 run posteffect add @s stellarity:blizzard
execute if score @s stellarity.blizzard.sound_loop matches 99.. run scoreboard players set @s stellarity.blizzard.sound_loop 0
execute at @s run particle minecraft:snowflake ~ ~2 ~ 10 4 10 0.4 35 force @s
execute at @s run particle minecraft:cloud ~ ~1.5 ~ 8 3 8 0.05 6 force @s
execute at @s run particle minecraft:white_ash ~ ~2 ~ 10 4 10 0.35 25 force @s
execute at @s run particle minecraft:snowflake ~ ~2 ~ 10 3 10 0.25 20 force @s
