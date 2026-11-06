particle minecraft:cloud ~ ~ ~ 0 0 0 1 100 force
particle minecraft:cloud ~ ~ ~ 0 0 0 0.8 100 force
particle minecraft:cloud ~ ~ ~ 0 0 0 0.6 100 force
particle minecraft:cloud ~ ~ ~ 0 0 0 0.4 100 force

particle minecraft:dragon_breath ~ ~ ~ 0 0 0 1 100 force
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.8 100 force
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.6 100 force

particle minecraft:end_rod ~ ~ ~ 0 0 0 1 100 force
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.8 100 force
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.6 100 force

playsound minecraft:entity.warden.death hostile @a[distance=0..] ~ ~ ~ 8 .7
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=0..] ~ ~ ~ 8 0

loot spawn ~ ~ ~ loot stellarity:entity/ender_dragon

execute as @e[type=item,distance=..1] run data merge entity @s {Motion:[0.0d,-0.61d,0.0d],NoGravity:1b,Glowing:1b}
execute as @e[type=item,distance=..1] run team join stellarity.purple_glow @s
execute as @n[type=item,distance=..1] run tag @s add stellarity.boss_drop
execute as @n[type=item,distance=..1] run tag @s add stellarity.item

kill @s
