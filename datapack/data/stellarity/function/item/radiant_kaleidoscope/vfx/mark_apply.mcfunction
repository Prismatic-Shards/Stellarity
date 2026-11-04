# Mark display
function kohara:particles/spawn_particle {speed:0,billboard:center,model:"stellarity:_particle/rk_mark",despawn_value:12,state:fixed,spread_initial:0,spread_radius:0,id:rk_mark}

# Flash & end rod
particle flash{color:[0.2,0.9,1.0,1.0]} ~ ~1.2 ~ 0 0 0 0 1
particle end_rod ~ ~1.2 ~ 0.25 0.25 0.25 0.08 16

# Convergent prism spiral
execute rotated ~ 0 positioned ^ ^1.2 ^1.2 run particle dust{color:[1.00, 0.20, 0.20],scale:1.1} ~ ~ ~ 0 0 0 0 1
execute rotated ~51 0 positioned ^ ^1.3 ^1.0 run particle dust{color:[1.00, 0.60, 0.05],scale:1.1} ~ ~ ~ 0 0 0 0 1
execute rotated ~103 0 positioned ^ ^1.2 ^0.8 run particle dust{color:[0.95, 0.85, 0.10],scale:1.1} ~ ~ ~ 0 0 0 0 1
execute rotated ~154 0 positioned ^ ^1.4 ^0.6 run particle dust{color:[0.10, 0.80, 0.45],scale:1.1} ~ ~ ~ 0 0 0 0 1
execute rotated ~206 0 positioned ^ ^1.2 ^0.8 run particle dust{color:[0.15, 0.70, 1.00],scale:1.1} ~ ~ ~ 0 0 0 0 1
execute rotated ~257 0 positioned ^ ^1.3 ^1.0 run particle dust{color:[0.30, 0.30, 0.95],scale:1.1} ~ ~ ~ 0 0 0 0 1
execute rotated ~309 0 positioned ^ ^1.2 ^1.2 run particle dust{color:[0.75, 0.20, 0.90],scale:1.1} ~ ~ ~ 0 0 0 0 1
