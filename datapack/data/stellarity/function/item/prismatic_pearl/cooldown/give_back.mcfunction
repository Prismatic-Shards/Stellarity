scoreboard players set #pearl_given stellarity.misc -1
execute as @s[gamemode=!creative,gamemode=!spectator] store result score #pearl_given stellarity.misc run loot give @s loot stellarity:item/trinket/prismatic_pearl
execute as @s[gamemode=!creative,gamemode=!spectator] if score #pearl_given stellarity.misc matches 0 at @s run loot spawn ~ ~ ~ loot stellarity:item/trinket/prismatic_pearl

playsound minecraft:entity.ender_eye.death neutral @s ~ ~1.22 ~ 1 1

particle minecraft:dust{color:[0.99, 0.47, 0.47], scale:1.15} ~ ~1.22 ~ 0.33 0.33 0.33 0 10 force @s
particle minecraft:dust{color:[0.99, 0.58, 0.47], scale:1.15} ~ ~1.22 ~ 0.33 0.33 0.33 0 10 force @s
particle minecraft:dust{color:[0.99, 0.68, 0.47], scale:1.15} ~ ~1.22 ~ 0.33 0.33 0.33 0 10 force @s
particle minecraft:dust{color:[0.99, 0.74, 0.47], scale:1.15} ~ ~1.22 ~ 0.33 0.33 0.33 0 10 force @s
particle minecraft:dust{color:[0.99, 0.82, 0.47], scale:1.15} ~ ~1.22 ~ 0.33 0.33 0.33 0 10 force @s
particle minecraft:dust{color:[0.80, 0.99, 0.47], scale:1.15} ~ ~1.22 ~ 0.33 0.33 0.33 0 10 force @s
particle minecraft:dust{color:[0.48, 0.99, 0.47], scale:1.15} ~ ~1.22 ~ 0.33 0.33 0.33 0 10 force @s
particle minecraft:dust{color:[0.47, 0.82, 0.99], scale:1.15} ~ ~1.22 ~ 0.33 0.33 0.33 0 10 force @s
particle minecraft:dust{color:[0.47, 0.66, 0.99], scale:1.15} ~ ~1.22 ~ 0.33 0.33 0.33 0 10 force @s
particle minecraft:dust{color:[0.58, 0.47, 0.99], scale:1.15} ~ ~1.22 ~ 0.33 0.33 0.33 0 10 force @s
particle minecraft:dust{color:[0.74, 0.47, 0.99], scale:1.15} ~ ~1.22 ~ 0.33 0.33 0.33 0 10 force @s
particle minecraft:dust{color:[0.80, 0.47, 0.99], scale:1.15} ~ ~1.22 ~ 0.33 0.33 0.33 0 10 force @s
particle minecraft:dust{color:[0.99, 0.47, 0.80], scale:1.15} ~ ~1.22 ~ 0.33 0.33 0.33 0 10 force @s
particle minecraft:dust{color:[0.99, 0.47, 0.60], scale:1.15} ~ ~1.22 ~ 0.33 0.33 0.33 0 10 force @s
