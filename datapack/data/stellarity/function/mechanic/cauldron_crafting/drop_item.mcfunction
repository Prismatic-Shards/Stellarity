summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:0,Tags:["stellarity.brewing.ignore"],Motion:[0d,0.15d,0d]}
data modify entity @n[type=item,nbt={Item:{id:"minecraft:stone"}}] Item set from entity @n[type=item_display,tag=stellarity.brewing.item_display] item

kill @s
kill @n[type=item_display,tag=stellarity.brewing.item_display]

scoreboard players remove @n[type=marker,tag=stellarity.cauldron_crafting] stellarity.mechanics.cauldron_crafting.items_inside 1

execute at @n[type=marker,tag=stellarity.cauldron_crafting] run function stellarity:mechanic/cauldron_crafting/add_item/retag_displays
