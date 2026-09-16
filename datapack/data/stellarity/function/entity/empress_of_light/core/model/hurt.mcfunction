execute if entity @s[tag=stellarity.empress_of_light.nighttime,tag=!stellarity.empress_of_light.phase_2] run execute as @n[type=item_display,tag=stellarity.util.animated_java.eol.root] run function stellarity:util/animated_java/eol/variants/default_hurt/apply
execute if entity @s[tag=stellarity.empress_of_light.nighttime,tag=stellarity.empress_of_light.phase_2] run execute as @n[type=item_display,tag=stellarity.util.animated_java.eol.root] run function stellarity:util/animated_java/eol/variants/default_phase2_hurt/apply
execute if entity @s[tag=stellarity.empress_of_light.daytime] run execute as @n[type=item_display,tag=stellarity.util.animated_java.eol.root] run function stellarity:util/animated_java/eol/variants/daylight_hurt/apply
execute if entity @s[tag=stellarity.empress_of_light.radiant] run execute as @n[type=item_display,tag=stellarity.util.animated_java.eol.root] run function stellarity:util/animated_java/eol/variants/radiant_hurt/apply
#data modify entity @n[type=item_display,tag=stellarity.util.animated_java.eol.root] item.components."minecraft:dyed_color" set value 130617101

playsound minecraft:entity.allay.hurt hostile @a[distance=0..] ~ ~ ~ 1.5 0.8
playsound minecraft:entity.vex.hurt hostile @a[distance=0..] ~ ~ ~ 1.5 1

tag @s add stellarity.empress_of_light.hurt
