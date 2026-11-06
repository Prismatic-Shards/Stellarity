tag @e[type=item,distance=..3] add stellarity.altar_of_the_accursed.skip
tag @e[type=item,distance=..3] remove stellarity.altar_of_the_accursed.checked_type
execute as @e[type=item,distance=..3] run data merge entity @s {Glowing:0b}
execute as @e[type=item,distance=..3,nbt=!{PickupDelay:0s}] run data modify entity @s PickupDelay set value 0s

function stellarity:util/tellraw/feature_disabled {string:"item_disabled"}