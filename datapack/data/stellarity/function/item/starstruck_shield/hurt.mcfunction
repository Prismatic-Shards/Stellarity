advancement revoke @s only stellarity:event/item/block_damage_with_starstruck_shield

execute unless entity @s[predicate=stellarity:item/holding/trinket/radiant_jewel] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,Duration:10,Tags:["stellarity.shield.area_effect_cloud","stellarity.area_effect_cloud","smithed.entity","smithed.strict"],custom_particle:{type:"block","block_state":"air"}}
execute if entity @s[predicate=stellarity:item/holding/trinket/radiant_jewel] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,Duration:10,Tags:["stellarity.shield.area_effect_cloud.radiant","stellarity.area_effect_cloud","smithed.entity","smithed.strict"],custom_particle:{type:"block","block_state":"air"}}
