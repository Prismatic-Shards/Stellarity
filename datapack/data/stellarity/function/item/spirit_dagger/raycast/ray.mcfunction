execute if score #hit stellarity.misc matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=interaction,tag=!stellarity.spirit_dagger.raycast,tag=stellarity.spirit_dagger.spirit,dx=0,sort=nearest] run function stellarity:item/spirit_dagger/raycast/check_hit_entity
scoreboard players add #distance stellarity.misc 1
execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc matches ..1000 positioned ^ ^ ^0.1 run function stellarity:item/spirit_dagger/raycast/ray

particle minecraft:dust{color:[0.592, 0.882, 0.894], scale:1.0} ~ ~ ~ 0.223 0.223 0.223 1 1 force @a[distance=..192]
particle minecraft:dust{color:[1.0, 0.906, 0.047], scale:1.0} ~ ~ ~ 0.223 0.223 0.223 1 1 force @a[distance=..192]
particle minecraft:dust{color:[0.757, 0.337, 0.812], scale:1.0} ~ ~ ~ 0.223 0.223 0.223 1 1 force @a[distance=..192]

scoreboard players add #particles stellarity.misc 1

execute if score #particles stellarity.misc matches 6 run particle end_rod ~ ~ ~ 0.223 0.223 0.223 0.03 1 force @a[distance=..192]

# ANOTHER EASTER EGG???? :OOOOO
execute if score #particles stellarity.misc matches 6 if score #kohara stellarity.misc matches 1 run particle cherry_leaves ~ ~ ~ 0.26 0.26 0.26 0.015 1 force @a[distance=..192]

execute if score #particles stellarity.misc matches 6 run scoreboard players set #particles stellarity.misc 0
