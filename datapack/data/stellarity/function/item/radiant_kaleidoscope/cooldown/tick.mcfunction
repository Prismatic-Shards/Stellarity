# Cooldown tick
scoreboard players remove @s stellarity.item.rk.cooldown 1

# Checkpoint 1
execute if score @s stellarity.item.rk.cooldown matches 840 run playsound stellarity:item.radiant_kaleidoscope.soul_1 player @s ~ ~ ~ 1 1
execute if score @s stellarity.item.rk.cooldown matches 840 run particle dust{color:[0.90, 0.20, 0.15],scale:1.2} ~ ~1.2 ~ 0.2 0.2 0.2 0.05 10

# Checkpoint 2
execute if score @s stellarity.item.rk.cooldown matches 720 run playsound stellarity:item.radiant_kaleidoscope.soul_2 player @s ~ ~ ~ 1 1
execute if score @s stellarity.item.rk.cooldown matches 720 run particle dust{color:[1.00, 0.60, 0.05],scale:1.2} ~ ~1.2 ~ 0.2 0.2 0.2 0.05 10

# Checkpoint 3
execute if score @s stellarity.item.rk.cooldown matches 600 run playsound stellarity:item.radiant_kaleidoscope.soul_3 player @s ~ ~ ~ 1 1
execute if score @s stellarity.item.rk.cooldown matches 600 run particle dust{color:[0.95, 0.85, 0.10],scale:1.2} ~ ~1.2 ~ 0.2 0.2 0.2 0.05 10

# Checkpoint 4
execute if score @s stellarity.item.rk.cooldown matches 480 run playsound stellarity:item.radiant_kaleidoscope.soul_4 player @s ~ ~ ~ 1 1
execute if score @s stellarity.item.rk.cooldown matches 480 run particle dust{color:[0.10, 0.75, 0.45],scale:1.2} ~ ~1.2 ~ 0.2 0.2 0.2 0.05 10

# Checkpoint 5
execute if score @s stellarity.item.rk.cooldown matches 360 run playsound stellarity:item.radiant_kaleidoscope.soul_5 player @s ~ ~ ~ 1 1
execute if score @s stellarity.item.rk.cooldown matches 360 run particle dust{color:[0.15, 0.65, 0.95],scale:1.2} ~ ~1.2 ~ 0.2 0.2 0.2 0.05 10

# Checkpoint 6
execute if score @s stellarity.item.rk.cooldown matches 240 run playsound stellarity:item.radiant_kaleidoscope.soul_6 player @s ~ ~ ~ 1 1
execute if score @s stellarity.item.rk.cooldown matches 240 run particle dust{color:[0.20, 0.25, 0.85],scale:1.2} ~ ~1.2 ~ 0.2 0.2 0.2 0.05 10

# Checkpoint 7
execute if score @s stellarity.item.rk.cooldown matches 120 run playsound stellarity:item.radiant_kaleidoscope.soul_7 player @s ~ ~ ~ 1 1
execute if score @s stellarity.item.rk.cooldown matches 120 run particle dust{color:[0.65, 0.20, 0.85],scale:1.2} ~ ~1.2 ~ 0.2 0.2 0.2 0.05 10

# Awakening sound
execute if score @s stellarity.item.rk.cooldown matches 20 run playsound stellarity:item.radiant_kaleidoscope.soul_totem_awake player @s ~ ~ ~ 1.2 1
execute if score @s stellarity.item.rk.cooldown matches 20 if predicate stellarity:item/holding/radiant_kaleidoscope_ascended run particle flash{color:[1.0,0.85,0.2,1.0]} ~ ~1.2 ~ 0 0 0 0 1
execute if score @s stellarity.item.rk.cooldown matches 20 unless predicate stellarity:item/holding/radiant_kaleidoscope_ascended run particle flash{color:[1.0,0.4,0.9,1.0]} ~ ~1.2 ~ 0 0 0 0 1

# Finish cooldown
execute if score @s stellarity.item.rk.cooldown matches ..0 run function stellarity:item/radiant_kaleidoscope/cooldown/finish
