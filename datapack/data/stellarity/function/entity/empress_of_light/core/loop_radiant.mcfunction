tag @s add stellarity.empress_of_light.radiant

data merge entity @s {CustomName:{"translate":"entity.stellarity.empress_of_light","color":"red"}}

bossbar set stellarity:empress_of_light color red
bossbar set stellarity:empress_of_light name {"translate":"entity.stellarity.empress_of_light","color":"red"}

tag @s[tag=stellarity.empress_of_light.nighttime] remove stellarity.empress_of_light.nighttime
tag @s[tag=stellarity.empress_of_light.daytime] remove stellarity.empress_of_light.daytime
