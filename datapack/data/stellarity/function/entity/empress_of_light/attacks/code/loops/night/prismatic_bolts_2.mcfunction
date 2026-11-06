scoreboard players add @s stellarity.empress_of_light.attack_duration 1

execute if score @s stellarity.empress_of_light.attack_duration matches 1 run scoreboard players reset #bolts stellarity.misc

execute if score @s stellarity.empress_of_light.attack_duration matches 2 run function stellarity:entity/empress_of_light/attacks/code/prismatic_bolts_2/night/summon
execute if score @s stellarity.empress_of_light.attack_duration matches 4 run function stellarity:entity/empress_of_light/attacks/code/prismatic_bolts_2/night/summon
execute if score @s stellarity.empress_of_light.attack_duration matches 6 run function stellarity:entity/empress_of_light/attacks/code/prismatic_bolts_2/night/summon
execute if score @s stellarity.empress_of_light.attack_duration matches 8 run function stellarity:entity/empress_of_light/attacks/code/prismatic_bolts_2/night/summon
execute if score @s stellarity.empress_of_light.attack_duration matches 10 run function stellarity:entity/empress_of_light/attacks/code/prismatic_bolts_2/night/summon
execute if score @s stellarity.empress_of_light.attack_duration matches 12 run function stellarity:entity/empress_of_light/attacks/code/prismatic_bolts_2/night/summon
execute if score @s stellarity.empress_of_light.attack_duration matches 14 run function stellarity:entity/empress_of_light/attacks/code/prismatic_bolts_2/night/summon
execute if score @s stellarity.empress_of_light.attack_duration matches 16 run function stellarity:entity/empress_of_light/attacks/code/prismatic_bolts_2/night/summon

execute if score @s stellarity.empress_of_light.attack_duration matches 24.. run tag @s remove stellarity.empress_of_light.face_player
execute if score @s stellarity.empress_of_light.attack_duration matches 24.. run tag @s remove stellarity.empress_of_light.prismatic_bolts_2
