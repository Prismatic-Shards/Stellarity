execute as @n[type=item_display,tag=stellarity.empress_of_light.model] run \
data modify entity @s Glowing set value 0b

execute as @e[type=block_display,limit=2,sort=nearest,tag=stellarity.empress_of_light.wing] \
on passengers run \
data modify entity @s Glowing set value 0b

tag @s remove stellarity.empress_of_light.glowing
