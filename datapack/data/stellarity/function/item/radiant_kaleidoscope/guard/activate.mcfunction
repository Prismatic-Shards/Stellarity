# Activate Radiant Guard
scoreboard players reset @s stellarity.item.rk.charge_shift
tag @s add stellarity.item.rk.guard_active
scoreboard players set @s stellarity.item.rk.shield_timer 320

# Activation sounds
playsound minecraft:item.shield.block player @a ~ ~ ~ 1.5 0.8
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1.0 1.5

# Flash burst
execute if predicate stellarity:item/holding/radiant_kaleidoscope_ascended run particle flash{color:[1.0,0.8,0.1,1.0]} ~ ~1 ~ 0 0 0 0 1
execute unless predicate stellarity:item/holding/radiant_kaleidoscope_ascended run particle flash{color:[0.1,0.9,1.0,1.0]} ~ ~1 ~ 0 0 0 0 1
particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.1 30

# Complete immobility
attribute @s minecraft:movement_speed modifier add stellarity:rk_guard -1.0 add_multiplied_total
attribute @s minecraft:jump_strength modifier add stellarity:rk_guard -1.0 add_multiplied_total
effect give @s minecraft:mining_fatigue 2 255 true
effect give @s minecraft:resistance 2 1 true
