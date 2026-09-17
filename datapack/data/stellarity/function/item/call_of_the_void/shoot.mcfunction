# Limit of 3 to support Multishot (1.20.5+)
execute positioned ~ ~1.7 ~ as @e[type=#minecraft:arrows,limit=3,sort=nearest,distance=..1.5] run function stellarity:item/call_of_the_void/arrow/modify

playsound minecraft:entity.ender_dragon.hurt player @a[distance=0..] ~ ~ ~ 0.2 0.7
