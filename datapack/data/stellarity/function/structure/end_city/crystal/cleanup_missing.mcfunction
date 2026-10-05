# Executed as and at the interaction entity when the End City crystal was destroyed without running custom sequence

# Ensure small tower tag is present if the marker had it
execute if entity @e[type=marker,tag=stellarity.end_city.crystal_small_tower,distance=..2] run tag @s add stellarity.end_city.crystal_small_tower

# Execute chest/vault spawn, visual effects, and advancements
function stellarity:structure/end_city/crystal/spawn_chest

# Clean up any remaining crystal interaction/marker entities nearby
kill @e[type=interaction,tag=stellarity.end_city.crystal,distance=..3]
kill @e[type=marker,tag=stellarity.end_city.crystal,distance=..3]
