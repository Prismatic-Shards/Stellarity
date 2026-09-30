execute unless entity @s[tag=stellarity.altar_of_the_endbound_carapace.checked_type] run function stellarity:mechanic/altar_of_the_endbound_carapace/crafting/input/add_type

execute store result score @s stellarity.altar_of_the_endbound_carapace.count run data get entity @s Item.count

data merge entity @s {PickupDelay:21s,Glowing:1b}
team join stellarity.purple_glow @s
