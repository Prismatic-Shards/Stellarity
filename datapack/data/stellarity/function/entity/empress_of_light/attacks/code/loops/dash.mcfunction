scoreboard players add @s stellarity.empress_of_light.attack_duration 1

execute if score @s stellarity.empress_of_light.attack_duration matches 1 facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute if score @s stellarity.empress_of_light.attack_duration matches 1..5 run tp @s ^ ^-0.865 ^-0.6 ~ ~
execute if score @s stellarity.empress_of_light.attack_duration matches 6 rotated as @s run tp @s ^ ^-0.5 ^ ~ 0
execute if score @s stellarity.empress_of_light.attack_duration matches 7.. run function stellarity:entity/empress_of_light/attacks/code/dash/move

execute if score @s stellarity.empress_of_light.attack_duration matches 15.. unless block ^ ^ ^1.5 #kohara:non_solid run function stellarity:entity/empress_of_light/attacks/code/dash/found_block

execute if score @s stellarity.empress_of_light.attack_duration matches 22.. run tag @s remove stellarity.empress_of_light.dash
execute if score @s stellarity.empress_of_light.attack_duration matches 22.. run tag @s remove stellarity.empress_of_light.no_rotate
