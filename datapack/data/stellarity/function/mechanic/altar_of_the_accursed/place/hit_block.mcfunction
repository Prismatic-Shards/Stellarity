scoreboard players set #hit stellarity.misc 1

execute align xyz if block ~ ~1 ~ minecraft:snow run setblock ~ ~1 ~ air destroy
execute align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~1 ~ {Tags:["stellarity.altar_of_the_accursed","stellarity.altar_of_the_accursed_activated","stellarity.marker","smithed.entity","smithed.strict"]}
execute align xyz positioned ~.5 ~ ~.5 run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:end_portal_frame",count:1,components:{"minecraft:item_model":"stellarity:altar_of_the_accursed"}},Tags:["stellarity.altar_of_the_accursed_display","smithed.entity","smithed.strict"]}

execute align xyz positioned ~.5 ~0.5 ~.5 run particle end_rod ~ ~ ~ 0.5 0.5 0.5 0 21 normal
execute align xyz positioned ~.5 ~0.5 ~.5 run playsound minecraft:block.amethyst_cluster.place block @a[distance=0..] ~ ~ ~ 1 0.5

data modify entity @n[type=minecraft:item_display,tag=stellarity.altar_of_the_accursed_display] transformation.scale set value [1.01f,1.01f,1.01f]
