tag @s remove stellarity.item.elektra_shield.using
scoreboard players reset @s stellarity.item.elektra_shield.animation

effect clear @s minecraft:resistance
effect clear @s minecraft:levitation

attribute @s knockback_resistance modifier remove stellarity:elektra_shield
attribute @s gravity modifier remove stellarity:elektra_shield

kill @n[type=marker,tag=stellarity.item.elektra_shield.marker]
execute if score @s stellarity.item.elektra_shield.zap_count matches 5.. run advancement grant @s only stellarity:minecraft/adventure/electrified
scoreboard players reset @s stellarity.item.elektra_shield.zap_count

#tp @s ~ ~-0.01 ~
