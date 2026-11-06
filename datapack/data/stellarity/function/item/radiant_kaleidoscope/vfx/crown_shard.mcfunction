# Shard dust
execute if score @s stellarity.item.rk.cur_color matches 1 run particle dust{color:[1.00, 0.20, 0.20],scale:1.3} ~ ~ ~ 0 0 0 0 1
execute if score @s stellarity.item.rk.cur_color matches 2 run particle dust{color:[1.00, 0.60, 0.05],scale:1.3} ~ ~ ~ 0 0 0 0 1
execute if score @s stellarity.item.rk.cur_color matches 3 run particle dust{color:[0.95, 0.85, 0.10],scale:1.3} ~ ~ ~ 0 0 0 0 1
execute if score @s stellarity.item.rk.cur_color matches 4 run particle dust{color:[0.10, 0.80, 0.45],scale:1.3} ~ ~ ~ 0 0 0 0 1
execute if score @s stellarity.item.rk.cur_color matches 5 run particle dust{color:[0.15, 0.70, 1.00],scale:1.3} ~ ~ ~ 0 0 0 0 1
execute if score @s stellarity.item.rk.cur_color matches 6 run particle dust{color:[0.30, 0.30, 0.95],scale:1.3} ~ ~ ~ 0 0 0 0 1
execute if score @s stellarity.item.rk.cur_color matches 7 run particle dust{color:[0.75, 0.20, 0.90],scale:1.3} ~ ~ ~ 0 0 0 0 1
execute if predicate kohara:chance/20percent run particle end_rod ~ ~ ~ 0.02 0.02 0.02 0.01 1
