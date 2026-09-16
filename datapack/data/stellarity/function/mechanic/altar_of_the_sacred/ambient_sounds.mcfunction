scoreboard players reset @s stellarity.mechanics.altar_of_the_sacred.timer

execute store result score #sound stellarity.misc run random value 1..5
execute if score #sound stellarity.misc matches 1 run \
	playsound block.amethyst_block.chime block @a[distance=..64] ~ ~ ~ 1 0.5
execute if score #sound stellarity.misc matches 2 run \
	playsound block.amethyst_block.chime block @a[distance=..64] ~ ~ ~ 1 0.53
execute if score #sound stellarity.misc matches 3 run \
	playsound block.amethyst_block.chime block @a[distance=..64] ~ ~ ~ 1 0.56
execute if score #sound stellarity.misc matches 4 run \
	playsound block.amethyst_block.chime block @a[distance=..64] ~ ~ ~ 1 0.59
execute if score #sound stellarity.misc matches 5 run \
	playsound block.amethyst_block.chime block @a[distance=..64] ~ ~ ~ 1 0.62

execute store result score #sound stellarity.misc run random value 1..5
execute if score #sound stellarity.misc matches 1 run \
	playsound block.respawn_anchor.ambient block @a[distance=..64] ~ ~ ~ 0.29 0.75
execute if score #sound stellarity.misc matches 2 run \
	playsound block.respawn_anchor.ambient block @a[distance=..64] ~ ~ ~ 0.29 0.78
execute if score #sound stellarity.misc matches 3 run \
	playsound block.respawn_anchor.ambient block @a[distance=..64] ~ ~ ~ 0.29 0.81
execute if score #sound stellarity.misc matches 4 run \
	playsound block.respawn_anchor.ambient block @a[distance=..64] ~ ~ ~ 0.29 0.84
execute if score #sound stellarity.misc matches 5 run \
	playsound block.respawn_anchor.ambient block @a[distance=..64] ~ ~ ~ 0.29 0.87

