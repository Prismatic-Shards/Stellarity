particle sweep_attack ^ ^ ^ 0 0 0 0 1 force
particle flame ^ ^ ^ 0.25 0.25 0.25 0.018 5 force
particle end_rod ^ ^ ^ 0.25 0.25 0.25 0.01 1 force

scoreboard players add @s stellarity.misc2 1

execute if score @s stellarity.misc2 matches 1 run particle minecraft:dust{color:[0.98, 0.243, 0.243], scale:1.15} ^ ^ ^ 0.25 0.25 0.25 0 6 force
execute if score @s stellarity.misc2 matches 2 run particle minecraft:dust{color:[0.98, 0.686, 0.243], scale:1.15} ^ ^ ^ 0.25 0.25 0.25 0 6 force
execute if score @s stellarity.misc2 matches 3 run particle minecraft:dust{color:[0.98, 0.871, 0.243], scale:1.15} ^ ^ ^ 0.25 0.25 0.25 0 6 force
execute if score @s stellarity.misc2 matches 4 run particle minecraft:dust{color:[0.6, 0.98, 0.243], scale:1.15} ^ ^ ^ 0.25 0.25 0.25 0 6 force
execute if score @s stellarity.misc2 matches 5 run particle minecraft:dust{color:[0.243, 0.894, 0.98], scale:1.15} ^ ^ ^ 0.25 0.25 0.25 0 6 force
execute if score @s stellarity.misc2 matches 6 run particle minecraft:dust{color:[0.318, 0.243, 0.98], scale:1.15} ^ ^ ^ 0.25 0.25 0.25 0 6 force
execute if score @s stellarity.misc2 matches 7 run particle minecraft:dust{color:[0.98, 0.243, 0.918], scale:1.15} ^ ^ ^ 0.25 0.25 0.25 0 6 force
execute if score @s stellarity.misc2 matches 8 run particle minecraft:dust{color:[0.647, 0.243, 0.98], scale:1.15} ^ ^ ^ 0.25 0.25 0.25 0 6 force
