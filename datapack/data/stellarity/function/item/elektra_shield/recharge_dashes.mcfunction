execute unless score @s stellarity.item.elektra_shield.boost_duration matches 1.. run function stellarity:item/elektra_shield/recharge/boostnt
execute if score @s stellarity.item.elektra_shield.boost_duration matches 1.. run function stellarity:item/elektra_shield/recharge/boost

function stellarity:item/elektra_shield/actionbar

execute if score @s stellarity.item.elektra_shield.cooldown matches 320.. run function stellarity:item/elektra_shield/dash_ready
