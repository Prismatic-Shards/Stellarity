execute if entity @s[tag=stellarity.empress_of_light.nighttime] as @n[type=item_display,tag=stellarity.util.animated_java.eol.root] run function stellarity:util/animated_java/eol/variants/default_phase2/apply
tag @s remove stellarity.empress_of_light.phase_1
tag @s add stellarity.empress_of_light.phase_2

tag @s add stellarity.empress_of_light.attack_ready
