tag @s add stellarity.flesh_piglin
tag @s add smithed.entity

item replace entity @s weapon with air

attribute @s minecraft:attack_damage modifier add stellarity:mob_stat 3 add_value
attribute @s minecraft:armor modifier add stellarity:mob_stat 4 add_value
attribute @s minecraft:knockback_resistance modifier add stellarity:mob_stat 0.15 add_value
attribute @s minecraft:movement_speed modifier add stellarity:mob_stat -0.15 add_multiplied_base
attribute @s minecraft:follow_range modifier add stellarity:mob_buff -0.86 add_multiplied_total

data merge entity @s {DeathLootTable:"stellarity:entity/flesh_piglin",drop_chances:{mainhand:1.0,offhand:0.0}}
