# Immediately mark this marker so it never executes a second time
tag @s add stellarity.oriented

# Normalize Y-jitter:
# BaseSpawner spawns at pos.y + random.nextInt(3) - 1.
# This teleports the marker back into the exact spawner block position.
execute unless block ~ ~ ~ minecraft:spawner if block ~ ~1 ~ minecraft:spawner run tp @s ~ ~1 ~
execute unless block ~ ~ ~ minecraft:spawner if block ~ ~-1 ~ minecraft:spawner run tp @s ~ ~-1 ~

# Execute the entire process strictly AT @s (normalized spawner position)
execute at @s run function stellarity:structure/end_city/marker_process
