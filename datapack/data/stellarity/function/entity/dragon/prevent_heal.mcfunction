scoreboard players operation @s stellarity.dragon.health = @s stellarity.dragon.health_old

execute store result entity @s Health double 1 run scoreboard players get @s stellarity.dragon.health_old
