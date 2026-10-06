execute as @e[tag=stellarity.end_city.marker,type=marker] at @s run particle end_rod ~ ~ ~ 0 0.5 0 0.05 10 normal
execute as @e[tag=stellarity.end_city.marker,type=marker] at @s run particle dust{color:[1.0,0.84,0.0],scale:1.5} ~ ~1 ~ 0.2 0.2 0.2 0 10 normal
execute store result score #count stellarity.misc if entity @e[tag=stellarity.end_city.marker,type=marker]
tellraw @a [{"text":"[Stellarity Debug] ","color":"light_purple"},{"text":"Found ","color":"white"},{"score":{"name":"#count","objective":"stellarity.misc"},"color":"gold"},{"text":" active End City markers in loaded chunks.","color":"white"}]
