execute at @s positioned ~ ~3 ~ run summon item_display ~ ~ ~ {Tags:["stellarity.shulking.mega_bullet","smithed.entity","stellarity.temp"],item:{id:"minecraft:purple_shulker_box"},transformation:{translation:[0f,-0.5f,0f],left_rotation:[0f,0f,0f,1f],scale:[2f,2f,2f],right_rotation:[0f,0f,0f,1f]},brightness:{block:15,sky:15}}

execute as @e[type=item_display,tag=stellarity.shulking.mega_bullet,distance=..1] run scoreboard players set @s stellarity.live_time 140

playsound minecraft:entity.shulker.shoot hostile @a ~ ~ ~ 2 0.5
playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1.5 0.8
particle explosion ~ ~3 ~ 0 0 0 1 0 force @a[distance=..64]
