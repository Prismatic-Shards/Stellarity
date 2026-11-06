execute as @n[tag=stellarity.util.animated_java.eol.root] run function stellarity:util/animated_java/eol/animations/eol_flying/play_exclusive
tag @s add stellarity.empress_of_light.prismatic_bolts
tag @s add stellarity.empress_of_light.face_player

tp @s ~ ~ ~ ~ 0
execute store result entity @s Rotation[0] float 1 run random value 0..359

scoreboard players set @s stellarity.empress_of_light.attack_cooldown 55
