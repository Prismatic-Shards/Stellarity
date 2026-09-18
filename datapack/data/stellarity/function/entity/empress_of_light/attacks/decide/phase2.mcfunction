tag @s remove stellarity.empress_of_light.attack_ready

scoreboard players add @s stellarity.empress_of_light.attack_cycle 1
execute if score @s stellarity.empress_of_light.attack_cycle matches 48 run scoreboard players set @s stellarity.empress_of_light.attack_cycle 1

scoreboard players reset @s stellarity.empress_of_light.attack_duration


execute if score @s stellarity.empress_of_light.attack_cycle matches 1 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 2 run function stellarity:entity/empress_of_light/attacks/ethereal_lance_2
execute if score @s stellarity.empress_of_light.attack_cycle matches 3 run function stellarity:entity/empress_of_light/attacks/prismatic_bolts

execute if score @s stellarity.empress_of_light.attack_cycle matches 4 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 5 run function stellarity:entity/empress_of_light/attacks/dash

execute if score @s stellarity.empress_of_light.attack_cycle matches 6 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s[tag=stellarity.empress_of_light.daytime] stellarity.empress_of_light.attack_cycle matches 7 run function stellarity:entity/empress_of_light/attacks/ethereal_lance
execute if score @s stellarity.empress_of_light.attack_cycle matches 8 run function stellarity:entity/empress_of_light/attacks/prismatic_bolts
execute if score @s stellarity.empress_of_light.attack_cycle matches 9 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 10 run function stellarity:entity/empress_of_light/attacks/dash

execute if score @s stellarity.empress_of_light.attack_cycle matches 11 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 12 run function stellarity:entity/empress_of_light/attacks/ethereal_lance
execute if score @s stellarity.empress_of_light.attack_cycle matches 13 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 14 run function stellarity:entity/empress_of_light/attacks/dash

execute if score @s[tag=stellarity.empress_of_light.daytime] stellarity.empress_of_light.attack_cycle matches 15 run function stellarity:entity/empress_of_light/attacks/prismatic_bolts_2

execute if score @s stellarity.empress_of_light.attack_cycle matches 16 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 17 run function stellarity:entity/empress_of_light/attacks/ethereal_lance_2
execute if score @s stellarity.empress_of_light.attack_cycle matches 18 run function stellarity:entity/empress_of_light/attacks/prismatic_bolts

execute if score @s stellarity.empress_of_light.attack_cycle matches 19 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 20 run function stellarity:entity/empress_of_light/attacks/dash

execute if score @s stellarity.empress_of_light.attack_cycle matches 21 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 22 run function stellarity:entity/empress_of_light/attacks/heal
execute if score @s stellarity.empress_of_light.attack_cycle matches 23 run function stellarity:entity/empress_of_light/attacks/prismatic_bolts
execute if score @s stellarity.empress_of_light.attack_cycle matches 24 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 25 run function stellarity:entity/empress_of_light/attacks/dash

execute if score @s stellarity.empress_of_light.attack_cycle matches 26 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 27 run function stellarity:entity/empress_of_light/attacks/ethereal_lance
execute if score @s[tag=stellarity.empress_of_light.daytime] stellarity.empress_of_light.attack_cycle matches 28 run function stellarity:entity/empress_of_light/attacks/prismatic_bolts_2
execute if score @s[tag=stellarity.empress_of_light.daytime] stellarity.empress_of_light.attack_cycle matches 29 run function stellarity:entity/empress_of_light/attacks/prismatic_bolts_2
execute if score @s stellarity.empress_of_light.attack_cycle matches 30 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 31 run function stellarity:entity/empress_of_light/attacks/dash

execute if score @s stellarity.empress_of_light.attack_cycle matches 32 run function stellarity:entity/empress_of_light/attacks/ethereal_lance_2

execute if score @s stellarity.empress_of_light.attack_cycle matches 33 run function stellarity:entity/empress_of_light/attacks/ethereal_lance_2

execute if score @s stellarity.empress_of_light.attack_cycle matches 34 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 35 run function stellarity:entity/empress_of_light/attacks/dash
execute if score @s stellarity.empress_of_light.attack_cycle matches 36 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 37 run function stellarity:entity/empress_of_light/attacks/dash
execute if score @s stellarity.empress_of_light.attack_cycle matches 38 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 39 run function stellarity:entity/empress_of_light/attacks/dash

execute if score @s[tag=stellarity.empress_of_light.daytime] stellarity.empress_of_light.attack_cycle matches 40 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s[tag=stellarity.empress_of_light.daytime] stellarity.empress_of_light.attack_cycle matches 41 run function stellarity:entity/empress_of_light/attacks/ethereal_lance_2
execute if score @s stellarity.empress_of_light.attack_cycle matches 42 run function stellarity:entity/empress_of_light/attacks/heal

execute if score @s stellarity.empress_of_light.attack_cycle matches 43 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 44 run function stellarity:entity/empress_of_light/attacks/dash

execute if score @s stellarity.empress_of_light.attack_cycle matches 45 at @p run function stellarity:entity/empress_of_light/attacks/teleport
execute if score @s stellarity.empress_of_light.attack_cycle matches 46 run function stellarity:entity/empress_of_light/attacks/prismatic_bolts
execute if score @s[tag=stellarity.empress_of_light.daytime] stellarity.empress_of_light.attack_cycle matches 47 run function stellarity:entity/empress_of_light/attacks/prismatic_bolts
