# Render mark
execute if score @s stellarity.item.rk.mark_phase matches 1 run function stellarity:item/radiant_kaleidoscope/mark/render_phase1
execute if score @s stellarity.item.rk.mark_phase matches 3 if entity @s[tag=stellarity.item.rk.ascended] run function stellarity:item/radiant_kaleidoscope_ascended/vfx/crown_wrapper
execute if score @s stellarity.item.rk.mark_phase matches 3 unless entity @s[tag=stellarity.item.rk.ascended] run function stellarity:item/radiant_kaleidoscope/vfx/crown_wrapper
