# Roll sound
execute store result score #rnd kohara.misc run random value 1..100

# Secret sound
execute if score #rnd kohara.misc matches 1..2 at @s run playsound stellarity:item.radiant_kaleidoscope.kill_secret player @a[distance=..32] ~ ~ ~ 1.5 1

# Kill sounds
execute if score #rnd kohara.misc matches 3..100 if score @s stellarity.item.rk.mark_rank matches 1.. at @s run playsound stellarity:item.radiant_kaleidoscope.kill_marked player @a[distance=..32] ~ ~ ~ 1.5 1
execute if score #rnd kohara.misc matches 3..100 unless score @s stellarity.item.rk.mark_rank matches 1.. at @s run playsound stellarity:item.radiant_kaleidoscope.kill player @a[distance=..32] ~ ~ ~ 1.5 1

# Death particles
execute at @s if entity @s[tag=stellarity.item.rk.ascended] run particle flash{color:[1.0,0.85,0.2,1.0]} ~ ~1 ~ 0 0 0 0 2
execute at @s unless entity @s[tag=stellarity.item.rk.ascended] run particle flash{color:[1.0,0.3,0.85,1.0]} ~ ~1 ~ 0 0 0 0 2
execute at @s run particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.1 20

# Cleanup
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
tag @s remove stellarity.item.rk.ascended

# Start cooldown
execute as @p[distance=..32,predicate=stellarity:item/holding/radiant_kaleidoscope] run function stellarity:item/radiant_kaleidoscope/cooldown/start
