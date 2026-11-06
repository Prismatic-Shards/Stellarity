# Pre-Dragon Ambience on Main Island
# Condition 1: Dragon never killed
execute if entity @e[type=marker,tag=stellarity.exit_portal,scores={stellarity.dragon.times_killed=1..}] run function stellarity:ambient/main_island_stop
execute if entity @e[type=marker,tag=stellarity.exit_portal,scores={stellarity.dragon.times_killed=1..}] run return 1

# Condition 2: No active dragon fight
execute if entity @e[type=minecraft:ender_dragon] run function stellarity:ambient/main_island_stop
execute if entity @e[type=minecraft:ender_dragon] run return 1
execute if entity @s[tag=stellarity.in_dragon_fight] run function stellarity:ambient/main_island_stop
execute if entity @s[tag=stellarity.in_dragon_fight] run return 1

# Condition 3: On Main Island (<350 blocks from 0 60 0)
execute positioned 0.5 60.0 0.5 unless entity @s[distance=..350] run function stellarity:ambient/main_island_stop
execute positioned 0.5 60.0 0.5 unless entity @s[distance=..350] run return 1

# Center check: <= 18 blocks of 0 60 0
execute positioned 0.5 60.0 0.5 if entity @s[distance=..18] run function stellarity:ambient/main_island_center
execute positioned 0.5 60.0 0.5 unless entity @s[distance=..18] run function stellarity:ambient/main_island_loop
