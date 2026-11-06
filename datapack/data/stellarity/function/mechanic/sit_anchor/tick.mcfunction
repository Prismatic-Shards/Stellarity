# Sit on Respawn Anchor - tick loop

# Despawn anchor marker if block was removed
    execute as @e[type=marker,tag=stellarity.respawn_anchor] at @s unless block ~ ~ ~ respawn_anchor run kill @s

# Despawn empty/broken seats
    execute as @e[type=block_display,tag=stellarity.anchor_seat] at @s unless entity @a[distance=..1.5] run kill @s
    execute as @e[type=block_display,tag=stellarity.anchor_seat] at @s if block ~ ~-0.1 ~ air run kill @s

# Ambient glowstone dust particles from charged anchors (charges=1..4)
    execute as @e[type=marker,tag=stellarity.respawn_anchor] at @s unless block ~ ~ ~ respawn_anchor[charges=1] run particle minecraft:dust{color:[1.0, 0.88, 0.28], scale:0.75} ~0.5 ~1.05 ~0.5 0.18 0.05 0.18 0.01 1 normal @a
    execute as @e[type=marker,tag=stellarity.respawn_anchor] at @s unless block ~ ~ ~ respawn_anchor[charges=2] run particle minecraft:dust{color:[1.0, 0.88, 0.28], scale:0.75} ~0.5 ~1.05 ~0.5 0.18 0.05 0.18 0.01 1 normal @a
    execute as @e[type=marker,tag=stellarity.respawn_anchor] at @s unless block ~ ~ ~ respawn_anchor[charges=3] run particle minecraft:dust{color:[1.0, 0.88, 0.28], scale:0.75} ~0.5 ~1.05 ~0.5 0.18 0.05 0.18 0.01 1 normal @a
    execute as @e[type=marker,tag=stellarity.respawn_anchor] at @s unless block ~ ~ ~ respawn_anchor[charges=4] run particle minecraft:dust{color:[1.0, 0.88, 0.28], scale:0.75} ~0.5 ~1.05 ~0.5 0.18 0.05 0.18 0.01 1 normal @a

# Seated players tick (healing, charge consumption & dismount check)
    execute as @a[tag=stellarity.sitting_anchor] at @s run function stellarity:mechanic/sit_anchor/seated_tick

# Enable /trigger sit for unseated players
    scoreboard players enable @a[tag=!stellarity.sitting_anchor] sit

# Handle /trigger sit command
    execute as @a[scores={sit=1..}] at @s run function stellarity:mechanic/sit_anchor/try_sit

# Handle direct interaction entity clicks
    execute as @e[type=interaction,tag=stellarity.anchor_seat_trigger] if data entity @s interaction.player run function stellarity:mechanic/sit_anchor/on_interact

# Manage interaction seat triggers around known anchors
    execute as @e[type=marker,tag=stellarity.respawn_anchor] at @s run function stellarity:mechanic/sit_anchor/manage_triggers

# Clean up interaction triggers if no player is near
    execute as @e[type=interaction,tag=stellarity.anchor_seat_trigger] at @s unless entity @a[distance=..5] run kill @s
