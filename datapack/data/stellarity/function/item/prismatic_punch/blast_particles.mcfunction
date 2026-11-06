particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.01 2 force @a[distance=..80]

execute if entity @s[tag=!stellarity.prismatic_blast.multishot] run function stellarity:item/prismatic_punch/particle_cycle/normal
execute if entity @s[tag=stellarity.prismatic_blast.multishot] run function stellarity:item/prismatic_punch/particle_cycle/multishot

execute if score @s stellarity.item.prismatic_punch.particle_cycle matches 28.. run \
scoreboard players reset @s stellarity.item.prismatic_punch.particle_cycle

execute if entity @s[tag=stellarity.prismatic_blast.multishot] anchored eyes run function stellarity:item/prismatic_punch/blast_particles_multishot
