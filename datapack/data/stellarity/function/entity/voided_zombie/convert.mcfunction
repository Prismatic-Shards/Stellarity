attribute @s minecraft:attack_damage modifier add stellarity:mob_stat 3 add_value
attribute @s minecraft:max_health modifier add stellarity:mob_stat 8 add_value
attribute @s minecraft:armor modifier add stellarity:mob_stat 3 add_value
attribute @s minecraft:armor_toughness modifier add stellarity:mob_stat 2 add_value
attribute @s minecraft:knockback_resistance modifier add stellarity:mob_stat 0.15 add_value
attribute @s minecraft:follow_range modifier add stellarity:mob_stat -0.5 add_multiplied_total

effect give @s instant_damage 1 23 true

tag @s[tag=!stellarity.buffed] add stellarity.buffed
tag @s add stellarity.voided_zombie
tag @s add smithed.entity
