kill @n[type=item,nbt={Item:{id:"minecraft:item_frame"}},distance=..0.5]
kill @s

execute if entity @p[gamemode=!creative,gamemode=!spectator] align xyz run loot spawn ~.5 ~.5 ~.5 loot stellarity:block/phantom_item_frame
