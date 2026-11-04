particle dust_color_transition{from_color:[0.878,0.847,0.682],scale:4,to_color:[0.824,0.757,0.580]} ~ ~.1 ~ 1.25 0.05 1.25 1 100 force
function stellarity_desert_scourge:worm_ai/head/dig_particles_loop
scoreboard players reset *particles math
playsound minecraft:entity.breeze.wind_burst hostile @a[distance=..128] ~ ~ ~ 2.5 0.2 0.1