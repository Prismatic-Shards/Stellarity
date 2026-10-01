data merge entity @s {active_effects:[{id:"resistance",amplifier:5,duration:80}],equipment:{head:{id:"shulker_box"}}} 

execute store result score #random stellarity.misc2 run random value 1..16

# 1 is default shulker box

execute if score #random stellarity.misc2 matches 2 run data modify entity @s equipment.head.id set value "white_shulker_box"
execute if score #random stellarity.misc2 matches 3 run data modify entity @s equipment.head.id set value "orange_shulker_box"
execute if score #random stellarity.misc2 matches 4 run data modify entity @s equipment.head.id set value "magenta_shulker_box"
execute if score #random stellarity.misc2 matches 5 run data modify entity @s equipment.head.id set value "light_blue_shulker_box"
execute if score #random stellarity.misc2 matches 6 run data modify entity @s equipment.head.id set value "yellow_shulker_box"
execute if score #random stellarity.misc2 matches 7 run data modify entity @s equipment.head.id set value "lime_shulker_box"
execute if score #random stellarity.misc2 matches 8 run data modify entity @s equipment.head.id set value "pink_shulker_box"
execute if score #random stellarity.misc2 matches 9 run data modify entity @s equipment.head.id set value "gray_shulker_box"
execute if score #random stellarity.misc2 matches 10 run data modify entity @s equipment.head.id set value "light_gray_shulker_box"
execute if score #random stellarity.misc2 matches 11 run data modify entity @s equipment.head.id set value "cyan_shulker_box"
execute if score #random stellarity.misc2 matches 12 run data modify entity @s equipment.head.id set value "purple_shulker_box"
execute if score #random stellarity.misc2 matches 13 run data modify entity @s equipment.head.id set value "blue_shulker_box"
execute if score #random stellarity.misc2 matches 14 run data modify entity @s equipment.head.id set value "brown_shulker_box"
execute if score #random stellarity.misc2 matches 15 run data modify entity @s equipment.head.id set value "green_shulker_box"
execute if score #random stellarity.misc2 matches 16 run data modify entity @s equipment.head.id set value "red_shulker_box"
