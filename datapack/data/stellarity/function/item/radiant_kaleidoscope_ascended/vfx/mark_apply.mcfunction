# Mark display
function kohara:particles/spawn_particle {speed:0,billboard:center,model:"stellarity:_particle/rk_mark",despawn_value:12,state:fixed,spread_initial:0,spread_radius:0,id:rk_mark}
tag @n[type=item_display,tag=kohara.particle.rk_mark,distance=..2] add stellarity.vfx.ascended

# Flash & fire
particle flash{color:[1.0,0.6,0.05,1.0]} ~ ~1.2 ~ 0 0 0 0 1
particle end_rod ~ ~1.2 ~ 0.25 0.25 0.25 0.08 16
particle flame ~ ~1.2 ~ 0.3 0.3 0.3 0.06 14

# Solar convergent spiral
execute rotated ~ 0 positioned ^ ^1.2 ^1.2 run particle dust{color:[1.00, 0.84, 0.00],scale:1.2} ~ ~ ~ 0 0 0 0 1
execute rotated ~51 0 positioned ^ ^1.3 ^1.0 run particle dust{color:[1.00, 0.65, 0.05],scale:1.2} ~ ~ ~ 0 0 0 0 1
execute rotated ~103 0 positioned ^ ^1.2 ^0.8 run particle dust{color:[1.00, 0.95, 0.45],scale:1.2} ~ ~ ~ 0 0 0 0 1
execute rotated ~154 0 positioned ^ ^1.4 ^0.6 run particle dust{color:[1.00, 0.45, 0.02],scale:1.2} ~ ~ ~ 0 0 0 0 1
execute rotated ~206 0 positioned ^ ^1.2 ^0.8 run particle dust{color:[1.00, 0.75, 0.10],scale:1.2} ~ ~ ~ 0 0 0 0 1
execute rotated ~257 0 positioned ^ ^1.3 ^1.0 run particle dust{color:[1.00, 0.55, 0.05],scale:1.2} ~ ~ ~ 0 0 0 0 1
execute rotated ~309 0 positioned ^ ^1.2 ^1.2 run particle dust{color:[1.00, 0.90, 0.30],scale:1.2} ~ ~ ~ 0 0 0 0 1
