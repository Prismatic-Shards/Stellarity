data modify storage stellarity:temp harvester.custom_data set from storage stellarity:temp harvester.item."minecraft:custom_data"

$data modify storage stellarity:temp harvester.custom_data."stellarity:harvester".abilities append value "$(ability)"
$advancement grant @s only stellarity:exploration/harvester/abilities/$(ability)
$advancement grant @s only stellarity:exploration/harvester/unlock_all_abilities $(ability)

$scoreboard players reset @s stellarity.item.harvester.progress.$(ability)

advancement grant @s only stellarity:event/toasts/harvester_unlock_ability

execute if score #damage_rounded stellarity.misc matches 12 anchored eyes positioned ^ ^ ^2.5 run function stellarity:item/harvester/effects/ability_absorb

function stellarity:item/harvester/abilities/update_description
