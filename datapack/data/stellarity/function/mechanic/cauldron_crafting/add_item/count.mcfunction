particle minecraft:dust_plume ~ ~.5 ~ 0 0 0 0.01 10
particle minecraft:splash ~ ~.5 ~ 0.2 0 0.2 0 13

playsound entity.generic.splash block @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.breeze.land block @a[distance=0..] ~ ~ ~ 0.5 1

data modify storage stellarity:temp cauldron_crafting.item set from entity @n[type=item,distance=..0.5] Item
execute store result score #count stellarity.misc run data get storage stellarity:temp cauldron_crafting.item.count 1
data modify storage stellarity:temp cauldron_crafting.item.count set value 1

function stellarity:mechanic/cauldron_crafting/add_item/adding_calculations/start
function stellarity:mechanic/cauldron_crafting/add_item/add

execute if score #count stellarity.misc matches ..0 run kill @n[type=item,distance=..0.5]
execute if score #count stellarity.misc matches 1.. store result entity @n[type=item,distance=..0.5] Item.count int 1 run scoreboard players get #count stellarity.misc
