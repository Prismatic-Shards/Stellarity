execute if block ~ ~ ~ minecraft:chiseled_quartz_block unless entity @e[type=marker,tag=stellarity.altar_of_the_sacred,distance=..1.5] run function stellarity:mechanic/altar_of_the_sacred/place/hit_block
execute if score #hit stellarity.misc matches 0 unless block ~ ~ ~ #minecraft:replaceable positioned ~ ~1 ~ if block ~ ~ ~ minecraft:chiseled_quartz_block unless entity @e[type=marker,tag=stellarity.altar_of_the_sacred,distance=..1.5] run function stellarity:mechanic/altar_of_the_sacred/place/hit_block
execute if score #hit stellarity.misc matches 0 unless block ~ ~ ~ #minecraft:replaceable positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:chiseled_quartz_block unless entity @e[type=marker,tag=stellarity.altar_of_the_sacred,distance=..1.5] run function stellarity:mechanic/altar_of_the_sacred/place/hit_block
execute if score #hit stellarity.misc matches 0 unless block ~ ~ ~ #minecraft:replaceable run scoreboard players set #hit stellarity.misc 1

scoreboard players add #distance stellarity.misc 1
execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc matches ..1000 positioned ^ ^ ^0.01 run function stellarity:mechanic/altar_of_the_sacred/place/ray

