advancement revoke @s only stellarity:event/item/void_pendant/hit_with_copper_void_pendant
execute if predicate kohara:chance/15percent \
as @e[type=!#kohara:invalid_targets,nbt={HurtTime:10s},distance=..6.5,limit=1] \
at @s run function stellarity:item/void_pendant/copper/spark