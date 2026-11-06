# Player has fully recovered health while resting on the anchor
tag @s remove stellarity.sit_needs_heal

# Deduct 1 charge from the underlying respawn anchor
execute at @s positioned ~ ~-1.0 ~ run function stellarity:mechanic/sit_anchor/consume_charge

# Audio feedback
playsound minecraft:block.respawn_anchor.deplete block @a ~ ~ ~ 1.0 1.0
playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.8 1.4

# Celebratory glowstone dust burst
particle minecraft:dust{color:[1.0, 0.85, 0.25], scale:1.4} ~ ~0.8 ~ 0.35 0.35 0.35 0.08 22 normal @a
