summon marker ~ ~-.5 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[0f, -60f]}

execute as @n[type=marker,tag=stellarity.empress_of_light.prismatic_bolt] at @s run function stellarity:entity/empress_of_light/attacks/code/prismatic_bolts/post_spawn

playsound minecraft:entity.arrow.shoot hostile @a[distance=0..] ~ ~ ~ 2 1
