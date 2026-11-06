scoreboard players reset #cur_color kohara.misc
execute if score @s stellarity.item.rk.mark_rank matches 1 run scoreboard players operation #cur_color kohara.misc = @s stellarity.item.rk.color_1
execute if score @s stellarity.item.rk.mark_rank matches 2 run scoreboard players operation #cur_color kohara.misc = @s stellarity.item.rk.color_2
execute if score @s stellarity.item.rk.mark_rank matches 3 run scoreboard players operation #cur_color kohara.misc = @s stellarity.item.rk.color_3
execute if score @s stellarity.item.rk.mark_rank matches 4 run scoreboard players operation #cur_color kohara.misc = @s stellarity.item.rk.color_4
execute if score @s stellarity.item.rk.mark_rank matches 5 run scoreboard players operation #cur_color kohara.misc = @s stellarity.item.rk.color_5
execute if score @s stellarity.item.rk.mark_rank matches 6 run scoreboard players operation #cur_color kohara.misc = @s stellarity.item.rk.color_6
execute if score @s stellarity.item.rk.mark_rank matches 7 run scoreboard players operation #cur_color kohara.misc = @s stellarity.item.rk.color_7

execute unless entity @s[type=ender_dragon] run data modify entity @s Glowing set value 1b
execute unless entity @s[type=ender_dragon] run team leave @s

execute unless entity @s[type=ender_dragon] if score #cur_color kohara.misc matches 1 run team join stellarity.rk.red_glow @s
execute unless entity @s[type=ender_dragon] if score #cur_color kohara.misc matches 2 run team join stellarity.rk.gold_glow @s
execute unless entity @s[type=ender_dragon] if score #cur_color kohara.misc matches 3 run team join stellarity.rk.yellow_glow @s
execute unless entity @s[type=ender_dragon] if score #cur_color kohara.misc matches 4 run team join stellarity.rk.green_glow @s
execute unless entity @s[type=ender_dragon] if score #cur_color kohara.misc matches 5 run team join stellarity.rk.aqua_glow @s
execute unless entity @s[type=ender_dragon] if score #cur_color kohara.misc matches 6 run team join stellarity.rk.blue_glow @s
execute unless entity @s[type=ender_dragon] if score #cur_color kohara.misc matches 7 run team join stellarity.rk.purple_glow @s
