# Advance phase
scoreboard players set @s stellarity.shulking.phase 5

# Pick random wall (1=East, 2=West, 3=North, 4=South)
execute store result score #random_wall stellarity.misc run random value 1..4

# Ensure it's not the same wall
execute if score #random_wall stellarity.misc = @s stellarity.shulking.wall run scoreboard players add #random_wall stellarity.misc 1
execute if score #random_wall stellarity.misc matches 5.. run scoreboard players set #random_wall stellarity.misc 1

scoreboard players operation @s stellarity.shulking.wall = #random_wall stellarity.misc

# Dash to chosen wall
function stellarity:entity/shulking/movement/dash_start

# Fire Mega Shulking Bullet
function stellarity:entity/shulking/attacks/mega_bullet/start
