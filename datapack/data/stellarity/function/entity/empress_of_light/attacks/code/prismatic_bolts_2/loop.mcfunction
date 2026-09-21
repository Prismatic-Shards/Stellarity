scoreboard players add @s stellarity.empress_of_light.projectile_age 1

execute if score @s stellarity.empress_of_light.projectile_age matches 0..15 run tp ^ ^ ^.22

execute if score @s stellarity.empress_of_light.projectile_age matches 16..22 facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.6 ~ ~
execute if score @s stellarity.empress_of_light.projectile_age matches 23..34 facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^6 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.6 ~ ~
execute if score @s stellarity.empress_of_light.projectile_age matches 35..56 facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^8 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.6 ~ ~
execute if score @s stellarity.empress_of_light.projectile_age matches 57.. run tp @s ^ ^ ^0.6 ~ ~

execute if entity @s[tag=stellarity.empress_of_light.prismatic_bolt_2.red] run particle minecraft:dust{color:[0.98, 0.243, 0.243], scale:1.5} ^ ^.5 ^ 0.13 0.13 0.13 0 3 force
execute if entity @s[tag=stellarity.empress_of_light.prismatic_bolt_2.orange] run particle minecraft:dust{color:[0.98, 0.686, 0.243], scale:1.5} ^ ^.5 ^ 0.13 0.13 0.13 0 3 force
execute if entity @s[tag=stellarity.empress_of_light.prismatic_bolt_2.yellow] run particle minecraft:dust{color:[0.98, 0.871, 0.243], scale:1.5} ^ ^.5 ^ 0.13 0.13 0.13 0 3 force
execute if entity @s[tag=stellarity.empress_of_light.prismatic_bolt_2.lime] run particle minecraft:dust{color:[0.6, 0.98, 0.243], scale:1.5} ^ ^.5 ^ 0.13 0.13 0.13 0 3 force
execute if entity @s[tag=stellarity.empress_of_light.prismatic_bolt_2.aqua] run particle minecraft:dust{color:[0.243, 0.894, 0.98], scale:1.5} ^ ^.5 ^ 0.13 0.13 0.13 0 3 force
execute if entity @s[tag=stellarity.empress_of_light.prismatic_bolt_2.blue] run particle minecraft:dust{color:[0.318, 0.243, 0.98], scale:1.5} ^ ^.5 ^ 0.13 0.13 0.13 0 3 force
execute if entity @s[tag=stellarity.empress_of_light.prismatic_bolt_2.magenta] run particle minecraft:dust{color:[0.98, 0.243, 0.918], scale:1.5} ^ ^.5 ^ 0.13 0.13 0.13 0 3 force
execute if entity @s[tag=stellarity.empress_of_light.prismatic_bolt_2.purple] run particle minecraft:dust{color:[0.647, 0.243, 0.98], scale:1.5} ^ ^.5 ^ 0.13 0.13 0.13 0 3 force
execute if entity @s[tag=stellarity.empress_of_light.prismatic_bolt_2.gold] run particle minecraft:dust{color:[1.0, 0.816, 0.0], scale:1.5} ^ ^.5 ^ 0.13 0.13 0.13 0 3 force

execute if entity @e[type=player,distance=..1.2] as @a[distance=..1.2,nbt={HurtTime:0s}] at @s run function stellarity:entity/empress_of_light/attacks/code/prismatic_bolts_2/damage

execute unless score #empress_of_light.is_radiant stellarity.misc matches 1 if score @s stellarity.empress_of_light.projectile_age matches 75.. run kill @s
execute if score #empress_of_light.is_radiant stellarity.misc matches 1 if score @s stellarity.empress_of_light.projectile_age matches 95.. run kill @s
