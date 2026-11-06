advancement revoke @s only stellarity:event/item/shoot_prismatic_punch

execute as @n[type=#kohara:ammo,tag=!stellarity.aware] positioned as @s run function stellarity:item/prismatic_punch/spawn_blast

data modify storage stellarity:temp prismatic_punch.item set from entity @s SelectedItem
execute store result score @n[type=marker,tag=stellarity.prismatic_blast] stellarity.item.prismatic_punch.piercing run \
data get storage stellarity:temp prismatic_punch.item.components."minecraft:enchantments"."minecraft:piercing" 1
execute if data storage stellarity:temp prismatic_punch.item.components."minecraft:enchantments"."minecraft:multishot" run \
tag @n[type=marker,tag=stellarity.prismatic_blast] add stellarity.prismatic_blast.multishot


playsound stellarity:item.prismatic_punch.shoot player @a[distance=0..] ~ ~ ~
