tag @s add stellarity.empress_of_light.nighttime

data merge entity @s {CustomName:{"translate":"entity.stellarity.empress_of_light","color":"light_purple"}}

bossbar set stellarity:empress_of_light color pink
bossbar set stellarity:empress_of_light name [{"translate":"entity.stellarity.empress_of_light","color":"light_purple"}]

tag @s[tag=stellarity.empress_of_light.full_daytime] remove stellarity.empress_of_light.full_daytime
tag @s[tag=stellarity.empress_of_light.daytime] remove stellarity.empress_of_light.daytime
