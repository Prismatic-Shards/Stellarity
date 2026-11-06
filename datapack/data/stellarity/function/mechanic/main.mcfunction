# Void Fishing
function stellarity:mechanic/void_fishing/main

# Better End Crystals
execute as @e[type=interaction,tag=stellarity.end_crystal] at @s run function stellarity:mechanic/end_crystal/main

# Respawn Anchor Sitting & Health Regeneration
function stellarity:mechanic/sit_anchor/tick