scoreboard players set #hit stellarity.misc 1

execute if entity @n[type=minecraft:interaction,tag=stellarity.pixie_in_a_jar_yellow_interaction,distance=..0.5] run data modify storage stellarity:temp pixie_in_a_jar.color set value yellow
execute if entity @n[type=minecraft:interaction,tag=stellarity.pixie_in_a_jar_lime_interaction,distance=..0.5] run data modify storage stellarity:temp pixie_in_a_jar.color set value lime
execute if entity @n[type=minecraft:interaction,tag=stellarity.pixie_in_a_jar_magenta_interaction,distance=..0.5] run data modify storage stellarity:temp pixie_in_a_jar.color set value magenta
execute if entity @n[type=minecraft:interaction,tag=stellarity.pixie_in_a_jar_light_blue_interaction,distance=..0.5] run data modify storage stellarity:temp pixie_in_a_jar.color set value light_blue
execute if entity @n[type=minecraft:interaction,tag=stellarity.pixie_in_a_jar_light_radiant_interaction,distance=..0.5] run data modify storage stellarity:temp pixie_in_a_jar.color set value radiant
execute as @n[type=minecraft:interaction,tag=stellarity.pixie_in_a_jar_interaction,distance=..0.5] run function stellarity:mechanic/pixie_in_a_jar/break/break with storage stellarity:temp pixie_in_a_jar

execute align xyz positioned ~.5 ~0.5 ~.5 run playsound minecraft:block.glass.break block @a[distance=0..] ~ ~ ~ 1 0.5