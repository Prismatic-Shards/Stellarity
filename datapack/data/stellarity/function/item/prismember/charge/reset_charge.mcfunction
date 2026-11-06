scoreboard players reset @s stellarity.item.prismember.charge

execute if entity @s[tag=stellarity.item.prismember.ready] run kill @n[type=interaction,tag=stellarity.prismember]
tag @s remove stellarity.item.prismember.ready

title @s actionbar ""
