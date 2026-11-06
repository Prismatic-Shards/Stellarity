kill @s

execute align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["stellarity.marker","stellarity.cauldron_consecration","stellarity.cauldron"]}
execute align xyz positioned ~.5 ~ ~.5 run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:cauldron",count:1},Glowing:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.002f,1.002f,1.002f]},Tags:["stellarity.consecration.cauldron_glow"]}
team join stellarity.bright_purple_glow @n[type=item_display,tag=stellarity.consecration.cauldron_glow]

particle poof ~ ~0.45 ~ 0.25 0 0.25 0 10
