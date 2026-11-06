execute store result score #sound stellarity.misc run random value 1..5
execute if score #sound stellarity.misc matches 1 run \
playsound minecraft:entity.zombie_villager.converted player @a[distance=0..] ~ ~ ~ 0.3 0.65
execute if score #sound stellarity.misc matches 2 run \
playsound minecraft:entity.zombie_villager.converted player @a[distance=0..] ~ ~ ~ 0.3 0.7
execute if score #sound stellarity.misc matches 3 run \
playsound minecraft:entity.zombie_villager.converted player @a[distance=0..] ~ ~ ~ 0.3 0.75
execute if score #sound stellarity.misc matches 4 run \
playsound minecraft:entity.zombie_villager.converted player @a[distance=0..] ~ ~ ~ 0.3 0.8
execute if score #sound stellarity.misc matches 5 run \
playsound minecraft:entity.zombie_villager.converted player @a[distance=0..] ~ ~ ~ 0.3 0.85
