data merge entity @s {DeathLootTable:"stellarity:entity/stronghold/pillager",PatrolLeader:0b,drop_chances:{mainhand:0.085f, offhand:0f}}

loot replace entity @s weapon.mainhand loot stellarity:stronghold/mob_equipment/pillager

execute store result score #arrow stellarity.misc run random value 1..10
execute if score #arrow stellarity.misc matches 8 run \
item replace entity @s weapon.offhand with tipped_arrow[potion_contents="slowness"] 64
execute if score #arrow stellarity.misc matches 9 run \
item replace entity @s weapon.offhand with tipped_arrow[potion_contents="poison"] 64
execute if score #arrow stellarity.misc matches 10 run \
item replace entity @s weapon.offhand with tipped_arrow[potion_contents="weakness"] 64

tag @s add stellarity.stronghold.buffed
tag @s add smithed.entity

attribute @s armor modifier add stellarity:stronghold.defense_buff 2 add_value
attribute @s movement_speed modifier add stellarity:stronghold.speed_buff 0.1 add_multiplied_base
