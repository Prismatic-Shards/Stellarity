scoreboard players add #bolts stellarity.misc 1

execute if score #bolts stellarity.misc matches 1 run summon marker ~ ~0.83 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt_2","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[0f, 0f]}
execute if score #bolts stellarity.misc matches 2 run summon marker ~ ~0.83 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt_2","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[30f, 0f]}
execute if score #bolts stellarity.misc matches 3 run summon marker ~ ~0.83 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt_2","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[60f, 0f]}
execute if score #bolts stellarity.misc matches 4 run summon marker ~ ~0.83 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt_2","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[90f, 0f]}
execute if score #bolts stellarity.misc matches 5 run summon marker ~ ~0.83 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt_2","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[120f, 0f]}
execute if score #bolts stellarity.misc matches 6 run summon marker ~ ~0.83 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt_2","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[150f, 0f]}
execute if score #bolts stellarity.misc matches 7 run summon marker ~ ~0.83 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt_2","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[180f, 0f]}
execute if score #bolts stellarity.misc matches 8 run summon marker ~ ~0.83 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt_2","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[210f, 0f]}
execute if score #bolts stellarity.misc matches 9 run summon marker ~ ~0.83 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt_2","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[240f, 0f]}
execute if score #bolts stellarity.misc matches 10 run summon marker ~ ~0.83 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt_2","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[270f, 0f]}
execute if score #bolts stellarity.misc matches 11 run summon marker ~ ~0.83 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt_2","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[300f, 0f]}
execute if score #bolts stellarity.misc matches 12 run summon marker ~ ~0.83 ~ {Tags:["stellarity.empress_of_light.prismatic_bolt_2","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[330f, 0f]}

execute as @n[type=marker,tag=stellarity.empress_of_light.prismatic_bolt_2] at @s run function stellarity:entity/empress_of_light/attacks/code/prismatic_bolts_2/post_spawn

playsound minecraft:entity.arrow.shoot hostile @a[distance=0..] ~ ~ ~ 2 1
