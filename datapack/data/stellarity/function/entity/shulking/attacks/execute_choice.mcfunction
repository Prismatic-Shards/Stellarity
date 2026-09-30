# Reset cooldown
execute if score @s stellarity.shulking.phase matches ..5 run scoreboard players set @s stellarity.shulking.attack_cooldown 90
execute if score @s stellarity.shulking.phase matches 6.. run scoreboard players set @s stellarity.shulking.attack_cooldown 45

# Standard phases (1-5): Alternate Shockwave and Fangs
execute if score @s stellarity.shulking.phase matches ..5 store result score #choice stellarity.misc run random value 1..2
execute if score @s stellarity.shulking.phase matches ..5 if score #choice stellarity.misc matches 1 run function stellarity:entity/shulking/attacks/shockwave/start
execute if score @s stellarity.shulking.phase matches ..5 if score #choice stellarity.misc matches 2 run function stellarity:entity/shulking/attacks/fangs/start

# Enrage phase (6): Rapid Pancake Slam (60%), Shockwave (20%), Fangs (20%)
execute if score @s stellarity.shulking.phase matches 6.. store result score #choice stellarity.misc run random value 1..10
execute if score @s stellarity.shulking.phase matches 6.. if score #choice stellarity.misc matches 1..6 run function stellarity:entity/shulking/attacks/pancake_slam/start
execute if score @s stellarity.shulking.phase matches 6.. if score #choice stellarity.misc matches 7..8 run function stellarity:entity/shulking/attacks/shockwave/start
execute if score @s stellarity.shulking.phase matches 6.. if score #choice stellarity.misc matches 9..10 run function stellarity:entity/shulking/attacks/fangs/start
