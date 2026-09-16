execute if entity @s[tag=stellarity.empress_of_light.nighttime,tag=!stellarity.empress_of_light.phase_2] run execute as @n[type=item_display,tag=stellarity.util.animated_java.eol.root] run function stellarity:util/animated_java/eol/variants/default/apply
execute if entity @s[tag=stellarity.empress_of_light.nighttime,tag=stellarity.empress_of_light.phase_2] run execute as @n[type=item_display,tag=stellarity.util.animated_java.eol.root] run function stellarity:util/animated_java/eol/variants/default_phase2/apply
execute if entity @s[tag=stellarity.empress_of_light.daytime] run execute as @n[type=item_display,tag=stellarity.util.animated_java.eol.root] run function stellarity:util/animated_java/eol/variants/daylight/apply
execute if entity @s[tag=stellarity.empress_of_light.radiant] run execute as @n[type=item_display,tag=stellarity.util.animated_java.eol.root] run function stellarity:util/animated_java/eol/variants/radiant/apply
#data modify entity @n[type=item_display,tag=stellarity.util.animated_java.eol.root] item.components."minecraft:dyed_color" set value 16777215

tag @s remove stellarity.empress_of_light.hurt
