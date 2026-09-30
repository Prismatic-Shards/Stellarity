execute as @e[type=block_display,tag=stellarity.shulking.mount,distance=..3,limit=1] rotated as @s run tp @s ^ ^ ^1.5 ~ ~
execute unless entity @e[type=block_display,tag=stellarity.shulking.mount,distance=..3] if entity @e[type=marker,tag=stellarity.shulking.target] facing entity @e[type=marker,tag=stellarity.shulking.target,limit=1] feet run tp @s ^ ^ ^1.5

execute as @e[type=area_effect_cloud,tag=stellarity.shulking.movement_trail,distance=..6] at @s run particle dust{color:[0.58,0.1,0.85],scale:1.4} ~ ~ ~ 0.3 0.3 0.3 0 4
execute as @e[type=area_effect_cloud,tag=stellarity.shulking.movement_trail,distance=..4] at @s run particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.02 2

particle dragon_breath ~ ~1.5 ~ 0.8 0.8 0.8 0.05 12
particle portal ~ ~1.5 ~ 1 1 1 0.2 16
particle end_rod ~ ~1.5 ~ 0.4 0.4 0.4 0.05 4

function stellarity:entity/shulking/movement/break_blocks

execute as @a[distance=..4.5,gamemode=!creative,gamemode=!spectator] run damage @s 8 mob_attack by @e[type=shulker,tag=stellarity.shulking,limit=1,sort=nearest]

scoreboard players remove @s stellarity.shulking.action_timer 1

execute if entity @e[type=marker,tag=stellarity.shulking.target,distance=..3] run function stellarity:entity/shulking/movement/dash_finish
execute if score @s stellarity.shulking.action_timer matches ..0 run function stellarity:entity/shulking/movement/dash_finish
