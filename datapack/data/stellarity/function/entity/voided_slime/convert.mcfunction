attribute @s minecraft:max_health base set 35
attribute @s minecraft:armor modifier add stellarity:mob_stat 10 add_value
attribute @s minecraft:armor_toughness modifier add stellarity:mob_stat 4 add_value
attribute @s minecraft:knockback_resistance modifier add stellarity:mob_stat 0.3 add_value

effect give @s regeneration infinite 0 true

# execute store result score #random stellarity.misc run random value 1..4
# execute if score #random stellarity.misc matches 1 run attribute @s scale modifier add stellarity:mob_stat -0.11 add_multiplied_total
# execute if score #random stellarity.misc matches 2 run attribute @s scale modifier add stellarity:mob_stat -0.06 add_multiplied_total

data merge entity @s {Size:1}

effect give @s instant_health 1 23 true

tag @s[tag=!stellarity.buffed] add stellarity.buffed
tag @s add stellarity.voided_slime
tag @s add smithed.entity
