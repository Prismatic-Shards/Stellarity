tag @s add stellarity.empress_of_light.daytime

data merge entity @s {CustomName:{"translate":"entity.stellarity.empress_of_light","color":"yellow"}}

bossbar set stellarity:empress_of_light color yellow
bossbar set stellarity:empress_of_light name {"translate":"entity.stellarity.empress_of_light","color":"yellow"}

tag @s[tag=stellarity.empress_of_light.nighttime] remove stellarity.empress_of_light.nighttime
