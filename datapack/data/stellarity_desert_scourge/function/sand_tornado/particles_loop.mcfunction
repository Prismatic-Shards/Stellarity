$particle dust{color:[0.918,0.902,0.773],scale:1.75} ^ ^ ^$(offset) 0 0 0 0 1 force
$particle minecraft:dust_plume ^ ^ ^$(offset) 0 1 0 0.4 0 force
execute store result storage stellarity_desert_scourge:temp particles.offset float 0.11 run scoreboard players add *particles math 1
execute if score *particles math matches ..12 positioned ~ ~0.45 ~ rotated ~25 ~ run function stellarity_desert_scourge:sand_tornado/particles_loop with storage stellarity_desert_scourge:temp particles