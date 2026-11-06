# Hit display
function kohara:particles/spawn_particle {speed:0,billboard:center,model:"stellarity:_particle/rk_hit",despawn_value:8,state:fixed,spread_initial:0,spread_radius:0,id:rk_hit}
tag @n[type=item_display,tag=kohara.particle.rk_hit,distance=..2] add stellarity.vfx.ascended

# Sweep & solar flash
particle sweep_attack ~ ~1 ~ 0 0 0 0 1
particle flash{color:[1.0,0.75,0.1,1.0]} ~ ~1 ~ 0 0 0 0 1
particle wax_on ~ ~1 ~ 0.3 0.3 0.3 0.08 14
particle flame ~ ~1 ~ 0.25 0.25 0.25 0.05 14
particle end_rod ~ ~1 ~ 0.25 0.25 0.25 0.12 18

# Golden dust
particle dust{color:[1.00, 0.84, 0.00],scale:1.4} ~ ~1 ~ 0.35 0.25 0.35 0.08 10
particle dust{color:[1.00, 0.65, 0.05],scale:1.4} ~ ~1 ~ 0.35 0.25 0.35 0.08 10
particle dust{color:[1.00, 0.95, 0.45],scale:1.4} ~ ~1 ~ 0.35 0.25 0.35 0.08 8
particle dust{color:[1.00, 0.45, 0.02],scale:1.4} ~ ~1 ~ 0.35 0.25 0.35 0.08 8
