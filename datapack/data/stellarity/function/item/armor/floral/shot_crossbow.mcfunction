advancement revoke @s only stellarity:event/item/armor/fired_crossbow_in_full_floral_armor

execute if entity @s[predicate=stellarity:item/armor/floral/wearing_chestplate] anchored eyes positioned ^ ^ ^ as @e[type=#minecraft:arrows,sort=nearest,dx=0,tag=!stellarity.floral_armor.velocity] run function stellarity:item/armor/floral/arrow/increase_velocity
execute if entity @s[predicate=stellarity:item/armor/floral/wearing_leggings] anchored eyes positioned ^ ^ ^ as @e[type=#minecraft:arrows,sort=nearest,dx=0,tag=!stellarity.floral_armor.damage] run function stellarity:item/armor/floral/arrow/increase_damage
