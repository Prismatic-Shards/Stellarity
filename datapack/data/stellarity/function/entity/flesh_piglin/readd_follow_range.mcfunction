tag @s remove stellarity.flesh_piglin.aggro_target
execute as @e[type=zombified_piglin,tag=stellarity.flesh_piglin] run attribute @s follow_range modifier add stellarity:mob_stat -0.84 add_multiplied_total
