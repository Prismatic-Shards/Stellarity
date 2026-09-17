# Knockback resistance
  attribute @s knockback_resistance modifier add stellarity:holy_protection 1 add_value

# Initial resistance
  effect give @s resistance 2 100 true

particle end_rod ~ ~1.1 ~ 0 0 0 0.046 15 force
playsound minecraft:block.respawn_anchor.charge player @s ~ ~1.1 ~ 0.25 2

tag @s add stellarity.holy_protection

