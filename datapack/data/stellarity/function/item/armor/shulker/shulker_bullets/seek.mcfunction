
data modify entity @s Target set from entity @a[limit=1,sort=nearest,tag=stellarity.item.shulker_armor.attacker,distance=..24] UUID
execute unless data entity @s Target run data modify entity @s Target set from entity @n[type=#kohara:hostile,distance=..24] UUID 

execute unless data entity @s Target run function stellarity:item/armor/shulker/shulker_bullets/remove
