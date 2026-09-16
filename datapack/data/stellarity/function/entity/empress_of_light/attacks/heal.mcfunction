execute as @n[tag=stellarity.util.animated_java.eol.root] run function stellarity:util/animated_java/eol/animations/eol_healing/play
effect give @s minecraft:regeneration 1 10
data merge entity @s {Invulnerable:1b}

scoreboard players set @s stellarity.empress_of_light.attack_cooldown 60