# 1. Restore the block where the spawner was located (destroys the spawner block!)
$setblock ~ ~ ~ $(restore_here)

# 2. If an indicator block was placed below, restore the original block below
$execute if data storage stellarity:temp end_city.current_marker{has_indicator:1b} run setblock ~ ~-1 ~ $(restore_below)
