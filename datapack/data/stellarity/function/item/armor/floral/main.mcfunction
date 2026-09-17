execute if entity @s[predicate=stellarity:item/armor/floral/wearing_chestplate,scores={kohara.shot_bow=3}] anchored eyes positioned ^ ^ ^ as @e[type=#minecraft:arrows,sort=nearest,dx=0,tag=!stellarity.floral_armor.velocity] run function stellarity:item/armor/floral/arrow/increase_velocity
execute if entity @s[predicate=stellarity:item/armor/floral/wearing_leggings,scores={kohara.shot_bow=3}] anchored eyes positioned ^ ^ ^ as @e[type=#minecraft:arrows,sort=nearest,dx=0,tag=!stellarity.floral_armor.damage] run function stellarity:item/armor/floral/arrow/increase_damage

execute if entity @s[predicate=stellarity:item/armor/floral/wearing_full_set] run function stellarity:item/armor/floral/main_set_bonus
