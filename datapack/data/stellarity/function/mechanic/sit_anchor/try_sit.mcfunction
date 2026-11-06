# Triggered by /trigger sit

scoreboard players reset @s sit

# Scan for respawn anchors if no marker exists in range
    execute unless entity @e[type=marker,tag=stellarity.respawn_anchor,distance=..4.5] run function stellarity:mechanic/sit_anchor/scan_offsets

# If anchor exists within 4.5 blocks and is fully charged (4/4), sit down on it
    execute if entity @e[type=marker,tag=stellarity.respawn_anchor,distance=..4.5] at @e[type=marker,tag=stellarity.respawn_anchor,distance=..4.5,limit=1,sort=nearest] if block ~ ~ ~ respawn_anchor[charges=4] run return run function stellarity:mechanic/sit_anchor/sit_here

# If anchor exists but is not 4/4 charged, notify player
    execute if entity @e[type=marker,tag=stellarity.respawn_anchor,distance=..4.5] at @e[type=marker,tag=stellarity.respawn_anchor,distance=..4.5,limit=1,sort=nearest] unless block ~ ~ ~ respawn_anchor[charges=4] run return run tellraw @s {"translate":"message.stellarity.respawn_anchor.not_charged","color":"#D18CFF"}

