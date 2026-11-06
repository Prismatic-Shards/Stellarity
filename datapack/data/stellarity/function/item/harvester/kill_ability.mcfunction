data remove storage stellarity:temp harvester.item
data modify storage stellarity:temp harvester.item set from entity @s SelectedItem.components

execute store result score #ability_count stellarity.misc run data get storage stellarity:temp harvester.item."minecraft:custom_data"."stellarity:harvester".abilities

execute unless score #ability_count stellarity.misc matches 3.. run function stellarity:item/harvester/abilities/check_for_unlocks

advancement revoke @s only stellarity:event/item/harvester/kill_for_abilities
