advancement revoke @s only stellarity:event/item/armor/damaged_with_arrow_full_floral_set

data merge storage stellarity:temp {floral_armor:{bloom:{damage_base:40,damage_stack:20,duration_base:70,duration_stack:30}}}

execute if predicate stellarity:item/holding/sharanga run \
data merge storage stellarity:temp {floral_armor:{bloom:{damage_base:30,damage_stack:15,duration_base:50,duration_stack:30}}}
execute if predicate stellarity:item/holding/call_of_the_void run \
data merge storage stellarity:temp {floral_armor:{bloom:{damage_base:45,damage_stack:25,duration_base:70,duration_stack:30}}}
execute if predicate stellarity:item/holding/slayer_crossbow run \
data merge storage stellarity:temp {floral_armor:{bloom:{damage_base:30,damage_stack:15,duration_base:60,duration_stack:30}}}

execute as @n[type=!#kohara:invalid_targets,nbt={HurtTime:10s}] at @s run function stellarity:util/status_effects/bloom/apply with storage stellarity:temp floral_armor.bloom
