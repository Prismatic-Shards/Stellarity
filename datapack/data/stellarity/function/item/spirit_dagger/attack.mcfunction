advancement revoke @s only stellarity:event/item/attack/spirit_dagger

tag @s add stellarity.spirit_dagger.attacker
execute unless entity @s[tag=stellarity.spirit_dagger.teleport] at @s as @n[type=!#kohara:invalid_targets,tag=!stellarity.spirit_dagger.attacker,nbt={HurtTime:10s}] unless score @s stellarity.item.spirit_dagger.attract_cooldown matches 1.. unless entity @e[type=armor_stand,distance=..4,tag=stellarity.spirit_dagger.spirit] if predicate kohara:chance/50percent at @s run function stellarity:item/spirit_dagger/spirit/attract
tag @s remove stellarity.spirit_dagger.attacker
