# Bullet timer tick
scoreboard players remove @s stellarity.shulking.bullet_cooldown 1
execute if score @s stellarity.shulking.bullet_cooldown matches ..0 run function stellarity:entity/shulking/attacks/bullets/shoot
