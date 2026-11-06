# The cycle actually resumes from where it ended
# if the effect is reapplied
scoreboard players add @s stellarity.dot.holy_flames.particle_cycle 1
execute if score @s stellarity.dot.holy_flames.particle_cycle matches 1 run \
	particle dust{color:[0.980,0.435,0.235],scale:1.6} ~ ~1 ~ .4 .55 .4 0 16 force @a[distance=..32]
execute if score @s stellarity.dot.holy_flames.particle_cycle matches 2 run \
	particle minecraft:dust{color:[0.98, 0.686, 0.243], scale:1.6} ~ ~1 ~ .4 .55 .4 0 16 force @a[distance=..32]
execute if score @s stellarity.dot.holy_flames.particle_cycle matches 3 run \
	particle minecraft:dust{color:[0.98, 0.871, 0.243], scale:1.6} ~ ~1 ~ .4 .55 .4 0 16 force @a[distance=..32]

scoreboard players reset @s[scores={stellarity.dot.holy_flames.particle_cycle=3..}] stellarity.dot.holy_flames.particle_cycle
