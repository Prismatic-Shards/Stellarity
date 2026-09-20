tag @s remove stellarity.seeking

# Set owner to the wearing player so bullets don't hit the wearer
data modify entity @s Owner set from entity @p[distance=..5] UUID

# Target attacker player if exists
data modify entity @s Target set from entity @a[limit=1,sort=nearest,tag=stellarity.item.shulker_armor.attacker,distance=..24] UUID

# Otherwise target nearest hostile mob
execute unless data entity @s Target run data modify entity @s Target set from entity @n[type=#kohara:hostile,distance=..24] UUID

# Otherwise fallback to nearest non-player living entity
execute unless data entity @s Target run data modify entity @s Target set from entity @n[type=!player,type=!#kohara:invalid_targets,distance=0.1..24] UUID

# Remove bullet if no target exists
execute unless data entity @s Target run function stellarity:item/armor/shulker/shulker_bullets/remove
