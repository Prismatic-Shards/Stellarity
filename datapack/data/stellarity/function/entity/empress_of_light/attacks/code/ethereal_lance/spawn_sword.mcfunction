summon item_display ~ ~-.5 ~ {Tags:["stellarity.empress_of_light.ethereal_lance","stellarity.marker","smithed.entity","smithed.strict"],item:{id:"leather_horse_armor",components:{item_model:"stellarity:_technical/ethereal_lance"}},teleport_duration:1}
execute as @n[type=item_display,tag=stellarity.empress_of_light.ethereal_lance] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~5
#execute rotated as @n[type=marker,tag=stellarity.empress_of_light.ethereal_lance] run summon item_display ~ ~-.5 ~ {Tags:["stellarity.empress_of_light.ethereal_lance","smithed.entity","smithed.strict"],NoGravity:1b,item:{id:"leather_horse_armor",components:{item_model:"stellarity:_technical/ethereal_lance"}},teleport_duration:1}

scoreboard players reset #ethereal_lance.color stellarity.misc

execute if entity @n[type=vindicator,tag=stellarity.empress_of_light.nighttime] store result score #ethereal_lance.color stellarity.misc run random value 0..7

execute if score #ethereal_lance.color stellarity.misc matches 0 run data modify entity @n[type=item_display,tag=stellarity.empress_of_light.ethereal_lance] item.components."minecraft:dyed_color" set value 16067111
execute if score #ethereal_lance.color stellarity.misc matches 1 run data modify entity @n[type=item_display,tag=stellarity.empress_of_light.ethereal_lance] item.components."minecraft:dyed_color" set value 16082983
execute if score #ethereal_lance.color stellarity.misc matches 2 run data modify entity @n[type=item_display,tag=stellarity.empress_of_light.ethereal_lance] item.components."minecraft:dyed_color" set value 16109351
execute if score #ethereal_lance.color stellarity.misc matches 3 run data modify entity @n[type=item_display,tag=stellarity.empress_of_light.ethereal_lance] item.components."minecraft:dyed_color" set value 4846887
execute if score #ethereal_lance.color stellarity.misc matches 4 run data modify entity @n[type=item_display,tag=stellarity.empress_of_light.ethereal_lance] item.components."minecraft:dyed_color" set value 2602229
execute if score #ethereal_lance.color stellarity.misc matches 5 run data modify entity @n[type=item_display,tag=stellarity.empress_of_light.ethereal_lance] item.components."minecraft:dyed_color" set value 2578421
execute if score #ethereal_lance.color stellarity.misc matches 6 run data modify entity @n[type=item_display,tag=stellarity.empress_of_light.ethereal_lance] item.components."minecraft:dyed_color" set value 13379573
execute if score #ethereal_lance.color stellarity.misc matches 7 run data modify entity @n[type=item_display,tag=stellarity.empress_of_light.ethereal_lance] item.components."minecraft:dyed_color" set value 8398837

execute if entity @n[type=vindicator,tag=stellarity.empress_of_light.radiant] run data modify entity @n[type=item_display,tag=stellarity.empress_of_light.ethereal_lance] item.components."minecraft:dyed_color" set value 16067111
execute if entity @n[type=vindicator,tag=stellarity.empress_of_light.daytime] run data modify entity @n[type=item_display,tag=stellarity.empress_of_light.ethereal_lance] item.components."minecraft:dyed_color" set value 16109351
