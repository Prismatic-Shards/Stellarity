scoreboard players add #bolts stellarity.misc 1

execute if score #bolts stellarity.misc matches 1 run summon marker ~ ~0.83 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[0f, 0f]}
execute if score #bolts stellarity.misc matches 2 run summon marker ~ ~0.83 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[45f, 0f]}
execute if score #bolts stellarity.misc matches 3 run summon marker ~ ~0.83 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[90f, 0f]}
execute if score #bolts stellarity.misc matches 4 run summon marker ~ ~0.83 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[135f, 0f]}
execute if score #bolts stellarity.misc matches 5 run summon marker ~ ~0.83 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[180f, 0f]}
execute if score #bolts stellarity.misc matches 6 run summon marker ~ ~0.83 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[225f, 0f]}
execute if score #bolts stellarity.misc matches 7 run summon marker ~ ~0.83 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[270f, 0f]}
execute if score #bolts stellarity.misc matches 8 run summon marker ~ ~0.83 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[315f, 0f]}

execute as @n[type=marker,tag=stellarity.empress_of_light.prismatic_bolt] at @s run function stellarity:entity/empress_of_light/attacks/code/prismatic_bolts/post_spawn

playsound minecraft:entity.arrow.shoot hostile @a[distance=0..] ~ ~ ~ 2 1
