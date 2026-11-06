attribute @s minecraft:attack_damage modifier add stellarity:mob_stat 6 add_value
attribute @s minecraft:armor modifier add stellarity:mob_stat 2 add_value
attribute @s minecraft:knockback_resistance modifier add stellarity:mob_stat 0.2 add_value
attribute @s minecraft:follow_range modifier add stellarity:mob_stat 1 add_multiplied_total

data merge entity @s {size:2,DeathLootTable:"stellarity:entity/phantom_buffed"}

team join stellarity.phantom_glow @s
