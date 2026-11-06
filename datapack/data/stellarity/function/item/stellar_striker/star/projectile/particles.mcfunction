particle minecraft:dust_color_transition{from_color: [1.0, 1.0, 0.659], scale: 0.7, to_color: [0.925, 0.604, 0.0]} ~ ~ ~ 0.1 0.1 0.1 0 8 force

scoreboard players add @s stellarity.misc4 1

execute if score @s stellarity.misc4 matches 1 rotated ~90 ~ run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 2 rotated ~90 ~30 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 3 rotated ~90 ~60 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 4 rotated ~90 ~90 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 5 rotated ~90 ~120 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 6 rotated ~90 ~150 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 7 rotated ~90 ~180 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 8 rotated ~90 ~-150 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 9 rotated ~90 ~-120 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 10 rotated ~90 ~-90 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 11 rotated ~90 ~-60 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 12 rotated ~90 ~-30 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^0.25 ^ 0 0 0 0 1 force

execute if score @s stellarity.misc4 matches 1 rotated ~90 ~ run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^-0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 2 rotated ~90 ~30 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^-0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 3 rotated ~90 ~60 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^-0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 4 rotated ~90 ~90 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^-0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 5 rotated ~90 ~120 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^-0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 6 rotated ~90 ~150 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^-0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 7 rotated ~90 ~180 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^-0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 8 rotated ~90 ~-150 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^-0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 9 rotated ~90 ~-120 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^-0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 10 rotated ~90 ~-90 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^-0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 11 rotated ~90 ~-60 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^-0.25 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc4 matches 12 rotated ~90 ~-30 run particle minecraft:dust{color:[1.0, 1.0, 1.0], scale:0.8} ^ ^-0.25 ^ 0 0 0 0 1 force

execute if score @s stellarity.misc4 matches 12 run scoreboard players reset @s stellarity.misc4
