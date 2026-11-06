data modify entity @n[type=trident,tag=!stellarity.sandstorm_trident] NoGravity set value 1b
# execute unless predicate kohara:player/is_sneaking run data modify entity @n[type=trident] NoGravity set value 1b

execute store result score @n[type=trident,tag=!stellarity.sandstorm_trident] stellarity.item.sandstorm_trident.id run random value -100000..100000

# summon item_display ^ ^ ^ {Tags:["stellarity.sandstorm_trident.marker","smithed.entity","smithed.strict"]}
# data modify entity @n[type=item_display,tag=stellarity.sandstorm_trident.marker] data."stellarity:motion" set from entity @n[type=trident,tag=!stellarity.sandstorm_trident] Motion
# scoreboard players operation @n[type=marker,tag=stellarity.sandstorm_trident] stellarity.item.sandstorm_trident.id = @n[type=trident] stellarity.item.sandstorm_trident.id

execute anchored eyes run playsound entity.breeze.shoot player @a[distance=0..] ^ ^ ^0.1 0.5 1

tag @n[type=trident] add stellarity.sandstorm_trident
