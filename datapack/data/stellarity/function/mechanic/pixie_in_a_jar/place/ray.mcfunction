execute if block ~ ~ ~ minecraft:glass run function stellarity:mechanic/pixie_in_a_jar/place/hit_block with storage stellarity:temp pixie_in_a_jar
scoreboard players add #distance stellarity.misc 1
execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc matches ..1000 positioned ^ ^ ^0.01 run function stellarity:mechanic/pixie_in_a_jar/place/ray
