tp @s ~ ~-3 ~

execute if entity @s[nbt={HurtTime:10s}] run function stellarity_desert_scourge:worm_ai/body/check_damage

execute if predicate stellarity_desert_scourge:effects/glowing run function stellarity_desert_scourge:worm_ai/body/add_glowing

data modify entity @s Health set value 1024f