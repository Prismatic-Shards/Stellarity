kill @n[type=#kohara:item_frames,nbt={Fixed:1b}]
kill @n[type=item_display,tag=stellarity.satchel_of_voids.stationary]

execute if entity @p[gamemode=!creative,gamemode=!spectator,distance=..10] run loot spawn ~ ~-1 ~ loot stellarity:item/trinket/satchel_of_voids

kill @s
