team join stellarity.purple_glow @s

data modify entity @s Glowing set value 0b
execute unless block ~ ~ ~ #kohara:non_solid run data modify entity @s Glowing set value 1b

particle witch ~ ~ ~ .1 .1 .1 0.1 2 force
execute if score @s stellarity.misc matches ..40 run particle minecraft:dragon_breath ~ ~ ~ .1 .1 .1 0.006 1 force

scoreboard players add @s stellarity.misc 1
execute if score @s stellarity.misc matches 80 run particle end_rod ~ ~ ~ 0 0 0 0.07 12
