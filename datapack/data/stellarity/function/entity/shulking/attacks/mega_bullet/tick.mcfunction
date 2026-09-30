# Home towards nearest player
execute if entity @p[distance=..64,gamemode=!creative,gamemode=!spectator] facing entity @p[distance=..64,gamemode=!creative,gamemode=!spectator] eyes run tp @s ^ ^ ^0.85

# Ambient visuals
particle portal ~ ~ ~ 0.5 0.5 0.5 0.1 12
particle end_rod ~ ~ ~ 0.3 0.3 0.3 0.05 8
particle soul_fire_flame ~ ~ ~ 0.3 0.3 0.3 0.02 5

# Hit player check
execute as @a[distance=..2.2,gamemode=!creative,gamemode=!spectator] run function stellarity:entity/shulking/attacks/mega_bullet/hit

# Lifetime countdown
scoreboard players remove @s stellarity.live_time 1
execute if score @s stellarity.live_time matches ..0 run kill @s
