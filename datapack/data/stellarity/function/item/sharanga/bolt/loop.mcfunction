# No particles in first frame for the sake of visibility
  particle minecraft:dust{color:[1.0, 0.9, 0.4], scale:1.1} ~ ~ ~ 0.15 0.15 0.15 0 8 force

scoreboard players add @s stellarity.misc 1
scoreboard players add @s stellarity.misc2 1

execute if data entity @s inBlockState run function stellarity:item/sharanga/bolt/kill
execute if score @s stellarity.misc matches 61.. run function stellarity:item/sharanga/bolt/kill

execute if score @s stellarity.misc2 matches 1 rotated ~90 ~ run particle minecraft:end_rod ^ ^0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 2 rotated ~90 ~30 run particle minecraft:end_rod ^ ^0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 3 rotated ~90 ~60 run particle minecraft:end_rod ^ ^0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 4 rotated ~90 ~90 run particle minecraft:end_rod ^ ^0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 5 rotated ~90 ~120 run particle minecraft:end_rod ^ ^0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 6 rotated ~90 ~150 run particle minecraft:end_rod ^ ^0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 7 rotated ~90 ~180 run particle minecraft:end_rod ^ ^0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 8 rotated ~90 ~-150 run particle minecraft:end_rod ^ ^0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 9 rotated ~90 ~-120 run particle minecraft:end_rod ^ ^0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 10 rotated ~90 ~-90 run particle minecraft:end_rod ^ ^0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 11 rotated ~90 ~-60 run particle minecraft:end_rod ^ ^0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 12 rotated ~90 ~-30 run particle minecraft:end_rod ^ ^0.33 ^ 0 0 0 0 1 force

execute if score @s stellarity.misc2 matches 1 rotated ~90 ~ run particle minecraft:end_rod ^ ^-0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 2 rotated ~90 ~30 run particle minecraft:end_rod ^ ^-0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 3 rotated ~90 ~60 run particle minecraft:end_rod ^ ^-0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 4 rotated ~90 ~90 run particle minecraft:end_rod ^ ^-0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 5 rotated ~90 ~120 run particle minecraft:end_rod ^ ^-0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 6 rotated ~90 ~150 run particle minecraft:end_rod ^ ^-0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 7 rotated ~90 ~180 run particle minecraft:end_rod ^ ^-0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 8 rotated ~90 ~-150 run particle minecraft:end_rod ^ ^-0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 9 rotated ~90 ~-120 run particle minecraft:end_rod ^ ^-0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 10 rotated ~90 ~-90 run particle minecraft:end_rod ^ ^-0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 11 rotated ~90 ~-60 run particle minecraft:end_rod ^ ^-0.33 ^ 0 0 0 0 1 force
execute if score @s stellarity.misc2 matches 12 rotated ~90 ~-30 run particle minecraft:end_rod ^ ^-0.33 ^ 0 0 0 0 1 force

execute if score @s stellarity.misc2 matches 12 run scoreboard players reset @s stellarity.misc2
