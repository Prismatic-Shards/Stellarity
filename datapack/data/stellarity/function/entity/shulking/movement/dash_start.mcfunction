function stellarity:entity/shulking/movement/seek/start

scoreboard players set @s stellarity.shulking.state 2
scoreboard players set @s stellarity.shulking.action_timer 50
tag @s add stellarity.shulking.in_dash

execute facing entity @e[type=marker,tag=stellarity.shulking.target,limit=1] feet run tp @s ~ ~ ~ ~ ~

summon block_display ~ ~ ~ {block_state:{id:"minecraft:air"},Tags:["stellarity.shulking.mount","smithed.entity","smithed.strict"],start_interpolation:-1,teleport_duration:1}
ride @s mount @n[type=block_display,tag=stellarity.shulking.mount]
execute as @n[type=block_display,tag=stellarity.shulking.mount] at @s facing entity @e[type=marker,tag=stellarity.shulking.target,limit=1] feet run tp @s ~ ~ ~ ~ ~

playsound stellarity:entity.shulking.jump hostile @a ~ ~ ~ 2 1
playsound stellarity:entity.shulking.wall_jump hostile @a ~ ~ ~ 2 1
particle explosion ~ ~1 ~ 0 0 0 1 0 force @a[distance=..64]
particle dragon_breath ~ ~1 ~ 1.5 1.5 1.5 0.1 40
particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.05 20
