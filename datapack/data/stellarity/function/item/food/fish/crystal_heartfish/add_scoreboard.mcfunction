scoreboard players add @s stellarity.item.fish.crystal_heartfish.total_consumed 1
function stellarity:item/food/fish/crystal_heartfish/increase_max_hp

execute if score @s stellarity.item.fish.crystal_heartfish.total_consumed matches 10 run advancement grant @s only stellarity:void_fishing/topped_off

summon area_effect_cloud ~ ~ ~ {Tags:["stellarity.item.fish.crystal_heartfish.area_effect_cloud","stellarity.area_effect_cloud","smithed.entity","smithed.strict"],Duration:21,custom_particle:{type:"block","block_state":"air"}}
