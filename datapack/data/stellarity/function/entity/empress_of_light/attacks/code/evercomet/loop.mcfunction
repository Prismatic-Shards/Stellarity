scoreboard players add @s stellarity.empress_of_light.projectile_age 1

tp ^ ^-0.8 ^0.4

particle dust{color:[0.980,0.922,0.980],scale:1.5} ^ ^.5 ^ 0.13 0.13 0.13 0 3 force
particle dust{color:[0.976,0.824,0.980],scale:1.5} ^ ^.5 ^ 0.13 0.13 0.13 0 3 force
particle dust{color:[0.980,0.757,0.980],scale:1.5} ^ ^.5 ^ 0.13 0.13 0.13 0 3 force

execute if score @s stellarity.empress_of_light.projectile_age matches 300.. run kill @s

execute unless block ~ ~-0.2 ~ air run function stellarity:entity/empress_of_light/attacks/code/evercomet/explode