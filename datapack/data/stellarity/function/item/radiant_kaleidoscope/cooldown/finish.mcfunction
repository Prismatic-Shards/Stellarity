# Stop sound
stopsound @s player stellarity:item.radiant_kaleidoscope.charge_loop

# Finish sound using registered sound event
playsound stellarity:item.radiant_kaleidoscope.reload_end player @s ~ ~ ~ 1 1

# Reset state
tag @s remove stellarity.item.rk.on_cooldown
scoreboard players reset @s stellarity.item.rk.cooldown

# Ready VFX
execute if predicate stellarity:item/holding/radiant_kaleidoscope_ascended run particle flash{color:[1.0,0.85,0.2,1.0]} ~ ~1.2 ~ 0 0 0 0 1
execute unless predicate stellarity:item/holding/radiant_kaleidoscope_ascended run particle flash{color:[1.0,0.4,0.9,1.0]} ~ ~1.2 ~ 0 0 0 0 1
particle end_rod ~ ~1.2 ~ 0.3 0.3 0.3 0.1 20
execute if predicate stellarity:item/holding/radiant_kaleidoscope_ascended run particle wax_on ~ ~1.2 ~ 0.3 0.3 0.3 0.1 24

# Ready actionbar
execute if predicate stellarity:item/holding/radiant_kaleidoscope_ascended run title @s actionbar [{"text":"✦ ","color":"#FFD700"},{"translate":"item.stellarity.radiant_kaleidoscope_ascended.ready","fallback":"Ascended Radiant Kaleidoscope Ready!","color":"#FFD700","bold":true},{"text":" ✦","color":"#FFD700"}]
execute if predicate stellarity:item/holding/radiant_kaleidoscope unless predicate stellarity:item/holding/radiant_kaleidoscope_ascended run title @s actionbar [{"text":"✦ ","color":"#FF76D0"},{"translate":"item.stellarity.radiant_kaleidoscope.ready","fallback":"Radiant Kaleidoscope Ready!","color":"#FF76D0","bold":true},{"text":" ✦","color":"#FF76D0"}]
