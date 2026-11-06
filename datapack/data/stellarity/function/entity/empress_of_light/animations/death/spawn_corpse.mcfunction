# Spawns fallen corpse of Daytime Empress of Light for the upcoming "Empress's Dreams" storyline
summon item_display ~ ~ ~ {Tags:["stellarity.empress_of_light.corpse","stellarity.empress_of_light.daytime_corpse","stellarity.empress_of_light.falling"],transformation:{translation:[0f,0.2f,0f],left_rotation:[0.7071f,0f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]},item:{id:"minecraft:white_dye",components:{"minecraft:item_model":"stellarity:blueprint/util/animated_java/eol/bone9","minecraft:custom_model_data":{strings:["daylight"]}}},item_display:"head"}


# Atmospheric audio and particle burst upon falling
playsound stellarity:misc.dream_enter hostile @a[distance=0..] ~ ~ ~ 1.2 0.8
particle end_rod ~ ~0.5 ~ 0.5 0.3 0.5 0.05 30
particle reverse_portal ~ ~0.5 ~ 0.4 0.2 0.4 0.02 15
particle dust{color:[1.0,0.9,0.3],scale:1.5} ~ ~0.5 ~ 0.6 0.3 0.6 0 25
