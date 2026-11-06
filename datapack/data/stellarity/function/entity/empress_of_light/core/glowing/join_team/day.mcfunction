team join stellarity.empress_of_light.day_glow @s

execute as @n[type=item_display,tag=stellarity.empress_of_light.model] run \
team join stellarity.empress_of_light.day_glow @s

execute as @e[type=block_display,limit=2,sort=nearest,tag=stellarity.empress_of_light.wing] \
on passengers run \
team join stellarity.empress_of_light.day_glow @s
