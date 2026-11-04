# Orbit angle
scoreboard players add @s stellarity.item.rk.guard_angle 10
execute if score @s stellarity.item.rk.guard_angle matches 360.. run scoreboard players set @s stellarity.item.rk.guard_angle 0

# Ring model
execute if score @s stellarity.item.rk.guard_angle matches 0 run function kohara:particles/spawn_particle {speed:0,billboard:fixed,model:"stellarity:_particle/rk_ring",despawn_value:16,state:fixed,spread_initial:0,spread_radius:0,id:rk_ring}
execute if score @s stellarity.item.rk.guard_angle matches 0 run tag @n[type=item_display,tag=kohara.particle.rk_ring,distance=..2] add stellarity.vfx.ascended

# Outer ring
execute rotated ~ 0 positioned ^ ^0.6 ^1.4 run particle dust{color:[1.00, 0.84, 0.00],scale:1.3} ~ ~ ~ 0 0 0 0 1
execute rotated ~51 0 positioned ^ ^0.6 ^1.4 run particle dust{color:[1.00, 0.65, 0.05],scale:1.3} ~ ~ ~ 0 0 0 0 1
execute rotated ~103 0 positioned ^ ^0.6 ^1.4 run particle dust{color:[1.00, 0.95, 0.45],scale:1.3} ~ ~ ~ 0 0 0 0 1
execute rotated ~154 0 positioned ^ ^0.6 ^1.4 run particle dust{color:[1.00, 0.45, 0.02],scale:1.3} ~ ~ ~ 0 0 0 0 1
execute rotated ~206 0 positioned ^ ^0.6 ^1.4 run particle dust{color:[1.00, 0.75, 0.10],scale:1.3} ~ ~ ~ 0 0 0 0 1
execute rotated ~257 0 positioned ^ ^0.6 ^1.4 run particle dust{color:[1.00, 0.55, 0.05],scale:1.3} ~ ~ ~ 0 0 0 0 1
execute rotated ~309 0 positioned ^ ^0.6 ^1.4 run particle dust{color:[1.00, 0.90, 0.30],scale:1.3} ~ ~ ~ 0 0 0 0 1

# Inner ring
execute rotated ~-30 0 positioned ^ ^1.2 ^0.9 run particle dust{color:[1.00, 0.84, 0.00],scale:1.1} ~ ~ ~ 0 0 0 0 1
execute rotated ~-120 0 positioned ^ ^1.2 ^0.9 run particle dust{color:[1.00, 0.65, 0.05],scale:1.1} ~ ~ ~ 0 0 0 0 1
execute rotated ~-210 0 positioned ^ ^1.2 ^0.9 run particle dust{color:[1.00, 0.95, 0.45],scale:1.1} ~ ~ ~ 0 0 0 0 1
execute rotated ~-300 0 positioned ^ ^1.2 ^0.9 run particle dust{color:[1.00, 0.45, 0.02],scale:1.1} ~ ~ ~ 0 0 0 0 1

# Ground ring
particle dust{color:[1.00, 0.84, 0.00],scale:1.3} ~ ~0.05 ~ 0.85 0 0.85 0 8
particle dust{color:[1.00, 0.65, 0.05],scale:1.3} ~ ~0.05 ~ 0.85 0 0.85 0 8

# Sparkles
particle end_rod ~ ~1.0 ~ 0.5 0.5 0.5 0.02 2
particle flame ~ ~0.8 ~ 0.4 0.4 0.4 0.01 2
