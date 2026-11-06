tag @s add stellarity.can_fish_out

execute store result score @s stellarity.mechanics.void_fishing.can_fish run random value 20..40

execute store result score #ran stellarity.misc run random value 1..11

execute if score #ran stellarity.misc matches 1 run \
playsound minecraft:entity.fishing_bobber.splash block @a[distance=0..] ~ ~ ~ 1.5 0.6
execute if score #ran stellarity.misc matches 2 run \
playsound minecraft:entity.fishing_bobber.splash block @a[distance=0..] ~ ~ ~ 1.5 0.7
execute if score #ran stellarity.misc matches 3 run \
playsound minecraft:entity.fishing_bobber.splash block @a[distance=0..] ~ ~ ~ 1.5 0.8
execute if score #ran stellarity.misc matches 4 run \
playsound minecraft:entity.fishing_bobber.splash block @a[distance=0..] ~ ~ ~ 1.5 0.9
execute if score #ran stellarity.misc matches 5 run \
playsound minecraft:entity.fishing_bobber.splash block @a[distance=0..] ~ ~ ~ 1.5 1
execute if score #ran stellarity.misc matches 6 run \
playsound minecraft:entity.fishing_bobber.splash block @a[distance=0..] ~ ~ ~ 1.5 1.1
execute if score #ran stellarity.misc matches 7 run \
playsound minecraft:entity.fishing_bobber.splash block @a[distance=0..] ~ ~ ~ 1.5 1.2
execute if score #ran stellarity.misc matches 8 run \
playsound minecraft:entity.fishing_bobber.splash block @a[distance=0..] ~ ~ ~ 1.5 1.3
execute if score #ran stellarity.misc matches 9 run \
playsound minecraft:entity.fishing_bobber.splash block @a[distance=0..] ~ ~ ~ 1.5 1.4
execute if score #ran stellarity.misc matches 10 run \
playsound minecraft:entity.fishing_bobber.splash block @a[distance=0..] ~ ~ ~ 1.5 1.5
execute if score #ran stellarity.misc matches 11 run \
playsound minecraft:entity.fishing_bobber.splash block @a[distance=0..] ~ ~ ~ 1.5 1.6

#particle dragon_breath ~ ~ ~ 0 0 0 0.11 60 force
particle poof ~ ~ ~ 0 0 0 0.11 40 force
