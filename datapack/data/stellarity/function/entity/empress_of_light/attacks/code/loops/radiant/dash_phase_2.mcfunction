scoreboard players add @s stellarity.empress_of_light.attack_duration 1

execute if score @s stellarity.empress_of_light.attack_duration matches 1 facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute if score @s stellarity.empress_of_light.attack_duration matches 1..5 run tp @s ^ ^-0.865 ^-0.6 ~ ~
execute if score @s stellarity.empress_of_light.attack_duration matches 6 rotated as @s run tp @s ^ ^-0.5 ^ ~ 0
execute if score @s stellarity.empress_of_light.attack_duration matches 7.. run function stellarity:entity/empress_of_light/attacks/code/dash/move

execute if score @s stellarity.empress_of_light.attack_duration matches 15.. unless block ^ ^ ^1.5 #kohara:non_solid run function stellarity:entity/empress_of_light/attacks/code/dash/found_block

execute if score @s stellarity.empress_of_light.attack_duration matches 22.. run tag @s remove stellarity.empress_of_light.dash
execute if score @s stellarity.empress_of_light.attack_duration matches 22.. run tag @s remove stellarity.empress_of_light.no_rotate
execute if entity @s[tag=stellarity.empress_of_light.prismatic_bolts] if score @s stellarity.empress_of_light.attack_duration matches 22.. run scoreboard players reset #bolts.timer
execute if entity @s[tag=stellarity.empress_of_light.prismatic_bolts] if score @s stellarity.empress_of_light.attack_duration matches 22.. run tag @s remove stellarity.empress_of_light.prismatic_bolts
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance] if score @s stellarity.empress_of_light.attack_duration matches 22.. run tag @s remove stellarity.empress_of_light.ethereal_lance

# Prismatic Bolts
execute if entity @s[tag=stellarity.empress_of_light.prismatic_bolts] if score @s stellarity.empress_of_light.attack_duration matches 2..20 run scoreboard players add #bolts.timer stellarity.misc 1
execute if entity @s[tag=stellarity.empress_of_light.prismatic_bolts] if score #bolts.timer stellarity.misc matches 4 as @n[type=item_display,tag=stellarity.empress_of_light.model] at @s rotated ~ 0 positioned ^-.3 ^1 ^0.3 run function stellarity:entity/empress_of_light/attacks/code/prismatic_bolts/summon
execute if entity @s[tag=stellarity.empress_of_light.prismatic_bolts] if score #bolts.timer stellarity.misc matches 4 run scoreboard players reset #bolts.timer

# Ethereal Lances
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance] if score @s stellarity.empress_of_light.attack_duration matches 2 at @a[distance=..40] run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/pick_point
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance] if score @s stellarity.empress_of_light.attack_duration matches 4 at @a[distance=..40] run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/pick_point
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance] if score @s stellarity.empress_of_light.attack_duration matches 6 at @a[distance=..40] run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/pick_point
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance] if score @s stellarity.empress_of_light.attack_duration matches 8 at @a[distance=..40] run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/pick_point
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance] if score @s stellarity.empress_of_light.attack_duration matches 10 at @a[distance=..40] run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/pick_point
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance] if score @s stellarity.empress_of_light.attack_duration matches 12 at @a[distance=..40] run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/pick_point
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance] if score @s stellarity.empress_of_light.attack_duration matches 14 at @a[distance=..40] run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/pick_point
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance] if score @s stellarity.empress_of_light.attack_duration matches 16 at @a[distance=..40] run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/pick_point
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance] if score @s stellarity.empress_of_light.attack_duration matches 18 at @a[distance=..40] run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/pick_point
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance] if score @s stellarity.empress_of_light.attack_duration matches 20 at @a[distance=..40] run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/pick_point