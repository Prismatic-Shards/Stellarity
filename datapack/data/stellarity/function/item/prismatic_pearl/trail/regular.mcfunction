execute if score @s stellarity.misc matches 0..2 run \
particle minecraft:dust{color:[0.99, 0.47, 0.47], scale:1.15} ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..64]
execute if score @s stellarity.misc matches 3..4 run \
particle minecraft:dust{color:[0.99, 0.58, 0.47], scale:1.15} ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..64]
execute if score @s stellarity.misc matches 5..6 run \
particle minecraft:dust{color:[0.99, 0.68, 0.47], scale:1.15} ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..64]
execute if score @s stellarity.misc matches 7..8 run \
particle minecraft:dust{color:[0.99, 0.74, 0.47], scale:1.15} ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..64]
execute if score @s stellarity.misc matches 9..10 run \
particle minecraft:dust{color:[0.99, 0.82, 0.47], scale:1.15} ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..64]
execute if score @s stellarity.misc matches 11..12 run \
particle minecraft:dust{color:[0.80, 0.99, 0.47], scale:1.15} ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..64]
execute if score @s stellarity.misc matches 13..14 run \
particle minecraft:dust{color:[0.48, 0.99, 0.47], scale:1.15} ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..64]
execute if score @s stellarity.misc matches 15..16 run \
particle minecraft:dust{color:[0.47, 0.82, 0.99], scale:1.15} ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..64]
execute if score @s stellarity.misc matches 17..18 run \
particle minecraft:dust{color:[0.47, 0.66, 0.99], scale:1.15} ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..64]
execute if score @s stellarity.misc matches 19..20 run \
particle minecraft:dust{color:[0.58, 0.47, 0.99], scale:1.15} ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..64]
execute if score @s stellarity.misc matches 21..22 run \
particle minecraft:dust{color:[0.74, 0.47, 0.99], scale:1.15} ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..64]
execute if score @s stellarity.misc matches 23..24 run \
particle minecraft:dust{color:[0.80, 0.47, 0.99], scale:1.15} ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..64]
execute if score @s stellarity.misc matches 25..26 run \
particle minecraft:dust{color:[0.99, 0.47, 0.80], scale:1.15} ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..64]
execute if score @s stellarity.misc matches 27..28 run \
particle minecraft:dust{color:[0.99, 0.47, 0.60], scale:1.15} ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..64]

scoreboard players reset @s[scores={stellarity.misc=28..}] stellarity.misc
