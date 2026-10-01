execute store result entity @s attributes[{id:"minecraft:max_health"}].base double 1 run scoreboard players get #stellarity.config stellarity.config.shulking_health
data modify entity @s Health set from entity @s attributes.[{id:"minecraft:max_health"}].base
