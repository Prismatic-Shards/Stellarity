attribute @s minecraft:attack_damage modifier add stellarity:mob_stat 0.16 add_multiplied_base
attribute @s minecraft:max_health modifier add stellarity:mob_stat 4 add_value
attribute @s minecraft:armor modifier add stellarity:mob_stat 4 add_value
attribute @s minecraft:armor_toughness modifier add stellarity:mob_stat 1 add_value
attribute @s minecraft:knockback_resistance modifier add stellarity:mob_stat 0.15 add_value
attribute @s minecraft:movement_speed modifier add stellarity:mob_stat 0.1 add_multiplied_base

execute store result score #random stellarity.misc run random value 1..3
execute if score #random stellarity.misc matches 1..2 run loot replace entity @s[tag=!stellarity.end_city] weapon loot stellarity:item/weapon/call_of_the_void
execute if score #random stellarity.misc matches 3 run item replace entity @s[tag=!stellarity.end_city] weapon with stone_sword
data merge entity @s {DeathLootTable:"stellarity:entity/voided_skeleton",drop_chances:{mainhand: 0.004f, offhand: 0.0f}}
effect give @s instant_damage 1 23 true

execute at @s[tag=!stellarity.end_city] if biome ~ ~ ~ #stellarity:snowy run function stellarity:entity/voided_skeleton/frozen_spikes

tag @s[tag=!stellarity.buffed] add stellarity.buffed
tag @s add stellarity.voided_skeleton
tag @s add smithed.entity
