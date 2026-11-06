execute store result entity @s Rotation[0] float 1 run random value 0..360

execute if entity @n[type=vindicator,tag=stellarity.empress_of_light.nighttime] store result score @s stellarity.misc run random value 0..7

execute if score @s stellarity.misc matches 0 run tag @s add stellarity.empress_of_light.prismatic_bolt.red
execute if score @s stellarity.misc matches 1 run tag @s add stellarity.empress_of_light.prismatic_bolt.orange
execute if score @s stellarity.misc matches 2 run tag @s add stellarity.empress_of_light.prismatic_bolt.yellow
execute if score @s stellarity.misc matches 3 run tag @s add stellarity.empress_of_light.prismatic_bolt.lime
execute if score @s stellarity.misc matches 4 run tag @s add stellarity.empress_of_light.prismatic_bolt.aqua
execute if score @s stellarity.misc matches 5 run tag @s add stellarity.empress_of_light.prismatic_bolt.blue
execute if score @s stellarity.misc matches 6 run tag @s add stellarity.empress_of_light.prismatic_bolt.magenta
execute if score @s stellarity.misc matches 7 run tag @s add stellarity.empress_of_light.prismatic_bolt.purple

execute if entity @n[type=vindicator,tag=stellarity.empress_of_light.radiant] run tag @s add stellarity.empress_of_light.prismatic_bolt.red
execute if entity @n[type=vindicator,tag=stellarity.empress_of_light.daytime] run tag @s add stellarity.empress_of_light.prismatic_bolt.gold
