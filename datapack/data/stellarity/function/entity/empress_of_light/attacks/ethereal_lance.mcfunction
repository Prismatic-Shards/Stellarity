execute as @n[tag=stellarity.util.animated_java.eol.root] run function stellarity:util/animated_java/eol/animations/eol_flying/play_exclusive
tag @s add stellarity.empress_of_light.ethereal_lance
tag @s add stellarity.empress_of_light.face_player

scoreboard players set #ethereal_lance.type stellarity.misc 1

scoreboard players set @s stellarity.empress_of_light.attack_cooldown 65
