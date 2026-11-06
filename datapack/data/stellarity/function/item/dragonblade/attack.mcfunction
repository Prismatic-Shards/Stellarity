advancement revoke @s only stellarity:event/item/attack/dragonblade

#playsound minecraft:entity.phantom.bite player @a ~ ~ ~ 0.4 1
playsound minecraft:entity.ender_dragon.hurt player @a[distance=0..] ~ ~ ~ 0.25 1

execute as @e[type=!#kohara:invalid_targets,nbt={HurtTime:10s},distance=..6.5,tag=!kohara.boss,limit=1] \
unless score @s stellarity.item.dragonblade.cooldown matches 1.. \
unless score @s stellarity.item.dragonblade.until_stack_reset matches 320.. \
at @s run function stellarity:item/dragonblade/apply_stacks
