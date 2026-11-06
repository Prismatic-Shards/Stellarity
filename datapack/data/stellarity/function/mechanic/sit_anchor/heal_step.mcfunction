# Apply gradual regeneration and glowstone yellow dust effects

scoreboard players set @s stellarity.sit_timer 0

# If the anchor is depleted (charges=0), stop healing and stop particles
execute at @s positioned ~ ~-1.0 ~ if block ~ ~ ~ respawn_anchor[charges=0] run return 0

# Gradual health recovery
effect give @s minecraft:regeneration 2 0 true

# Glowstone-like yellow dust particles streaming to player
particle minecraft:dust{color:[1.0, 0.85, 0.25], scale:1.0} ~ ~0.7 ~ 0.2 0.2 0.2 0.02 5 normal @a
particle minecraft:dust{color:[1.0, 0.95, 0.4], scale:0.75} ~ ~0.4 ~ 0.15 0.3 0.15 0.01 3 normal @a

# Soft chime sound every 3 intervals (~3 seconds)
scoreboard players add @s stellarity.misc 1
execute if score @s stellarity.misc matches 3.. run playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.35 1.5
execute if score @s stellarity.misc matches 3.. run scoreboard players set @s stellarity.misc 0

# If player had taken damage and has now recovered to full health, deduct 1 charge
execute if entity @s[tag=stellarity.sit_needs_heal] if score @s stellarity.health >= @s stellarity.max_health run function stellarity:mechanic/sit_anchor/on_full_heal
