data merge entity @s {DeathLootTable:"stellarity:entity/stronghold/illusioner",PatrolLeader:0b}

loot replace entity @s weapon.mainhand loot stellarity:stronghold/mob_equipment/illusioner

tag @s add stellarity.stronghold.buffed
tag @s add smithed.entity

attribute @s armor modifier add stellarity:stronghold.defense_buff 3 add_value
attribute @s movement_speed modifier add stellarity:stronghold.speed_buff 0.1 add_multiplied_base
