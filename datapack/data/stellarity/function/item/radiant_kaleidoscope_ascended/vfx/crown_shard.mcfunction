# Solar shard dust
execute if score @s stellarity.item.rk.cur_color matches 1 run particle dust{color:[1.00, 0.84, 0.00],scale:1.3} ~ ~ ~ 0 0 0 0 1
execute if score @s stellarity.item.rk.cur_color matches 2 run particle dust{color:[1.00, 0.65, 0.05],scale:1.3} ~ ~ ~ 0 0 0 0 1
execute if score @s stellarity.item.rk.cur_color matches 3 run particle dust{color:[1.00, 0.95, 0.45],scale:1.3} ~ ~ ~ 0 0 0 0 1
execute if score @s stellarity.item.rk.cur_color matches 4 run particle dust{color:[1.00, 0.45, 0.02],scale:1.3} ~ ~ ~ 0 0 0 0 1
execute if score @s stellarity.item.rk.cur_color matches 5 run particle dust{color:[1.00, 0.78, 0.15],scale:1.3} ~ ~ ~ 0 0 0 0 1
execute if score @s stellarity.item.rk.cur_color matches 6 run particle dust{color:[0.95, 0.55, 0.00],scale:1.3} ~ ~ ~ 0 0 0 0 1
execute if score @s stellarity.item.rk.cur_color matches 7 run particle dust{color:[1.00, 0.98, 0.80],scale:1.3} ~ ~ ~ 0 0 0 0 1
execute if predicate kohara:chance/20percent run particle flame ~ ~ ~ 0.02 0.02 0.02 0.01 1
