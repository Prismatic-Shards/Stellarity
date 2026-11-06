# Remove guard state and restrictions
tag @s remove stellarity.item.rk.guard_active
scoreboard players reset @s stellarity.item.rk.shield_timer
attribute @s minecraft:movement_speed modifier remove stellarity:rk_guard
attribute @s minecraft:jump_strength modifier remove stellarity:rk_guard

# Shield break sound & particle shatter
playsound minecraft:item.shield.break player @a ~ ~ ~ 0.8 1.2
playsound stellarity:item.radiant_kaleidoscope.mark_fade player @s ~ ~ ~ 1 1
particle dust{color:[0.15, 0.65, 0.95],scale:1.2} ~ ~1 ~ 0.6 0.6 0.6 0.1 20
particle dust{color:[0.65, 0.20, 0.85],scale:1.2} ~ ~1 ~ 0.6 0.6 0.6 0.1 20

# Start Recovery (3.5s = 70 ticks)
scoreboard players set @s stellarity.item.rk.recovery 70

# Start 48-second Cooldown immediately (runs in parallel with Recovery)
function stellarity:item/radiant_kaleidoscope/cooldown/start
