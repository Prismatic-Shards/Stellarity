data merge entity @s {PickupDelay:32767s,Glowing:1b}

execute store result score #sound stellarity.misc run random value 1..5
execute if score #sound stellarity.misc matches 1 run \
playsound minecraft:entity.zombie_villager.cure player @a[distance=0..] ~ ~ ~ 0.1 0.65
execute if score #sound stellarity.misc matches 2 run \
playsound minecraft:entity.zombie_villager.cure player @a[distance=0..] ~ ~ ~ 0.1 0.7
execute if score #sound stellarity.misc matches 3 run \
playsound minecraft:entity.zombie_villager.cure player @a[distance=0..] ~ ~ ~ 0.1 0.75
execute if score #sound stellarity.misc matches 4 run \
playsound minecraft:entity.zombie_villager.cure player @a[distance=0..] ~ ~ ~ 0.1 0.8
execute if score #sound stellarity.misc matches 5 run \
playsound minecraft:entity.zombie_villager.cure player @a[distance=0..] ~ ~ ~ 0.1 0.85

execute store result score #sound stellarity.misc run random value 1..5
execute if score #sound stellarity.misc matches 1 run \
playsound minecraft:entity.zombie_villager.converted player @a[distance=0..] ~ ~ ~ 0.1 0.65
execute if score #sound stellarity.misc matches 2 run \
playsound minecraft:entity.zombie_villager.converted player @a[distance=0..] ~ ~ ~ 0.1 0.7
execute if score #sound stellarity.misc matches 3 run \
playsound minecraft:entity.zombie_villager.converted player @a[distance=0..] ~ ~ ~ 0.1 0.75
execute if score #sound stellarity.misc matches 4 run \
playsound minecraft:entity.zombie_villager.converted player @a[distance=0..] ~ ~ ~ 0.1 0.8
execute if score #sound stellarity.misc matches 5 run \
playsound minecraft:entity.zombie_villager.converted player @a[distance=0..] ~ ~ ~ 0.1 0.85

playsound minecraft:entity.fishing_bobber.splash player @a[distance=0..] ~ ~ ~ 0.2 0.9
playsound minecraft:entity.fishing_bobber.splash player @a[distance=0..] ~ ~ ~ 0.2 1.6

tag @s add stellarity.consecration.in_animation
