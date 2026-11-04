# Crush shockwave
function kohara:particles/spawn_particle {speed:0,billboard:fixed,model:"stellarity:_particle/rk_crush",despawn_value:14,state:fixed,spread_initial:0,spread_radius:0,id:rk_crush}

# Supernova flash
particle flash{color:[1.0,0.2,0.6,1.0]} ~ ~1.2 ~ 0 0 0 0 2
particle flash{color:[0.2,1.0,0.9,1.0]} ~ ~1.2 ~ 0 0 0 0 1
particle explosion ~ ~1.2 ~ 0.5 0.5 0.5 0 5
particle end_rod ~ ~1.2 ~ 0.5 0.5 0.5 0.35 90
particle crit ~ ~1.2 ~ 0.6 0.6 0.6 1.2 100

# Rainbow blast
particle dust{color:[1.00, 0.20, 0.20],scale:1.8} ~ ~1.2 ~ 0.7 0.5 0.7 0.22 30
particle dust{color:[1.00, 0.60, 0.05],scale:1.8} ~ ~1.2 ~ 0.7 0.5 0.7 0.22 30
particle dust{color:[0.95, 0.85, 0.10],scale:1.8} ~ ~1.2 ~ 0.7 0.5 0.7 0.22 30
particle dust{color:[0.10, 0.80, 0.45],scale:1.8} ~ ~1.2 ~ 0.7 0.5 0.7 0.22 30
particle dust{color:[0.15, 0.70, 1.00],scale:1.8} ~ ~1.2 ~ 0.7 0.5 0.7 0.22 30
particle dust{color:[0.30, 0.30, 0.95],scale:1.8} ~ ~1.2 ~ 0.7 0.5 0.7 0.22 30
particle dust{color:[0.75, 0.20, 0.90],scale:1.8} ~ ~1.2 ~ 0.7 0.5 0.7 0.22 30

# Sounds
playsound stellarity:item.radiant_kaleidoscope.mega_crit player @a ~ ~ ~ 1.5 1
playsound stellarity:item.radiant_kaleidoscope.stalactite_impact player @a ~ ~ ~ 1.4 1.1
