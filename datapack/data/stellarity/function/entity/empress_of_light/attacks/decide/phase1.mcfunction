tag @s remove stellarity.empress_of_light.attack_ready

scoreboard players add @s stellarity.empress_of_light.attack_cycle 1
execute if score @s stellarity.empress_of_light.attack_cycle matches 20 run scoreboard players set @s stellarity.empress_of_light.attack_cycle 1

scoreboard players reset @s stellarity.empress_of_light.attack_duration


execute if score @s stellarity.empress_of_light.attack_cycle matches 1 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 2 run function stellarity:entity/empress_of_light/attacks/prismatic_bolts
execute if score @s stellarity.empress_of_light.attack_cycle matches 3 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 4 run function stellarity:entity/empress_of_light/attacks/dash
execute if score @s stellarity.empress_of_light.attack_cycle matches 5 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s[tag=stellarity.empress_of_light.daytime] stellarity.empress_of_light.attack_cycle matches 6 run function stellarity:entity/empress_of_light/attacks/prismatic_bolts_2
execute if score @s stellarity.empress_of_light.attack_cycle matches 7 run function stellarity:entity/empress_of_light/attacks/ethereal_lance
execute if score @s stellarity.empress_of_light.attack_cycle matches 8 run function stellarity:entity/empress_of_light/attacks/prismatic_bolts
execute if score @s stellarity.empress_of_light.attack_cycle matches 9 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 10 run function stellarity:entity/empress_of_light/attacks/dash
execute if score @s stellarity.empress_of_light.attack_cycle matches 11 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 12 run function stellarity:entity/empress_of_light/attacks/ethereal_lance
execute if score @s stellarity.empress_of_light.attack_cycle matches 13 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 14 run function stellarity:entity/empress_of_light/attacks/dash
execute if score @s stellarity.empress_of_light.attack_cycle matches 15 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 16 run function stellarity:entity/empress_of_light/attacks/prismatic_bolts_2
execute if score @s stellarity.empress_of_light.attack_cycle matches 17 run function stellarity:entity/empress_of_light/attacks/prismatic_bolts
execute if score @s stellarity.empress_of_light.attack_cycle matches 18 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 19 run function stellarity:entity/empress_of_light/attacks/dash