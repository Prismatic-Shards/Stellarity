execute positioned ^ ^ ^1 if entity @e[type=interaction,tag=stellarity.pixie_in_a_jar_interaction,distance=..0.5] run function stellarity:mechanic/pixie_in_a_jar/hit/hit_jar
scoreboard players add #distance stellarity.misc 1
execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc matches ..50 positioned ^ ^ ^1 run function stellarity:mechanic/pixie_in_a_jar/hit/ray