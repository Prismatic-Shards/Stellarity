particle dust_pillar{block_state:"minecraft:sand"} ^ ^ ^2.75 0 0 0 1 0 force
particle dust_pillar{block_state:"minecraft:sand"} ^ ^ ^1.5 0 0 0 0.5 0 force
scoreboard players add *particles math 1
execute if score *particles math matches ..179 rotated ~2 ~ run function stellarity_desert_scourge:worm_ai/head/dig_particles_loop