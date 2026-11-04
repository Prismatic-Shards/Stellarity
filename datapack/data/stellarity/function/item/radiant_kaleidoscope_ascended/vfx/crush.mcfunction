# Crush shockwave
function kohara:particles/spawn_particle {speed:0,billboard:fixed,model:"stellarity:_particle/rk_crush",despawn_value:14,state:fixed,spread_initial:0,spread_radius:0,id:rk_crush}
tag @n[type=item_display,tag=kohara.particle.rk_crush,distance=..2] add stellarity.vfx.ascended

# Solar supernova flash
particle flash{color:[1.0,0.85,0.2,1.0]} ~ ~1.2 ~ 0 0 0 0 2
particle flash{color:[1.0,0.45,0.0,1.0]} ~ ~1.2 ~ 0 0 0 0 1
particle explosion ~ ~1.2 ~ 0.5 0.5 0.5 0 5
particle wax_on ~ ~1.2 ~ 0.6 0.6 0.6 0.1 50
particle flame ~ ~1.2 ~ 0.5 0.5 0.5 0.25 80
particle end_rod ~ ~1.2 ~ 0.5 0.5 0.5 0.35 90
particle crit ~ ~1.2 ~ 0.6 0.6 0.6 1.2 100

# Solar blast
particle dust{color:[1.00, 0.84, 0.00],scale:1.8} ~ ~1.2 ~ 0.7 0.5 0.7 0.22 40
particle dust{color:[1.00, 0.65, 0.05],scale:1.8} ~ ~1.2 ~ 0.7 0.5 0.7 0.22 40
particle dust{color:[1.00, 0.95, 0.45],scale:1.8} ~ ~1.2 ~ 0.7 0.5 0.7 0.22 35
particle dust{color:[1.00, 0.45, 0.02],scale:1.8} ~ ~1.2 ~ 0.7 0.5 0.7 0.22 35
particle dust{color:[1.00, 0.98, 0.80],scale:1.8} ~ ~1.2 ~ 0.7 0.5 0.7 0.22 30

# Sounds
playsound stellarity:item.radiant_kaleidoscope.mega_crit player @a ~ ~ ~ 1.5 1.1
playsound stellarity:item.radiant_kaleidoscope.stalactite_impact player @a ~ ~ ~ 1.4 1.2
