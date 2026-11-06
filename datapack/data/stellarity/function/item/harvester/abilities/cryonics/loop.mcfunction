tp @n[type=block_display,tag=stellarity.cryonics] ~-0.5 ~ ~-0.5

scoreboard players add @s stellarity.item.harvester.cryonics.duration 1

effect give @s regeneration infinite 4 true
effect give @s blindness infinite 0 true
effect give @s resistance infinite 250 true
effect give @s fire_resistance infinite 250 true

attribute @s attack_damage modifier add stellarity:cryonics -1 add_multiplied_total
attribute @s attack_speed modifier add stellarity:cryonics -1 add_multiplied_total
attribute @s knockback_resistance modifier add stellarity:cryonics 1000 add_value
attribute @s fall_damage_multiplier modifier add stellarity:cryonics -1 add_multiplied_total
attribute @s jump_strength modifier add stellarity:cryonics -1 add_multiplied_total
attribute @s movement_speed modifier add stellarity:cryonics -1 add_multiplied_total

execute if score @s stellarity.item.harvester.cryonics.duration matches 160.. run function stellarity:item/harvester/abilities/cryonics/stop
