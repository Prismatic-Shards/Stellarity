execute if score @s stellarity.item.spectral_fury.charge matches 30.. positioned ~ ~1.7 ~ as @e[type=spectral_arrow,limit=3,sort=nearest,distance=..10] at @s run function stellarity:item/spectral_fury/wisp/spawn

playsound minecraft:entity.warden.sonic_boom player @a[distance=0..] ~ ~ ~ 0.2 1.8
playsound minecraft:particle.soul_escape player @a[distance=0..] ~ ~ ~ 1 0.9
