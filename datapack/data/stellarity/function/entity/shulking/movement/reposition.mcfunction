# Reset reposition cooldown
scoreboard players set @s stellarity.shulking.attack_cooldown 240

# Pick random target wall 1..4 (1=East, 2=West, 3=North, 4=South)
execute store result score #wall_pick stellarity.misc run random value 1..4
scoreboard players operation @s stellarity.shulking.wall = #wall_pick stellarity.misc

# Start dash towards wall
function stellarity:entity/shulking/movement/dash_start
