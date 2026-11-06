#playsound block.beacon.ambient block @a[distance=0..] ~ ~ ~ .4 0

execute store result score #ran stellarity.misc run random value 1..5

execute if predicate kohara:chance/33percent run \
	playsound minecraft:entity.ender_dragon.growl block @a[distance=0..] ~ ~ ~ 0.15 1

execute if score #ran stellarity.misc matches 1 run \
	playsound block.respawn_anchor.ambient block @a[distance=0..] ~ ~ ~ 1 0.5
execute if score #ran stellarity.misc matches 2 run \
	playsound block.respawn_anchor.ambient block @a[distance=0..] ~ ~ ~ 1 0.55
execute if score #ran stellarity.misc matches 3 run \
	playsound block.respawn_anchor.ambient block @a[distance=0..] ~ ~ ~ 1 0.6
execute if score #ran stellarity.misc matches 4 run \
	playsound block.respawn_anchor.ambient block @a[distance=0..] ~ ~ ~ 1 0.65
execute if score #ran stellarity.misc matches 5 run \
	playsound block.respawn_anchor.ambient block @a[distance=0..] ~ ~ ~ 1 0.7

scoreboard players reset @s stellarity.misc2