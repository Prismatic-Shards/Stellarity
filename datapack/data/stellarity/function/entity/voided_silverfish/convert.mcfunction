attribute @s minecraft:attack_damage modifier add stellarity:mob_stat 3 add_value
attribute @s minecraft:knockback_resistance modifier add stellarity:mob_stat 0.25 add_value
attribute @s minecraft:armor modifier add stellarity:mob_stat 2 add_value
attribute @s minecraft:movement_speed modifier add stellarity:mob_stat 0.17 add_multiplied_total
attribute @s minecraft:scale modifier add stellarity:mob_stat 0.5 add_multiplied_total

data modify entity @s DeathLootTable set value "stellarity:entity/voided_silverfish"

tag @s[tag=!stellarity.buffed] add stellarity.buffed
tag @s add stellarity.voided_silverfish
tag @s add smithed.entity
