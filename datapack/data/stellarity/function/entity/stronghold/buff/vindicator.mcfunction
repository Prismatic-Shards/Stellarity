data merge entity @s {DeathLootTable:"stellarity:entity/stronghold/vindicator",PatrolLeader:0b,drop_chances:{mainhand:0.085f, offhand:0f}}

loot replace entity @s weapon.mainhand loot stellarity:stronghold/mob_equipment/vindicator
execute if predicate kohara:chance/25percent run item replace entity @s weapon.offhand with shield

tag @s add stellarity.stronghold.buffed
tag @s add smithed.entity

attribute @s movement_speed modifier add stellarity:stronghold.speed_buff 0.1 add_multiplied_base

execute if predicate kohara:chance/8percent run function stellarity:entity/stronghold/buff/vindicator_elektra_shield
