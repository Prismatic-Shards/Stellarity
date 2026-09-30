ride @s dismount
kill @e[type=block_display,tag=stellarity.shulking.mount]
kill @e[type=area_effect_cloud,tag=stellarity.shulking.movement_trail]
tag @s remove stellarity.shulking.in_dash

execute at @e[type=marker,tag=stellarity.shulking.target,limit=1] run tp @s ~ ~ ~
kill @e[type=marker,tag=stellarity.shulking.target]

playsound stellarity:entity.shulking.land hostile @a ~ ~ ~ 2 1
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1.5 1
particle block{block_state:"minecraft:purpur_block"} ~ ~1 ~ 1.5 1.5 1.5 0.1 60
particle explosion ~ ~1 ~ 0 0 0 1 0 force @a[distance=..64]

execute if score @s stellarity.shulking.wall matches 1 run tp @s ~ ~ ~ -90 0
execute if score @s stellarity.shulking.wall matches 2 run tp @s ~ ~ ~ 90 0
execute if score @s stellarity.shulking.wall matches 3 run tp @s ~ ~ ~ 0 0
execute if score @s stellarity.shulking.wall matches 4 run tp @s ~ ~ ~ 180 0

execute if score @s stellarity.shulking.wall matches 1..5 run scoreboard players set @s stellarity.shulking.state 1
execute if score @s stellarity.shulking.wall matches 0 run scoreboard players set @s stellarity.shulking.state 0

scoreboard players set @s stellarity.shulking.attack_cooldown 200
scoreboard players set @s stellarity.shulking.bullet_cooldown 30
