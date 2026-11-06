tp @s ^ ^ ^1.2375

scoreboard players add @s stellarity.misc 1

particle minecraft:dust_color_transition{from_color: [1.0, 1.0, 0.659], scale: 0.7, to_color: [0.925, 0.604, 0.0]} ~ ~ ~ 0.1 0.1 0.1 0 8 force

particle minecraft:end_rod ~ ~ ~ ^ ^ ^-1000000 0.00000033 0
execute if score @s stellarity.misc matches 2 run playsound minecraft:entity.firework_rocket.large_blast player @a[distance=0..] ~ ~ ~ 0.3 2
playsound minecraft:block.note_block.chime player @a[distance=0..] ~ ~ ~ 0.3 2
execute if score @s stellarity.misc matches 2 run scoreboard players reset @s stellarity.misc

execute if entity @s[tag=!stellarity.carcanet.air] if block ^ ^ ^ #kohara:non_solid run tag @s add stellarity.carcanet.air
execute if entity @s[tag=stellarity.carcanet.air] unless block ^ ^ ^1.2375 #kohara:non_solid run function stellarity:item/starstruck_shield/star_detonate

