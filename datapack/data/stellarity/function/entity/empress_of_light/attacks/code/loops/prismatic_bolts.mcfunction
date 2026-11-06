scoreboard players add @s stellarity.empress_of_light.attack_duration 1

execute if score @s stellarity.empress_of_light.attack_duration matches ..48 run tp @s ^ ^ ^.22
execute if score @s stellarity.empress_of_light.attack_duration matches 49.. run tp @s ^ ^ ^.07

execute if score @s stellarity.empress_of_light.attack_duration matches 6..42 run scoreboard players add #bolts.timer stellarity.misc 1
execute if score #bolts.timer stellarity.misc matches 4 as @n[type=item_display,tag=stellarity.empress_of_light.model] at @s rotated ~ 0 positioned ^-.3 ^1 ^0.3 run function stellarity:entity/empress_of_light/attacks/code/prismatic_bolts/summon
execute if score #bolts.timer stellarity.misc matches 4 run scoreboard players reset #bolts.timer


execute if score @s stellarity.empress_of_light.attack_duration matches 54.. run tag @s remove stellarity.empress_of_light.face_player
execute if score @s stellarity.empress_of_light.attack_duration matches 54.. run tag @s remove stellarity.empress_of_light.prismatic_bolts
execute if score @s stellarity.empress_of_light.attack_duration matches 54.. run scoreboard players reset #bolts.timer
