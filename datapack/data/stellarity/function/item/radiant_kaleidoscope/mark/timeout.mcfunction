# Fade VFX
execute if entity @s[tag=stellarity.item.rk.ascended] run function stellarity:item/radiant_kaleidoscope_ascended/vfx/mark_fade
execute unless entity @s[tag=stellarity.item.rk.ascended] run function stellarity:item/radiant_kaleidoscope/vfx/mark_fade
tag @s remove stellarity.item.rk.ascended

# Reset
execute unless entity @s[type=ender_dragon] run team leave @s
execute unless entity @s[type=ender_dragon] run data modify entity @s Glowing set value 0b
scoreboard players reset @s stellarity.item.rk.mark_rank
scoreboard players reset @s stellarity.item.rk.mark_timer
scoreboard players reset @s stellarity.item.rk.mark_phase
scoreboard players reset @s stellarity.item.rk.crown_angle
scoreboard players reset @s stellarity.item.rk.color_1
scoreboard players reset @s stellarity.item.rk.color_2
scoreboard players reset @s stellarity.item.rk.color_3
scoreboard players reset @s stellarity.item.rk.color_4
scoreboard players reset @s stellarity.item.rk.color_5
scoreboard players reset @s stellarity.item.rk.color_6
scoreboard players reset @s stellarity.item.rk.color_7
scoreboard players reset @s stellarity.item.rk.cur_color

# Start cooldown
execute as @p[distance=..32,predicate=stellarity:item/holding/radiant_kaleidoscope] run function stellarity:item/radiant_kaleidoscope/cooldown/start
