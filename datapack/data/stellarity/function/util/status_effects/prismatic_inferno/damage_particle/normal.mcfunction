# Particles cycle between the colors of the rainbow
# The cycle actually resumes from where it ended
# if the effect is reapplied
scoreboard players add @s stellarity.dot.prismatic_inferno.particle_cycle 1
execute if score @s stellarity.dot.prismatic_inferno.particle_cycle matches 1 run \
	particle minecraft:dust{color:[0.98, 0.243, 0.243], scale:1.6} ~ ~1 ~ .4 .55 .4 0 16 force @a[distance=..32]
execute if score @s stellarity.dot.prismatic_inferno.particle_cycle matches 2 run \
	particle minecraft:dust{color:[0.98, 0.686, 0.243], scale:1.6} ~ ~1 ~ .4 .55 .4 0 16 force @a[distance=..32]
execute if score @s stellarity.dot.prismatic_inferno.particle_cycle matches 3 run \
	particle minecraft:dust{color:[0.98, 0.871, 0.243], scale:1.6} ~ ~1 ~ .4 .55 .4 0 16 force @a[distance=..32]
execute if score @s stellarity.dot.prismatic_inferno.particle_cycle matches 4 run \
	particle minecraft:dust{color:[0.6, 0.98, 0.243], scale:1.6} ~ ~1 ~ .4 .55 .4 0 16 force @a[distance=..32]
execute if score @s stellarity.dot.prismatic_inferno.particle_cycle matches 5 run \
	particle minecraft:dust{color:[0.243, 0.894, 0.98], scale:1.6} ~ ~1 ~ .4 .55 .4 0 16 force @a[distance=..32]
execute if score @s stellarity.dot.prismatic_inferno.particle_cycle matches 6 run \
	particle minecraft:dust{color:[0.318, 0.243, 0.98], scale:1.6} ~ ~1 ~ .4 .55 .4 0 16 force @a[distance=..32]
execute if score @s stellarity.dot.prismatic_inferno.particle_cycle matches 7 run \
	particle minecraft:dust{color:[0.98, 0.243, 0.918], scale:1.6} ~ ~1 ~ .4 .55 .4 0 16 force @a[distance=..32]
execute if score @s stellarity.dot.prismatic_inferno.particle_cycle matches 8 run \
	particle minecraft:dust{color:[0.647, 0.243, 0.98], scale:1.6} ~ ~1 ~ .4 .55 .4 0 16 force @a[distance=..32]

scoreboard players reset @s[scores={stellarity.dot.prismatic_inferno.particle_cycle=8}] stellarity.dot.prismatic_inferno.particle_cycle
