# advancement revoke @s only stellarity:event/item/shoot_slayer_crossbow

data modify storage stellarity:temp slayer_crossbow.item set from entity @s SelectedItem
tag @s add laser
execute as @e[type=#kohara:ammo,tag=!in.checked,distance=..5,limit=1] positioned as @s run function stellarity:item/slayer_crossbow/as_arrow

tag @e[type=!#kohara:invalid_targets,tag=laser] remove laser
