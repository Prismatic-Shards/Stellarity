advancement revoke @s only stellarity:event/item/armor/take_damage_in_hallowed_armor

execute if entity @s[tag=stellarity.holy_protection] run function stellarity:item/armor/hallowed/holy_protection/off
advancement grant @s only stellarity:altar_of_the_accursed/cancel_damage_hallowed_armor
