execute as @n[tag=stellarity.util.animated_java.eol.root] run function stellarity:util/animated_java/eol/animations/eol_flying/play_exclusive
tag @s add stellarity.empress_of_light.prismatic_bolts_2
tag @s add stellarity.empress_of_light.face_player

scoreboard players set @s stellarity.empress_of_light.attack_cooldown 60

execute if entity @s[tag=stellarity.empress_of_light.nighttime,tag=stellarity.empress_of_light.phase_1] run scoreboard players set @s stellarity.empress_of_light.attack_cooldown 32
execute if entity @s[tag=stellarity.empress_of_light.nighttime,tag=stellarity.empress_of_light.phase_2] run scoreboard players set @s stellarity.empress_of_light.attack_cooldown 29

execute if entity @s[tag=stellarity.empress_of_light.radiant,tag=stellarity.empress_of_light.phase_1] run scoreboard players set @s stellarity.empress_of_light.attack_cooldown 45
execute if entity @s[tag=stellarity.empress_of_light.radiant,tag=stellarity.empress_of_light.phase_2] run scoreboard players set @s stellarity.empress_of_light.attack_cooldown 43

execute if entity @s[tag=stellarity.empress_of_light.daytime,tag=stellarity.empress_of_light.phase_1] run scoreboard players set @s stellarity.empress_of_light.attack_cooldown 33
execute if entity @s[tag=stellarity.empress_of_light.daytime,tag=stellarity.empress_of_light.phase_2] run scoreboard players set @s stellarity.empress_of_light.attack_cooldown 31

