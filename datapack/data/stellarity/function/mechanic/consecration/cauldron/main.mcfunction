scoreboard players add @s stellarity.misc 1

execute as @e[type=item,distance=..1] at @s if block ~ ~ ~ water_cauldron run function stellarity:mechanic/consecration/main

particle dust{color:[0.918,0.502,1.0],scale:1.0} ~ ~0.55 ~ 0.25 0.05 0.25 0.00577 6 force @a[distance=..32]

execute unless block ~ ~ ~ water_cauldron run function stellarity:mechanic/consecration/cauldron/remove

execute if score @s stellarity.misc matches 400 run function stellarity:mechanic/consecration/cauldron/remove
