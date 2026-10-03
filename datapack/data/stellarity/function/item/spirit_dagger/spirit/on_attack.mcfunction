# Triggered when a player attacks the spirit orb interaction entity
data remove entity @s attack

# Tag the attacking player holding both spirit daggers
execute on attacker if predicate stellarity:item/holding/spirit_dagger/both run tag @s add stellarity.spirit_dagger.teleport_target
execute unless entity @a[tag=stellarity.spirit_dagger.teleport_target] as @p[predicate=stellarity:item/holding/spirit_dagger/both,distance=..6] run tag @s add stellarity.spirit_dagger.teleport_target

# Teleport target player to the spirit
execute as @a[tag=stellarity.spirit_dagger.teleport_target] positioned as @s run function stellarity:item/spirit_dagger/effects/teleport
tag @a[tag=stellarity.spirit_dagger.teleport_target] remove stellarity.spirit_dagger.teleport_target
