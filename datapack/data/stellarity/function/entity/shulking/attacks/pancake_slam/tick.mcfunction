scoreboard players remove @s stellarity.shulking.action_timer 1

# Phase A: Ascend (timer 20..30)
execute if score @s stellarity.shulking.action_timer matches 20..30 run tp @s ~ ~0.8 ~
execute if score @s stellarity.shulking.action_timer matches 20..30 run particle dragon_breath ~ ~ ~ 0.8 0.2 0.8 0.05 10

# Phase B: Hover & telegraph (timer 13..19)
execute if score @s stellarity.shulking.action_timer matches 19 run playsound minecraft:block.anvil.hit hostile @a ~ ~ ~ 2 0.5
execute if score @s stellarity.shulking.action_timer matches 13..19 facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute if score @s stellarity.shulking.action_timer matches 13..19 run particle witch ~ ~ ~ 1 1 1 0.1 8

# Phase C: Dive towards player (timer 1..12)
execute if score @s stellarity.shulking.action_timer matches 1..12 facing entity @p eyes run tp @s ^ ^-1.4 ^1.2
execute if score @s stellarity.shulking.action_timer matches 1..12 run function stellarity:entity/shulking/movement/break_blocks
execute if score @s stellarity.shulking.action_timer matches 1..12 run particle explosion ~ ~1 ~ 0 0 0 1 0 force @a[distance=..64]

# Check ground impact or timer finish
execute if score @s stellarity.shulking.action_timer matches ..12 if block ~ ~-0.8 ~ #kohara:solid run function stellarity:entity/shulking/attacks/pancake_slam/land
execute if score @s stellarity.shulking.action_timer matches ..0 run function stellarity:entity/shulking/attacks/pancake_slam/land
