# Hit display
function kohara:particles/spawn_particle {speed:0,billboard:center,model:"stellarity:_particle/rk_hit",despawn_value:8,state:fixed,spread_initial:0,spread_radius:0,id:rk_hit}

# Sweep & flash
particle sweep_attack ~ ~1 ~ 0 0 0 0 1
particle flash{color:[1.0,0.3,0.85,1.0]} ~ ~1 ~ 0 0 0 0 1
particle end_rod ~ ~1 ~ 0.25 0.25 0.25 0.12 18

# Rainbow dust
particle dust{color:[1.00, 0.20, 0.20],scale:1.3} ~ ~1 ~ 0.35 0.25 0.35 0.08 5
particle dust{color:[1.00, 0.60, 0.05],scale:1.3} ~ ~1 ~ 0.35 0.25 0.35 0.08 5
particle dust{color:[0.95, 0.85, 0.10],scale:1.3} ~ ~1 ~ 0.35 0.25 0.35 0.08 5
particle dust{color:[0.10, 0.80, 0.45],scale:1.3} ~ ~1 ~ 0.35 0.25 0.35 0.08 5
particle dust{color:[0.15, 0.70, 1.00],scale:1.3} ~ ~1 ~ 0.35 0.25 0.35 0.08 5
particle dust{color:[0.30, 0.30, 0.95],scale:1.3} ~ ~1 ~ 0.35 0.25 0.35 0.08 5
particle dust{color:[0.75, 0.20, 0.90],scale:1.3} ~ ~1 ~ 0.35 0.25 0.35 0.08 5
