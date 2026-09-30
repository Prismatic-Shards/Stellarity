# Apply configured health
execute store result entity @s attributes[{id:"minecraft:max_health"}].base double 1 run scoreboard players get #stellarity.config stellarity.config.shulking_health
data modify entity @s Health set from entity @s attributes[{id:"minecraft:max_health"}].base

# Initialize boss state
scoreboard players set @s stellarity.shulking.phase 1
scoreboard players set @s stellarity.shulking.state 0
scoreboard players set @s stellarity.shulking.wall 0
scoreboard players set @s stellarity.shulking.bullet_cooldown 50
scoreboard players set @s stellarity.shulking.shockwave_cd 120
scoreboard players set @s stellarity.shulking.fangs_cd 200
scoreboard players set @s stellarity.shulking.attack_cooldown 240
scoreboard players set @s stellarity.shulking.action_timer 0

execute store result score @s stellarity.shulking.health run data get entity @s Health
