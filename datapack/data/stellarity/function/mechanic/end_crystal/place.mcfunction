advancement revoke @s only stellarity:event/end_crystal/place

#playsound minecraft:block.shroomlight.place player @a[distance=0..] ~ ~ ~ 1 0.8
playsound stellarity:block.end_portal_frame.fill block @a[distance=0..] ~ ~ ~ 1 0.5
playsound minecraft:block.glass.place block @a[distance=0..] ~ ~ ~ 1 0.8

execute as @n[type=end_crystal,tag=!stellarity.end_crystal] at @s run function stellarity:mechanic/end_crystal/summon_interaction

