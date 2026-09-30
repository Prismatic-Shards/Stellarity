# Kill any previous target markers
kill @e[type=marker,tag=stellarity.shulking.target]

# Summon seeker marker at boss position
summon marker ~ ~ ~ {Tags:["stellarity.shulking.target","stellarity.temp"]}

# Set maximum raycast steps (e.g. 35 blocks)
scoreboard players set #step stellarity.misc 35

# Execute appropriate raycast based on target wall (1=East, 2=West, 3=North, 4=South, 5=Ceiling)
execute as @e[type=marker,tag=stellarity.shulking.target,limit=1] at @s if score @n[type=shulker,tag=stellarity.shulking] stellarity.shulking.wall matches 1 run function stellarity:entity/shulking/movement/seek/step_east
execute as @e[type=marker,tag=stellarity.shulking.target,limit=1] at @s if score @n[type=shulker,tag=stellarity.shulking] stellarity.shulking.wall matches 2 run function stellarity:entity/shulking/movement/seek/step_west
execute as @e[type=marker,tag=stellarity.shulking.target,limit=1] at @s if score @n[type=shulker,tag=stellarity.shulking] stellarity.shulking.wall matches 3 run function stellarity:entity/shulking/movement/seek/step_north
execute as @e[type=marker,tag=stellarity.shulking.target,limit=1] at @s if score @n[type=shulker,tag=stellarity.shulking] stellarity.shulking.wall matches 4 run function stellarity:entity/shulking/movement/seek/step_south
execute as @e[type=marker,tag=stellarity.shulking.target,limit=1] at @s if score @n[type=shulker,tag=stellarity.shulking] stellarity.shulking.wall matches 5 run function stellarity:entity/shulking/movement/seek/step_ceiling
