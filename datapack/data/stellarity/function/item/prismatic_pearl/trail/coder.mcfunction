execute if score @s stellarity.misc matches 0..8 run particle minecraft:dust{color:[0.357, 0.808, 0.980], scale:1.3} ~ ~ ~ 0.13 0.13 0.13 0 8 force @a[distance=..64]
execute if score @s stellarity.misc matches 9..12 run particle minecraft:dust{color:[0.961, 0.663, 0.722], scale:1.3} ~ ~ ~ 0.13 0.13 0.13 0 8 force @a[distance=..64]
execute if score @s stellarity.misc matches 13..20 run particle minecraft:dust{color:[1.000, 1.000, 1.000], scale:1.3} ~ ~ ~ 0.13 0.13 0.13 0 8 force @a[distance=..64]

scoreboard players reset @s[scores={stellarity.misc=20..}] stellarity.misc
