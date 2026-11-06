execute as @n[type=item_display,tag=stellarity.empress_of_light.model] run \
data modify entity @s Glowing set value 1b

execute as @e[type=block_display,limit=2,sort=nearest,tag=stellarity.empress_of_light.wing] \
on passengers run \
data modify entity @s Glowing set value 1b

tag @s add stellarity.empress_of_light.glowing

execute if predicate stellarity:entity/empress_of_light/is_daytime unless score #empress_of_light.is_radiant stellarity.misc matches 1 run function stellarity:entity/empress_of_light/core/glowing/join_team/day
execute unless predicate stellarity:entity/empress_of_light/is_daytime unless score #empress_of_light.is_radiant stellarity.misc matches 1 run function stellarity:entity/empress_of_light/core/glowing/join_team/night
execute if score #empress_of_light.is_radiant stellarity.misc matches 1 run function stellarity:entity/empress_of_light/core/glowing/join_team/radiant
