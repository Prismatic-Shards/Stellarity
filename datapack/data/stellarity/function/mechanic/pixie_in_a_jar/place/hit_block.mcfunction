scoreboard players set #hit stellarity.misc 1

setblock ~ ~ ~ air
$execute align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~-0.5 ~ {Tags:["stellarity.pixie_in_a_jar","stellarity.pixie_in_a_jar_$(color)","stellarity.marker","smithed.entity","smithed.strict"]}
$execute align xyz positioned ~.5 ~.5 ~.5 run summon interaction ~ ~-0.5 ~ {width:0.5f,height:0.6f,Tags:["stellarity.pixie_in_a_jar_interaction","stellarity.pixie_in_a_jar_$(color)_interaction","stellarity.interaction","smithed.entity","smithed.strict"]}
execute align xyz positioned ~.5 ~ ~.5 run summon item_display ~ ~0.501 ~ {item:{id:"minecraft:glass",count:1,components:{"minecraft:item_model":"stellarity:pixie_in_a_jar"}},brightness:{block:15,sky:15},Tags:["stellarity.pixie_in_a_jar_display","smithed.entity","smithed.strict"]}

execute align xyz positioned ~.5 ~0.5 ~.5 run playsound minecraft:block.glass.place block @a[distance=0..] ~ ~ ~ 1 0.5

data modify entity @n[type=minecraft:item_display,tag=pixie_in_a_jar_display] transformation.scale set value [1.01f,1.01f,1.01f]

