scoreboard players set @s stellarity.empress_of_light.attack_cooldown 29

execute store result score @s stellarity.misc run random value 1..2
#function stellarity:entity/empress_of_light/attacks/code/dash/prismatic_bolts
execute if score @s stellarity.misc matches 1 run function stellarity:entity/empress_of_light/attacks/code/dash/ethereal_lances
execute if score @s stellarity.misc matches 2 run function stellarity:entity/empress_of_light/attacks/code/dash/prismatic_bolts