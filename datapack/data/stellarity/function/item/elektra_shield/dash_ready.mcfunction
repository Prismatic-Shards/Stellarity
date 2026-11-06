playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1000 0
playsound stellarity:item.elektra_shield.recharge player @s ~ ~ ~ 1000 1

scoreboard players add @s stellarity.item.elektra_shield.dashes 1

scoreboard players reset @s stellarity.item.elektra_shield.cooldown

playsound minecraft:item.lodestone_compass.lock player @s[scores={stellarity.item.elektra_shield.dashes=3}] ~ ~ ~ 1000 0.8

particle minecraft:electric_spark ~ ~1.1 ~ 0 0 0 1 15
