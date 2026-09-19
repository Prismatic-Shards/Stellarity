tag @s remove stellarity.holy_protection

attribute @s knockback_resistance modifier remove stellarity:holy_protection
function stellarity:item/armor/hallowed/holy_protection/remove_speed
scoreboard players set @s stellarity.item.armors.holy_protection_cooldown 500
