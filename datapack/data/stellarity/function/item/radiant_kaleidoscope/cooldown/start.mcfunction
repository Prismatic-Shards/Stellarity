# Set cooldown
scoreboard players set @s stellarity.item.rk.cooldown 960
tag @s add stellarity.item.rk.on_cooldown

# Start sounds using registered sound event
playsound stellarity:item.radiant_kaleidoscope.reload_start player @s ~ ~ ~ 1 1

# Ambient loop
playsound stellarity:item.radiant_kaleidoscope.charge_loop player @s ~ ~ ~ 0.8 1

# Dissipate VFX
particle end_rod ~ ~1 ~ 0.2 0.3 0.2 0.05 10
execute if predicate stellarity:item/holding/radiant_kaleidoscope_ascended run particle flame ~ ~1 ~ 0.2 0.3 0.2 0.03 8
