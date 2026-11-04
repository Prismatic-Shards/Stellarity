# Init mark
execute unless score @s stellarity.item.rk.mark_rank matches 1.. run scoreboard players set @s stellarity.item.rk.mark_rank 0

# Clear old marks
execute if score @s stellarity.item.rk.mark_rank matches 0 as @e[scores={stellarity.item.rk.mark_rank=1..}] unless entity @s[distance=0..0.01] at @s run function stellarity:item/radiant_kaleidoscope/mark/timeout

# Shuffle colors
execute if score @s stellarity.item.rk.mark_rank matches 0 run function stellarity:item/radiant_kaleidoscope/mark/shuffle_colors

# Upgrade rank
execute if score @s stellarity.item.rk.mark_rank matches ..6 run scoreboard players add @s stellarity.item.rk.mark_rank 1

# Phase 1
execute if score @s stellarity.item.rk.mark_rank matches 1 run scoreboard players set @s stellarity.item.rk.mark_phase 1
execute if score @s stellarity.item.rk.mark_rank matches 1 run scoreboard players set @s stellarity.item.rk.phase_timer 6
execute if score @s stellarity.item.rk.mark_rank matches 1 run playsound stellarity:item.radiant_kaleidoscope.mark_apply player @a ~ ~ ~ 1 1

# Track ascended
execute if entity @p[tag=kohara.attacker,predicate=stellarity:item/holding/radiant_kaleidoscope_ascended] run tag @s add stellarity.item.rk.ascended
execute unless entity @p[tag=kohara.attacker,predicate=stellarity:item/holding/radiant_kaleidoscope_ascended] run tag @s remove stellarity.item.rk.ascended

# Mark VFX
execute if entity @s[tag=stellarity.item.rk.ascended] run function stellarity:item/radiant_kaleidoscope_ascended/vfx/mark_apply
execute unless entity @s[tag=stellarity.item.rk.ascended] run function stellarity:item/radiant_kaleidoscope/vfx/mark_apply

# Duration
execute if score @s stellarity.item.rk.mark_rank matches 1 run scoreboard players set @s stellarity.item.rk.mark_timer 2180
execute if score @s stellarity.item.rk.mark_rank matches 2 run scoreboard players set @s stellarity.item.rk.mark_timer 1880
execute if score @s stellarity.item.rk.mark_rank matches 3 run scoreboard players set @s stellarity.item.rk.mark_timer 1680
execute if score @s stellarity.item.rk.mark_rank matches 4 run scoreboard players set @s stellarity.item.rk.mark_timer 1480
execute if score @s stellarity.item.rk.mark_rank matches 5 run scoreboard players set @s stellarity.item.rk.mark_timer 1280
execute if score @s stellarity.item.rk.mark_rank matches 6 run scoreboard players set @s stellarity.item.rk.mark_timer 1080
execute if score @s stellarity.item.rk.mark_rank matches 7 run scoreboard players set @s stellarity.item.rk.mark_timer 980

# Team outline
function stellarity:item/radiant_kaleidoscope/mark/join_team
