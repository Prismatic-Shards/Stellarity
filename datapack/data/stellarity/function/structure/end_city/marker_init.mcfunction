# Immediately mark this marker so it never executes a second time
tag @s add stellarity.oriented

# Normalize Y-jitter:
# BaseSpawner spawns at pos.y + random.nextInt(3) - 1.
# This teleports the marker back into the exact spawner block position.
execute unless block ~ ~ ~ minecraft:spawner if block ~ ~1 ~ minecraft:spawner run tp @s ~ ~1 ~
execute unless block ~ ~ ~ minecraft:spawner if block ~ ~-1 ~ minecraft:spawner run tp @s ~ ~-1 ~

# Read orientation from the magenta glazed terracotta indicator block underneath
# (executed with 'at @s' to ensure new position after potential tp is used)
execute at @s run function stellarity:structure/end_city/marker_orient

# Copy entity data to temporary storage for macro execution
data modify storage stellarity:temp end_city.current_marker set from entity @s data

# DESTROY SPAWNER AND RESTORE BLOCKS FIRST!
# This guarantees that even if the action errors or crashes, the spawner is already gone,
# eliminating any possible entity leak.
execute at @s run function stellarity:structure/end_city/restore_blocks with storage stellarity:temp end_city.current_marker

# Execute the structure generation action
execute at @s run function stellarity:structure/end_city/run_action with storage stellarity:temp end_city.current_marker

# Clean up and destroy marker
data remove storage stellarity:temp end_city.current_marker
kill @s
