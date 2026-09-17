# Ticked directly from marker loop

execute unless block ~ ~ ~ #kohara:non_solid run function stellarity:entity/dragon/attacks/ball_of_blight/detonate
execute if entity @p[distance=..1.5] run function stellarity:entity/dragon/attacks/ball_of_blight/detonate

execute facing entity @p feet anchored eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.15 ~ ~

# Debug
#particle block_marker{block_state: 'minecraft:barrier'} ~ ~ ~ 0 0 0 0 1 force

particle minecraft:dust_color_transition{from_color: [1.0, 0.0, 0.918], scale: 3.0, to_color: [0.294, 0.0, 0.267]} ~ ~ ~ 0.5 0.5 0.5 1 3 force @a[distance=..128]
particle dragon_breath ~ ~ ~ 0.75 0.75 0.75 .03 1 force @a[distance=..128]
particle end_rod ~ ~ ~ 0.15 0.15 0.15 0.01 3 force @a[distance=..128]

scoreboard players add @s stellarity.misc 1
kill @s[scores={stellarity.misc=300..}]
