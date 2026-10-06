tp @s ~ ~ ~ ~5 ~

# Crystals in small towers create a smaller ring...
execute if entity @s[tag=stellarity.end_city.crystal_small_tower] run particle end_rod ^ ^ ^2 0 0 0 0 1 force
execute if entity @s[tag=!stellarity.end_city.crystal_small_tower] run particle end_rod ^ ^ ^4.5 0 0 0 0 1 force

particle dragon_breath ~ ~1 ~ 1 1 1 0.01 2 force

# ...and generate witch particles on the chains instead of on the (non-existent) floor
execute if entity @s[tag=stellarity.end_city.crystal_small_tower] run particle witch ~ ~-0.5 ~ 0.15 0 2.5 0 2 force
execute if entity @s[tag=stellarity.end_city.crystal_small_tower] run particle witch ~ ~-0.5 ~ 2.5 0 0.15 0 2 force
execute if entity @s[tag=!stellarity.end_city.crystal_small_tower] run particle witch ~ ~-1.9 ~ 4 0 4 0 2 force
