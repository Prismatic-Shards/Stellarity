execute if block ~ ~ ~ minecraft:end_portal_frame unless entity @e[type=marker,tag=stellarity.altar_of_the_accursed,distance=..1.5] run function stellarity:mechanic/altar_of_the_accursed/place/hit_block
execute if score #hit stellarity.misc matches 0 if block ~ ~ ~ minecraft:snow positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:end_portal_frame unless entity @e[type=marker,tag=stellarity.altar_of_the_accursed,distance=..1.5] run function stellarity:mechanic/altar_of_the_accursed/place/hit_block

scoreboard players add #distance stellarity.misc 1
execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc matches ..600 positioned ^ ^ ^0.01 run function stellarity:mechanic/altar_of_the_accursed/place/ray


