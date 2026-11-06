scoreboard players add @s stellarity.empress_of_light.attack_duration 1

execute if score @s stellarity.empress_of_light.attack_duration matches 1 run scoreboard players reset #evercomets stellarity.misc

execute store result storage kohara:temp stellarity.evercomet.x int 1 run random value -8..8
execute store result storage kohara:temp stellarity.evercomet.z int 1 run random value -8..8
execute store result storage kohara:temp stellarity.evercomet.rotation int 1 run random value 1..360 run 
execute if score @s stellarity.empress_of_light.attack_duration matches 5 run function stellarity:entity/empress_of_light/attacks/code/evercomet/radiant/summon with storage kohara:temp stellarity.evercomet
execute if score @s stellarity.empress_of_light.attack_duration matches 10 run function stellarity:entity/empress_of_light/attacks/code/evercomet/radiant/summon with storage kohara:temp stellarity.evercomet
execute if score @s stellarity.empress_of_light.attack_duration matches 15 run function stellarity:entity/empress_of_light/attacks/code/evercomet/radiant/summon with storage kohara:temp stellarity.evercomet
execute if score @s stellarity.empress_of_light.attack_duration matches 20 run function stellarity:entity/empress_of_light/attacks/code/evercomet/radiant/summon with storage kohara:temp stellarity.evercomet
execute if score @s stellarity.empress_of_light.attack_duration matches 25 run function stellarity:entity/empress_of_light/attacks/code/evercomet/radiant/summon with storage kohara:temp stellarity.evercomet
execute if score @s stellarity.empress_of_light.attack_duration matches 30 run function stellarity:entity/empress_of_light/attacks/code/evercomet/radiant/summon with storage kohara:temp stellarity.evercomet
execute if score @s stellarity.empress_of_light.attack_duration matches 35 run function stellarity:entity/empress_of_light/attacks/code/evercomet/radiant/summon with storage kohara:temp stellarity.evercomet
execute if score @s stellarity.empress_of_light.attack_duration matches 40 run function stellarity:entity/empress_of_light/attacks/code/evercomet/radiant/summon with storage kohara:temp stellarity.evercomet
execute if score @s stellarity.empress_of_light.attack_duration matches 45 run function stellarity:entity/empress_of_light/attacks/code/evercomet/radiant/summon with storage kohara:temp stellarity.evercomet
execute if score @s stellarity.empress_of_light.attack_duration matches 50 run function stellarity:entity/empress_of_light/attacks/code/evercomet/radiant/summon with storage kohara:temp stellarity.evercomet
execute if score @s stellarity.empress_of_light.attack_duration matches 55 run function stellarity:entity/empress_of_light/attacks/code/evercomet/radiant/summon with storage kohara:temp stellarity.evercomet
execute if score @s stellarity.empress_of_light.attack_duration matches 60 run function stellarity:entity/empress_of_light/attacks/code/evercomet/radiant/summon with storage kohara:temp stellarity.evercomet

execute if score @s stellarity.empress_of_light.attack_duration matches 68.. run tag @s remove stellarity.empress_of_light.face_player
execute if score @s stellarity.empress_of_light.attack_duration matches 68.. run tag @s remove stellarity.empress_of_light.evercomet