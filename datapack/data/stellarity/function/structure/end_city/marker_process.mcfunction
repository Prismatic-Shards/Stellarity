# 1. Read orientation from the magenta glazed terracotta indicator block underneath (~ ~-1 ~)
function stellarity:structure/end_city/marker_orient

# 2. Copy entity data to temporary storage for macro execution
data modify storage stellarity:temp end_city.current_marker set from entity @s data

# 3. Destroy spawner and restore block where spawner was located
function stellarity:structure/end_city/restore_here with entity @s data

# 4. If an indicator block was placed below, restore the original block below
execute if data entity @s data{has_indicator:1b} run function stellarity:structure/end_city/restore_below with entity @s data

# 5. Execute the structure generation action
function stellarity:structure/end_city/run_action with storage stellarity:temp end_city.current_marker

# 6. Clean up and destroy marker
data remove storage stellarity:temp end_city.current_marker
kill @s
